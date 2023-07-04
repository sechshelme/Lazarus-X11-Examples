#include "config.h"
#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <errno.h>
#include <unistd.h>
#include <string.h>
#include <pwd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/time.h>
#include <fcntl.h>
#include <sys/time.h>
#include <setjmp.h>
#include <signal.h>
#include <X11/Xlib.h>
#include <X11/Xatom.h>
#include <X11/Xutil.h>

#include "xsel.h"

static Display * display;
static Window window;

/* Maxmimum request size supported by this X server */
static long max_req;

/* Our timestamp for all operations */
static Time timestamp;

static Atom timestamp_atom; /* The TIMESTAMP atom */
static Atom multiple_atom; /* The MULTIPLE atom */
static Atom targets_atom; /* The TARGETS atom */
static Atom delete_atom; /* The DELETE atom */
static Atom incr_atom; /* The INCR atom */
static Atom null_atom; /* The NULL atom */
static Atom text_atom; /* The TEXT atom */
static Atom utf8_atom; /* The UTF8 atom */
static Atom compound_text_atom; /* The COMPOUND_TEXT atom */

/* Number of selection targets served by this.
 * (MULTIPLE, INCR, TARGETS, TIMESTAMP, DELETE, TEXT, UTF8_STRING and STRING)
 * NB. We do not currently serve COMPOUND_TEXT; we can retrieve it but do not
 * perform charset conversion.
 */
#define MAX_NUM_TARGETS 9
static int NUM_TARGETS;
static Atom supported_targets[MAX_NUM_TARGETS];

/* do_zeroflush: Use only last zero-separated part of input.
 * All previous parts are discarded */
static Bool do_zeroflush = False;

/* do_follow: Follow mode for output */
static Bool do_follow = False;

/* nodaemon: Disable daemon mode if True. */
static Bool no_daemon = False;

/* logfile: name of file to log error messages to when detached */
static char logfile[MAXFNAME];

/* fstat() on stdin and stdout */
static struct stat in_statbuf, out_statbuf;

static int total_input = 0;
static int current_alloc = 0;

static struct itimerval timer;
static struct itimerval zerot;

#define USEC_PER_SEC 1000000

static int saved_argc;
static char ** saved_argv;

static char * get_atom_name (Atom atom)
{
    char * ret;
    static char atom_name[MAXLINE+2];  /* unused extra char to avoid
                                        string-op-truncation warning */

    if (atom == None) return "None";
    if (atom == XA_STRING) return "STRING";
    if (atom == XA_PRIMARY) return "PRIMARY";
    if (atom == XA_SECONDARY) return "SECONDARY";
    if (atom == timestamp_atom) return "TIMESTAMP";
    if (atom == multiple_atom) return "MULTIPLE";
    if (atom == targets_atom) return "TARGETS";
    if (atom == delete_atom) return "DELETE";
    if (atom == incr_atom) return "INCR";
    if (atom == null_atom) return "NULL";
    if (atom == text_atom) return "TEXT";
    if (atom == utf8_atom) return "UTF8_STRING";

    ret = XGetAtomName (display, atom);
    strncpy (atom_name, ret, MAXLINE+1);
    if (atom_name[MAXLINE] != '\0')
    {
        atom_name[MAXLINE-3] = '.';
        atom_name[MAXLINE-2] = '.';
        atom_name[MAXLINE-1] = '.';
        atom_name[MAXLINE] = '\0';
    }
    XFree (ret);

    return atom_name;
}

static void *
xs_malloc (size_t size)
{
    void * ret;

    if (size == 0) size = 1;
    if ((ret = malloc (size)) == NULL)
    {
        //exit_err ("malloc error");
    }

    return ret;
}

#define xs_strdup(s) ((unsigned char *) _xs_strdup ((const char *)s))
static char * _xs_strdup (const char * s)
{
    char * ret;

    if (s == NULL) return NULL;
    if ((ret = strdup(s)) == NULL)
    {
//    exit_err ("strdup error");
    }

    return ret;
}

#define xs_strlen(s) (strlen ((const char *) s))

/*
 * xs_strncpy (s)
 *
 * strncpy wrapper for unsigned char *
 */
#define xs_strncpy(dest,s,n) (_xs_strncpy ((char *)dest, (const char *)s, n))
static char *
_xs_strncpy (char * dest, const char * src, size_t n)
{
    if (n > 0)
    {
        strncpy (dest, src, n-1);
        dest[n-1] = '\0';
    }
    return dest;
}

/*
 * get_xdg_cache_home ()
 *
 * Get the user's cache directory
 */
static char *
get_xdg_cache_home (void)
{
    char * cachedir;
    char * homedir;
    static const char * slashbasename = "/.cache";

    if ((cachedir = getenv ("XDG_CACHE_HOME")) == NULL)
    {
        if ((homedir = getenv ("HOME")) == NULL)
        {
//      exit_err ("no HOME directory");
        }
        cachedir = xs_malloc (strlen (homedir) + strlen (slashbasename) + 1);
        strcpy (cachedir, homedir);
        strcat (cachedir, slashbasename);
    }
    else
    {
        cachedir = _xs_strdup (cachedir);
    }

    mkdir (cachedir, S_IRWXU|S_IRGRP|S_IXGRP);

    return cachedir;
}

static sigjmp_buf env_alrm;

/*
 * alarm_handler (sig)
 *
 * Signal handler for catching SIGALRM.
 */
static void
alarm_handler (int sig)
{
    siglongjmp (env_alrm, 1);
}

static void
set_daemon_timeout (void)
{
    if (signal (SIGALRM, alarm_handler) == SIG_ERR)
    {
//    exit_err ("error setting timeout handler");
    }

    if (sigsetjmp (env_alrm, 0) == 0)
    {
        setitimer (ITIMER_REAL, &timer, (struct itimerval *)0);
    }
    else
    {
//    print_debug (D_INFO, "daemon exiting after %d ms", timeout / 1000);
        exit (0);
    }
}


/*
 * become_daemon ()
 *
 * Perform the required procedure to become a daemon process, as
 * outlined in the Unix programming FAQ:
 * http://www.steve.org.uk/Reference/Unix/faq_2.html#SEC16
 * and open a logfile.
 */
static void
become_daemon (void)
{
    pid_t pid;
    int null_r_fd, null_w_fd, log_fd;
    char * cachedir;

    if (no_daemon)
    {
        /* If the user has specified a timeout, enforce it even if we don't
         * actually daemonize */
        set_daemon_timeout ();
        return;
    }

    cachedir = get_xdg_cache_home();

    /* Check that we can open a logfile before continuing */

    /* If the user has specified a --logfile, use that ... */
    if (logfile[0] == '\0')
    {
        /* ... otherwise use the default logfile */
        snprintf (logfile, MAXFNAME, "%s/xsel.log", cachedir);
    }

    /* Make sure to create the logfile with sane permissions */
    log_fd = open (logfile, O_WRONLY|O_APPEND|O_CREAT, 0600);

    if ((pid = fork()) == -1)
    {
//    exit_err ("error forking");
    }
    else if (pid > 0)
    {
        _exit (0);
    }

    if (setsid () == -1)
    {
//    exit_err ("setsid error");
    }

    if ((pid = fork()) == -1)
    {
//    exit_err ("error forking");
    }
    else if (pid > 0)
    {
        _exit (0);
    }

    umask (0);

    if (chdir (cachedir) == -1)
    {
        if (chdir ("/") == -1)
        {
//      exit_err ("Error chdir to /");
        }
    }

    /* dup2 /dev/null on stdin unless following input */
    if (!do_follow)
    {
        null_r_fd = open ("/dev/null", O_RDONLY);
        if (dup2 (null_r_fd, 0) == -1)
        {
//      exit_err ("error duplicating /dev/null on stdin");
        }
    }

    /* dup2 /dev/null on stdout */
    null_w_fd = open ("/dev/null", O_WRONLY|O_APPEND);
    if (dup2 (null_w_fd, 1) == -1)
    {
//    exit_err ("error duplicating /dev/null on stdout");
    }

    /* dup2 logfile on stderr */
    if (dup2 (log_fd, 2) == -1)
    {
//    exit_err ("error duplicating logfile %s on stderr", logfile);
    }

    set_daemon_timeout ();

    free (cachedir);
}

/*
 * get_timestamp ()
 *
 * Get the current X server time.
 *
 * This is done by doing a zero-length append to a random property of the
 * window, and checking the time on the subsequent PropertyNotify event.
 *
 * PRECONDITION: the window must have PropertyChangeMask set.
 */
static Time
get_timestamp (void)
{
    XEvent event;

    XChangeProperty (display, window, XA_WM_NAME, XA_STRING, 8,
                     PropModeAppend, NULL, 0);

    while (1)
    {
        XNextEvent (display, &event);

        if (event.type == PropertyNotify)
            return event.xproperty.time;
    }
}

/*
 * SELECTION RETRIEVAL
 * ===================
 *
 * The following functions implement retrieval of an X selection,
 * optionally within a user-specified timeout.
 *
 *
 * Selection timeout handling.
 * ---------------------------
 *
 * The selection retrieval can time out if no response is received within
 * a user-specified time limit. In order to ensure we time the entire
 * selection retrieval, we use an interval timer and catch SIGALRM.
 * [Calling select() on the XConnectionNumber would only provide a timeout
 * to the first XEvent.]
 */

/*
 * get_append_property ()
 *
 * Get a window property and append its data to a buffer at a given offset
 * pointed to by *offset. 'offset' is modified by this routine to point to
 * the end of the data.
 *
 * Returns True if more data is available for receipt.
 *
 * If an error is encountered, the buffer is free'd.
 */
static Bool
get_append_property (XSelectionEvent * xsl, unsigned char ** buffer,
                     unsigned long * offset, unsigned long * alloc)
{
    unsigned char * ptr;
    Atom target;
    int format;
    unsigned long bytesafter, length;
    unsigned char * value;

    XGetWindowProperty (xsl->display, xsl->requestor, xsl->property,
                        0L, 1000000, True, (Atom)AnyPropertyType,
                        &target, &format, &length, &bytesafter, &value);

    if (target != XA_STRING && target != utf8_atom &&
            target != compound_text_atom)
    {
        free (*buffer);
        *buffer = NULL;
        return False;
    }
    else if (length == 0)
    {
        /* A length of 0 indicates the end of the transfer */
        return False;
    }
    else if (format == 8)
    {
        if (*offset + length + 1 > *alloc)
        {
            *alloc = *offset + length + 1;
            if ((*buffer = realloc (*buffer, *alloc)) == NULL)
            {
//        exit_err ("realloc error");
            }
        }
        ptr = *buffer + *offset;
        memcpy (ptr, value, length);
        ptr[length] = '\0';
        *offset += length;
    }

    return True;
}


/*
 * wait_incr_selection (selection)
 *
 * Retrieve a property of target type INCR. Perform incremental retrieval
 * and return the resulting data.
 */
static unsigned char *
wait_incr_selection (Atom selection, XSelectionEvent * xsl, int init_alloc)
{
    XEvent event;
    unsigned char * incr_base = NULL, * incr_ptr = NULL;
    unsigned long incr_alloc = 0, incr_xfer = 0;
    Bool wait_prop = True;

    XSelectInput (xsl->display, xsl->requestor, PropertyChangeMask);

    incr_alloc = init_alloc;
    incr_base = xs_malloc (incr_alloc);
    incr_ptr = incr_base;

    XDeleteProperty (xsl->display, xsl->requestor, xsl->property);

    while (wait_prop)
    {
        XNextEvent (xsl->display, &event);

        switch (event.type)
        {
        case PropertyNotify:
            if (event.xproperty.state != PropertyNewValue) break;

            wait_prop = get_append_property (xsl, &incr_base, &incr_xfer,
                                             &incr_alloc);
            break;
        default:
            break;
        }
    }

    /* when zero length found, finish up & delete last */
    XDeleteProperty (xsl->display, xsl->requestor, xsl->property);

    return incr_base;
}

/*
 * wait_selection (selection, request_target)
 *
 * Block until we receive a SelectionNotify event, and return its
 * contents; or NULL in the case of a deletion or error. This assumes we
 * have already called XConvertSelection, requesting a string (explicitly
 * XA_STRING) or deletion (delete_atom).
 */
static unsigned char *
wait_selection (Atom selection, Atom request_target)
{
    XEvent event;
    Atom target;
    int format;
    unsigned long bytesafter, length;
    unsigned char * value, * retval = NULL;
    Bool keep_waiting = True;

    while (keep_waiting)
    {
        XNextEvent (display, &event);

        switch (event.type)
        {
        case SelectionNotify:
            if (event.xselection.selection != selection) break;

            if (event.xselection.property == None)
            {
                value = NULL;
                keep_waiting = False;
            }
            else if (event.xselection.property == null_atom &&
                     request_target == delete_atom)
            {
            }
            else
            {
                XGetWindowProperty (event.xselection.display,
                                    event.xselection.requestor,
                                    event.xselection.property, 0L, 1000000,
                                    False, (Atom)AnyPropertyType, &target,
                                    &format, &length, &bytesafter, &value);

                if (request_target == delete_atom && value == NULL)
                {
                    keep_waiting = False;
                }
                else if (target == incr_atom)
                {
                    /* Handle INCR transfers */
                    retval = wait_incr_selection (selection, &event.xselection,
                                                  *(long *)value);
                    keep_waiting = False;
                }
                else if (target != utf8_atom && target != XA_STRING &&
                         target != compound_text_atom &&
                         request_target != delete_atom)
                {
                    /* Report non-TEXT atoms */
                    free (retval);
                    retval = NULL;
                    keep_waiting = False;
                }
                else
                {
                    retval = xs_strdup (value);
                    XFree (value);
                    keep_waiting = False;
                }

                XDeleteProperty (event.xselection.display,
                                 event.xselection.requestor,
                                 event.xselection.property);

            }
            break;
        default:
            break;
        }
    }

    return retval;
}

/*
 * get_selection (selection, request_target)
 *
 * Retrieves the specified selection and returns its value.
 *
 * If a non-zero timeout is specified then set a virtual interval
 * timer. Return NULL and print an error message if the timeout
 * expires before the selection has been retrieved.
 */
static unsigned char *
get_selection (Atom selection, Atom request_target)
{
    Atom prop;
    unsigned char * retval;

    prop = XInternAtom (display, "XSEL_DATA", False);
    XConvertSelection (display, selection, request_target, prop, window,
                       timestamp);
    XSync (display, False);

    return retval;
}

/*
 * get_selection_text (Atom selection)
 *
 * Retrieve a text selection. First attempt to retrieve it as UTF_STRING,
 * and if that fails attempt to retrieve it as a plain XA_STRING.
 *
 * NB. Before implementing this, an attempt was made to query TARGETS and
 * request UTF8_STRING only if listed there, as described in:
 * http://www.pps.jussieu.fr/~jch/software/UTF8_STRING/UTF8_STRING.text
 * However, that did not seem to work reliably when tested against various
 * applications (eg. Mozilla Firefox). This method is of course more
 * reliable.
 */
static unsigned char *
get_selection_text (Atom selection)
{
    unsigned char * retval;

    if ((retval = get_selection (selection, utf8_atom)) == NULL)
        retval = get_selection (selection, XA_STRING);

    return retval;
}


/*
 * SELECTION SETTING
 * =================
 *
 * The following functions allow a given selection to be set, appended to
 * or cleared, or to exchange the primary and secondary selections.
 */

/*
 * copy_sel (s)
 *
 * Copy a string into a new selection buffer, and intitialise
 * current_alloc and total_input to exactly its length.
 */
static unsigned char *
copy_sel (unsigned char * s)
{
    if (s)
    {
        current_alloc = total_input = xs_strlen (s);
        return xs_strdup (s);
    }
    current_alloc = total_input = 0;
    return NULL;
}

/*
 * read_input (read_buffer, do_select)
 *
 * Read input from stdin into the specified read_buffer.
 *
 * read_buffer must have been dynamically allocated before calling this
 * function, or be NULL. Input is read until end-of-file is reached, and
 * read_buffer will be reallocated to accomodate the entire contents of
 * the input. read_buffer, which may have been reallocated, is returned
 * upon completion.
 *
 * If 'do_select' is True, this function will first check if any data
 * is available for reading, and return immediately if not.
 */
static unsigned char *
read_input (unsigned char * read_buffer, Bool do_select)
{
    int insize = in_statbuf.st_blksize;
    unsigned char * new_buffer = NULL;
    int d, fatal = 0, nfd;
    ssize_t n;
    fd_set fds;
    struct timeval select_timeout;

    do
    {

        if (do_select)
        {
try_read:
            /* Check if data is available for reading -- if not, return immediately */
            FD_ZERO (&fds);
            FD_SET (0, &fds);

            select_timeout.tv_sec = (time_t)0;
            select_timeout.tv_usec = (time_t)0;

            nfd = select (1, &fds, NULL, NULL, &select_timeout);
            if (nfd == -1)
            {
                if (errno == EINTR) goto try_read;
//        else exit_err ("select error");
            }
            else if (nfd == 0)
            {
                break;
            }
        }

        /* check if buffer is full */
        if (current_alloc == total_input)
        {
            if ((d = (current_alloc % insize)) != 0) current_alloc += (insize-d);
            current_alloc *= 2;
            new_buffer = realloc (read_buffer, current_alloc);
            read_buffer = new_buffer;
        }

        /* read the remaining data, up to the optimal block length */
        n = read (0, &read_buffer[total_input],
                  MIN(current_alloc - total_input, insize));
        if (n == -1)
        {
            switch (errno)
            {
            case EAGAIN:
            case EINTR:
                break;
            default:
                perror ("read error");
                fatal = 1;
                break;
            }
        }
        total_input += n;
    }
    while (n != 0 && !fatal);

    read_buffer[total_input] = '\0';

    if(do_zeroflush && total_input > 0)
    {
        int i;
        for(i=total_input-1; i>=0; i--)
        {
            if(read_buffer[i] == '\0')
            {
                memmove(&read_buffer[0], &read_buffer[i+1], total_input - i);
                total_input = total_input - i - 1;
                read_buffer[total_input] = '\0';
                break;
            }
        }
    }

    return read_buffer;
}

/*
 * initialise_read (read_buffer)
 *
 * Initialises the read_buffer and the state variable current_alloc.
 * read_buffer is reallocated to accomodate either the entire input
 * if stdin is a regular file, or at least one block of input otherwise.
 * If the supplied read_buffer is NULL, a new buffer will be allocated.
 */
static unsigned char *
initialise_read (unsigned char * read_buffer)
{
    int insize = in_statbuf.st_blksize;
    unsigned char * new_buffer = NULL;

    if (S_ISREG (in_statbuf.st_mode) && in_statbuf.st_size > 0)
    {
        current_alloc += in_statbuf.st_size;
    }
    else
    {
        current_alloc += insize;
    }

    if ((new_buffer = realloc (read_buffer, current_alloc)) == NULL)
    {
        //exit_err ("realloc error");
    }

    read_buffer = new_buffer;

    return read_buffer;
}

/* Forward declaration of refuse_all_incr () */
static void
refuse_all_incr (void);

/*
 * handle_x_errors ()
 *
 * XError handler.
 */
static int
handle_x_errors (Display * display, XErrorEvent * eev)
{
    char err_buf[MAXLINE];

    /* Make sure to send a refusal to all waiting INCR requests
     * and delete the corresponding properties. */
    if (eev->error_code == BadAlloc) refuse_all_incr ();

    XGetErrorText (display, eev->error_code, err_buf, MAXLINE);

    return 0;
}

/*
 * clear_selection (selection)
 *
 * Clears the specified X selection 'selection'. This requests that no
 * process should own 'selection'; thus the X server will respond to
 * SelectionRequests with an empty property and we don't need to leave
 * a daemon hanging around to service this selection.
 */
static void
clear_selection (Atom selection)
{
    XSetSelectionOwner (display, selection, None, timestamp);
    /* Call XSync to ensure this operation completes before program
     * termination, especially if this is all we are doing. */
    XSync (display, False);
}

/*
 * own_selection (selection)
 *
 * Requests ownership of the X selection. Returns True if ownership was
 * granted, and False otherwise.
 */
static Bool
own_selection (Atom selection)
{
    Window owner;

    XSetSelectionOwner (display, selection, window, timestamp);
    /* XGetSelectionOwner does a round trip to the X server, so there is
     * no need to call XSync here. */
    owner = XGetSelectionOwner (display, selection);
    if (owner != window)
    {
        return False;
    }
    else
    {
        XSetErrorHandler (handle_x_errors);
        return True;
    }
}


static IncrTrack * incrtrack_list = NULL;

/*
 * add_incrtrack (it)
 *
 * Add 'it' to the head of incrtrack_list.
 */
static void
add_incrtrack (IncrTrack * it)
{
    if (incrtrack_list)
    {
        incrtrack_list->prev = it;
    }
    it->prev = NULL;
    it->next = incrtrack_list;
    incrtrack_list = it;
}

/*
 * remove_incrtrack (it)
 *
 * Remove 'it' from incrtrack_list.
 */
static void
remove_incrtrack (IncrTrack * it)
{
    if (it->prev)
    {
        it->prev->next = it->next;
    }
    if (it->next)
    {
        it->next->prev = it->prev;
    }

    if (incrtrack_list == it)
    {
        incrtrack_list = it->next;
    }
}

/*
 * fresh_incrtrack ()
 *
 * Create a new incrtrack, and add it to incrtrack_list.
 */
static IncrTrack *
fresh_incrtrack (void)
{
    IncrTrack * it;

    it = xs_malloc (sizeof (IncrTrack));
    add_incrtrack (it);

    return it;
}

/*
 * trash_incrtrack (it)
 *
 * Remove 'it' from incrtrack_list, and free it.
 */
static void
trash_incrtrack (IncrTrack * it)
{
    remove_incrtrack (it);
    free (it);
}

/*
 * find_incrtrack (atom)
 *
 * Find the IncrTrack structure within incrtrack_list pertaining to 'atom',
 * if it exists.
 */
static IncrTrack *
find_incrtrack (Atom atom)
{
    IncrTrack * iti;

    for (iti = incrtrack_list; iti; iti = iti->next)
    {
        if (atom == iti->property) return iti;
    }

    return NULL;
}

/* Forward declaration of handle_multiple() */
static HandleResult
handle_multiple (Display * display, Window requestor, Atom property,
                 unsigned char * sel, Atom selection, Time time,
                 MultTrack * mparent);

/* Forward declaration of process_multiple() */
static HandleResult
process_multiple (MultTrack * mt, Bool do_parent);

/*
 * confirm_incr (it)
 *
 * Confirm the selection request of ITER tracked by 'it'.
 */
static void
notify_incr (IncrTrack * it, HandleResult hr)
{
    XSelectionEvent ev;

    /* Call XSync here to make sure any BadAlloc errors are caught before
     * confirming the conversion. */
    XSync (it->display, False);

    ev.type = SelectionNotify;
    ev.display = it->display;
    ev.requestor = it->requestor;
    ev.selection = it->selection;
    ev.time = it->time;
    ev.target = it->target;

    if (hr & HANDLE_ERR) ev.property = None;
    else ev.property = it->property;

    XSendEvent (display, ev.requestor, False,
                (unsigned long)NULL, (XEvent *)&ev);
}

/*
 * refuse_all_incr ()
 *
 * Refuse all INCR transfers in progress. ASSUMES that this is called in
 * response to an error, and that the program is about to bail out;
 * ie. incr_track is not cleaned out.
 */
static void
refuse_all_incr (void)
{
    IncrTrack * it;

    for (it = incrtrack_list; it; it = it->next)
    {
        XDeleteProperty (it->display, it->requestor, it->property);
        notify_incr (it, HANDLE_ERR);
        /* Don't bother trashing and list-removing these; we are about to
         * bail out anyway. */
    }
}

/*
 * complete_incr (it)
 *
 * Finish off an INCR retrieval. If it was part of a multiple, continue
 * that; otherwise, send confirmation that this completed.
 */
static void
complete_incr (IncrTrack * it, HandleResult hr)
{
    MultTrack * mparent = it->mparent;

    if (mparent)
    {
        trash_incrtrack (it);
        process_multiple (mparent, True);
    }
    else
    {
        notify_incr (it, hr);
        trash_incrtrack (it);
    }
}

/*
 * notify_multiple (mt, hr)
 *
 * Confirm the selection request initiated with MULTIPLE tracked by 'mt'.
 */
static void
notify_multiple (MultTrack * mt, HandleResult hr)
{
    XSelectionEvent ev;

    /* Call XSync here to make sure any BadAlloc errors are caught before
     * confirming the conversion. */
    XSync (mt->display, False);

    /* Prepare a SelectionNotify event to send, placing the selection in the
     * requested property. */
    ev.type = SelectionNotify;
    ev.display = mt->display;
    ev.requestor = mt->requestor;
    ev.selection = mt->selection;
    ev.time = mt->time;
    ev.target = multiple_atom;

    if (hr & HANDLE_ERR) ev.property = None;
    else ev.property = mt->property;

    XSendEvent (display, ev.requestor, False,
                (unsigned long)NULL, (XEvent *)&ev);
}

/*
 * complete_multiple (mt, do_parent, hr)
 *
 * Complete a MULTIPLE transfer. Iterate to its parent MULTIPLE if
 * 'do_parent' is true. If there is not parent MULTIPLE, send notification
 * of its completion with status 'hr'.
 */
static void
complete_multiple (MultTrack * mt, Bool do_parent, HandleResult hr)
{
    MultTrack * mparent = mt->mparent;

    if (mparent)
    {
        free (mt);
        if (do_parent) process_multiple (mparent, True);
    }
    else
    {
        notify_multiple (mt, hr);
        free (mt);
    }
}

/*
 * change_property (display, requestor, property, target, format, mode,
 *                  data, nelements)
 *
 * Wrapper to XChangeProperty that performs INCR transfer if required and
 * returns status of entire transfer.
 */
static HandleResult
change_property (Display * display, Window requestor, Atom property,
                 Atom target, int format, int mode,
                 unsigned char * data, int nelements,
                 Atom selection, Time time, MultTrack * mparent)
{
    XSelectionEvent ev;
    long nr_bytes;
    IncrTrack * it;

    nr_bytes = nelements * format / 8;

    if (nr_bytes <= max_req)
    {
        XChangeProperty (display, requestor, property, target, format, mode,
                         data, nelements);

        return HANDLE_OK;
    }

    ev.type = SelectionNotify;
    ev.display = display;
    ev.requestor = requestor;
    ev.selection = selection;
    ev.time = time;
    ev.target = target;
    ev.property = property;

    XSelectInput (ev.display, ev.requestor, PropertyChangeMask);

    XChangeProperty (ev.display, ev.requestor, ev.property, incr_atom, 32,
                     PropModeReplace, (unsigned char *)&nr_bytes, 1);

    XSendEvent (display, requestor, False,
                (unsigned long)NULL, (XEvent *)&ev);

    /* Set up the IncrTrack to track this */
    it = fresh_incrtrack ();

    it->mparent = mparent;
    it->state = S_INCR_1;
    it->display = display;
    it->requestor = requestor;
    it->property = property;
    it->selection = selection;
    it->time = time;
    it->target = target;
    it->format = format;
    it->data = data;
    it->nelements = nelements;
    it->offset = 0;

    /* Maximum nr. of elements that can be transferred in one go */
    it->max_elements = max_req * 8 / format;

    /* Nr. of elements to transfer in this instance */
    it->chunk = MIN (it->max_elements, it->nelements - it->offset);

    return HANDLE_INCOMPLETE;
}

static HandleResult
incr_stage_1 (IncrTrack * it)
{
    /* First pass: PropModeReplace, from data, size chunk */
    XChangeProperty (it->display, it->requestor, it->property, it->target,
                     it->format, PropModeReplace, it->data, it->chunk);

    it->offset += it->chunk;

    /* wait for PropertyNotify events */
    it->state = S_INCR_2;

    return HANDLE_INCOMPLETE;
}

static HandleResult
incr_stage_2 (IncrTrack * it)
{
    it->chunk = MIN (it->max_elements, it->nelements - it->offset);

    if (it->chunk <= 0)
    {

        /* Now write zero-length data to the property */
        XChangeProperty (it->display, it->requestor, it->property, it->target,
                         it->format, PropModeAppend, NULL, 0);
        it->state = S_NULL;
        return HANDLE_OK;
    }
    else
    {
        XChangeProperty (it->display, it->requestor, it->property, it->target,
                         it->format, PropModeAppend, it->data+it->offset,
                         it->chunk);
        it->offset += it->chunk;
        return HANDLE_INCOMPLETE;
    }
}


/*
 * handle_timestamp (display, requestor, property)
 *
 * Handle a TIMESTAMP request.
 */
static HandleResult
handle_timestamp (Display * display, Window requestor, Atom property,
                  Atom selection, Time time, MultTrack * mparent)
{
    return
        change_property (display, requestor, property, XA_INTEGER, 32,
                         PropModeReplace, (unsigned char *)&timestamp, 1,
                         selection, time, mparent);
}

/*
 * handle_targets (display, requestor, property)
 *
 * Handle a TARGETS request.
 */
static HandleResult
handle_targets (Display * display, Window requestor, Atom property,
                Atom selection, Time time, MultTrack * mparent)
{
    Atom * targets_cpy;
    HandleResult r;

    targets_cpy = malloc (sizeof (supported_targets));
    memcpy (targets_cpy, supported_targets, sizeof (supported_targets));

    r = change_property (display, requestor, property, XA_ATOM, 32,
                         PropModeReplace, (unsigned char *)targets_cpy,
                         NUM_TARGETS, selection, time, mparent);
    free(targets_cpy);
    return r;
}

/*
 * handle_string (display, requestor, property, sel)
 *
 * Handle a STRING request; setting 'sel' as the data
 */
static HandleResult
handle_string (Display * display, Window requestor, Atom property,
               unsigned char * sel, Atom selection, Time time,
               MultTrack * mparent)
{
    return
        change_property (display, requestor, property, XA_STRING, 8,
                         PropModeReplace, sel, xs_strlen(sel),
                         selection, time, mparent);
}

/*
 * handle_utf8_string (display, requestor, property, sel)
 *
 * Handle a UTF8_STRING request; setting 'sel' as the data
 */
static HandleResult
handle_utf8_string (Display * display, Window requestor, Atom property,
                    unsigned char * sel, Atom selection, Time time,
                    MultTrack * mparent)
{
    return
        change_property (display, requestor, property, utf8_atom, 8,
                         PropModeReplace, sel, xs_strlen(sel),
                         selection, time, mparent);
}

/*
 * handle_delete (display, requestor, property)
 *
 * Handle a DELETE request.
 */
static HandleResult
handle_delete (Display * display, Window requestor, Atom property)
{
    XChangeProperty (display, requestor, property, null_atom, 0,
                     PropModeReplace, NULL, 0);

    return DID_DELETE;
}

/*
 * process_multiple (mt, do_parent)
 *
 * Iterate through a MultTrack until it completes, or until one of its
 * entries initiates an interated selection.
 *
 * If 'do_parent' is true, and the actions proscribed in 'mt' are
 * completed during the course of this call, then process_multiple
 * is iteratively called on mt->mparent.
 */
static HandleResult
process_multiple (MultTrack * mt, Bool do_parent)
{
    HandleResult retval = HANDLE_OK;
    unsigned long i;

    if (!mt) return retval;

    for (; mt->index < mt->length; mt->index += 2)
    {
        i = mt->index;
        if (mt->atoms[i] == timestamp_atom)
        {
            retval |= handle_timestamp (mt->display, mt->requestor, mt->atoms[i+1],
                                        mt->selection, mt->time, mt);
        }
        else if (mt->atoms[i] == targets_atom)
        {
            retval |= handle_targets (mt->display, mt->requestor, mt->atoms[i+1],
                                      mt->selection, mt->time, mt);
        }
        else if (mt->atoms[i] == multiple_atom)
        {
            retval |= handle_multiple (mt->display, mt->requestor, mt->atoms[i+1],
                                       mt->sel, mt->selection, mt->time, mt);
        }
        else if (mt->atoms[i] == XA_STRING || mt->atoms[i] == text_atom)
        {
            retval |= handle_string (mt->display, mt->requestor, mt->atoms[i+1],
                                     mt->sel, mt->selection, mt->time, mt);
        }
        else if (mt->atoms[i] == utf8_atom)
        {
            retval |= handle_utf8_string (mt->display, mt->requestor, mt->atoms[i+1],
                                          mt->sel, mt->selection, mt->time, mt);
        }
        else if (mt->atoms[i] == delete_atom)
        {
            retval |= handle_delete (mt->display, mt->requestor, mt->atoms[i+1]);
        }
        else if (mt->atoms[i] == None)
        {
            /* the only other thing we know to handle is None, for which we
             * do nothing. This block is, like, __so__ redundant. Welcome to
             * Over-engineering 101 :) This comment is just here to keep the
             * logic documented and separate from the 'else' block. */
        }
        else
        {
            /* for anything we don't know how to handle, we fail the conversion
             * by setting this: */
            mt->atoms[i] = None;
        }

        /* If any of the conversions failed, signify this by setting that
         * atom to None ...*/
        if (retval & HANDLE_ERR)
        {
            mt->atoms[i] = None;
        }
        /* ... but don't propogate HANDLE_ERR */
        retval &= (~HANDLE_ERR);

        if (retval & HANDLE_INCOMPLETE) break;
    }

    if ((retval & HANDLE_INCOMPLETE) == 0)
    {
        complete_multiple (mt, do_parent, retval);
    }

    return retval;
}

/*
 * continue_incr (it)
 *
 * Continue an incremental transfer of IncrTrack * it.
 *
 * NB. If the incremental transfer was part of a multiple request, this
 * function calls process_multiple with do_parent=True because it is
 * assumed we are continuing an interrupted ITER, thus we must continue
 * the multiple as its original handler did not complete.
 */
static HandleResult
continue_incr (IncrTrack * it)
{
    HandleResult retval = HANDLE_OK;

    if (it->state == S_INCR_1)
    {
        retval = incr_stage_1 (it);
    }
    else if (it->state == S_INCR_2)
    {
        retval = incr_stage_2 (it);
    }

    /* If that completed the INCR, deal with completion */
    if ((retval & HANDLE_INCOMPLETE) == 0)
    {
        complete_incr (it, retval);
    }

    return retval;
}

/*
 * handle_multiple (display, requestor, property, sel, selection, time)
 *
 * Handle a MULTIPLE request; possibly setting 'sel' if any STRING
 * requests are processed within it. Return value has DID_DELETE bit set
 * if any delete requests are processed.
 *
 * NB. This calls process_multiple with do_parent=False because it is
 * assumed we are "handling" the multiple request on behalf of a
 * multiple already in progress, or (more likely) directly off a
 * SelectionRequest event.
 */
static HandleResult
handle_multiple (Display * display, Window requestor, Atom property,
                 unsigned char * sel, Atom selection, Time time,
                 MultTrack * mparent)
{
    MultTrack * mt;
    int format;
    Atom type;
    unsigned long bytesafter;
    HandleResult retval = HANDLE_OK;

    mt = xs_malloc (sizeof (MultTrack));

    XGetWindowProperty (display, requestor, property, 0L, 1000000,
                        False, (Atom)AnyPropertyType, &type,
                        &format, &mt->length, &bytesafter,
                        (unsigned char **)&mt->atoms);

    /* Make sure we got the Atom list we want */
    if (format != 32) return HANDLE_OK;


    mt->mparent = mparent;
    mt->display = display;
    mt->requestor = requestor;
    mt->sel = sel;
    mt->property = property;
    mt->selection = selection;
    mt->time = time;
    mt->index = 0;

    retval = process_multiple (mt, False);

    return retval;
}

/*
 * handle_selection_request (event, sel)
 *
 * Processes a SelectionRequest event 'event' and replies to its
 * sender appropriately, eg. with the contents of the string 'sel'.
 * Returns False if a DELETE request is processed, indicating to
 * the calling function to delete the corresponding selection.
 * Returns True otherwise.
 */
static Bool
handle_selection_request (XEvent event, unsigned char * sel)
{
    XSelectionRequestEvent * xsr = &event.xselectionrequest;
    XSelectionEvent ev;
    HandleResult hr = HANDLE_OK;
    Bool retval = True;

    ev.type = SelectionNotify;
    ev.display = xsr->display;
    ev.requestor = xsr->requestor;
    ev.selection = xsr->selection;
    ev.time = xsr->time;
    ev.target = xsr->target;

    if (xsr->property == None && ev.target != multiple_atom)
    {
        /* Obsolete requestor */
        xsr->property = xsr->target;
    }

    if (ev.time != CurrentTime && ev.time < timestamp)
    {
        /* If the time is outside the period we have owned the selection,
         * which is any time later than timestamp, or if the requested target
         * is not a string, then refuse the SelectionRequest. NB. Some broken
         * clients don't set a valid timestamp, so we have to check against
         * CurrentTime here. */
        ev.property = None;
    }
    else if (ev.target == timestamp_atom)
    {
        /* Return timestamp used to acquire ownership if target is TIMESTAMP */
        ev.property = xsr->property;
        hr = handle_timestamp (ev.display, ev.requestor, ev.property,
                               ev.selection, ev.time, NULL);
    }
    else if (ev.target == targets_atom)
    {
        /* Return a list of supported targets (TARGETS)*/
        ev.property = xsr->property;
        hr = handle_targets (ev.display, ev.requestor, ev.property,
                             ev.selection, ev.time, NULL);
    }
    else if (ev.target == multiple_atom)
    {
        if (xsr->property == None)   /* Invalid MULTIPLE request */
        {
            ev.property = None;
        }
        else
        {
            /* Handle MULTIPLE request */
            ev.property = xsr->property;
            hr = handle_multiple (ev.display, ev.requestor, ev.property, sel,
                                  ev.selection, ev.time, NULL);
        }
    }
    else if (ev.target == XA_STRING || ev.target == text_atom)
    {
        /* Received STRING or TEXT request */
        ev.property = xsr->property;
        hr = handle_string (ev.display, ev.requestor, ev.property, sel,
                            ev.selection, ev.time, NULL);
    }
    else if (ev.target == utf8_atom)
    {
        /* Received UTF8_STRING request */
        ev.property = xsr->property;
        hr = handle_utf8_string (ev.display, ev.requestor, ev.property, sel,
                                 ev.selection, ev.time, NULL);
    }
    else if (ev.target == delete_atom)
    {
        /* Received DELETE request */
        ev.property = xsr->property;
        hr = handle_delete (ev.display, ev.requestor, ev.property);
        retval = False;
    }
    else
    {
        /* Cannot convert to requested target. This includes most non-string
         * datatypes, and INSERT_SELECTION, INSERT_PROPERTY */
        ev.property = None;
    }

    /* Return False if a DELETE was processed */
    retval = (hr & DID_DELETE) ? False : True;

    /* If there was an error in the transfer, it should be refused */
    if (hr & HANDLE_ERR)
    {
        ev.property = None;
    }

    if ((hr & HANDLE_INCOMPLETE) == 0)
    {
        XSendEvent (display, ev.requestor, False,
                    (unsigned long)NULL, (XEvent *)&ev);

        /* If we return False here, we may quit immediately, so sync out the
         * X queue. */
        if (!retval) XSync (display, False);
    }

    return retval;
}

/*
 * set_selection (selection, sel)
 *
 * Takes ownership of the selection 'selection', then loops waiting for
 * its SelectionClear or SelectionRequest events.
 *
 * Handles SelectionRequest events, first checking for additional
 * input if the user has specified 'follow' mode. Returns when a
 * SelectionClear event is received for the specified selection.
 */
static void
set_selection (Atom selection, unsigned char * sel)
{
    XEvent event;
    IncrTrack * it;

    if (own_selection (selection) == False) return;

    for (;;)
    {
        /* Flush before unblocking signals so we send replies before exiting */
        XFlush (display);
        XNextEvent (display, &event);

        switch (event.type)
        {
        case SelectionClear:
            if (event.xselectionclear.selection == selection) return;
            break;
        case SelectionRequest:
            if (event.xselectionrequest.selection != selection) break;

            if (do_follow)
                sel = read_input (sel, True);

            if (!handle_selection_request (event, sel)) return;

            break;
        case PropertyNotify:
            if (event.xproperty.state != PropertyDelete) break;

            it = find_incrtrack (event.xproperty.atom);

            if (it != NULL)
            {
                continue_incr (it);
            }

            break;
        default:
            break;
        }
    }
}

/*
 * set_selection__daemon (selection, sel)
 *
 * Creates a daemon process to handle selection requests for the
 * specified selection 'selection', to respond with selection text 'sel'.
 * If 'sel' is an empty string (NULL or "") then no daemon process is
 * created and the specified selection is cleared instead.
 */
static void
set_selection__daemon (Atom selection, unsigned char * sel)
{
    if (empty_string (sel) && !do_follow)
    {
        clear_selection (selection);
        return;
    }

    become_daemon ();

    set_selection (selection, sel);
}

/*
 * set_selection_pair (sel_p, sel_s)
 *
 * Handles SelectionClear and SelectionRequest events for both the
 * primary and secondary selections. Returns once SelectionClear events
 * have been received for both selections. Responds to SelectionRequest
 * events for the primary selection with text 'sel_p' and for the
 * secondary selection with text 'sel_s'.
 */
static void
set_selection_pair (unsigned char * sel_p, unsigned char * sel_s)
{
    XEvent event;
    IncrTrack * it;

    if (sel_p)
    {
        if (own_selection (XA_PRIMARY) == False)
            free_string (sel_p);
    }
    else
    {
        clear_selection (XA_PRIMARY);
    }

    if (sel_s)
    {
        if (own_selection (XA_SECONDARY) == False)
            free_string (sel_s);
    }
    else
    {
        clear_selection (XA_SECONDARY);
    }

    for (;;)
    {
        /* Flush before unblocking signals so we send replies before exiting */
        XFlush (display);
        XNextEvent (display, &event);

        switch (event.type)
        {
        case SelectionClear:
            if (event.xselectionclear.selection == XA_PRIMARY)
            {
                free_string (sel_p);
                if (sel_s == NULL) return;
            }
            else if (event.xselectionclear.selection == XA_SECONDARY)
            {
                free_string (sel_s);
                if (sel_p == NULL) return;
            }
            break;
        case SelectionRequest:
            if (event.xselectionrequest.selection == XA_PRIMARY)
            {
                if (!handle_selection_request (event, sel_p))
                {
                    free_string (sel_p);
                    if (sel_s == NULL) return;
                }
            }
            else if (event.xselectionrequest.selection == XA_SECONDARY)
            {
                if (!handle_selection_request (event, sel_s))
                {
                    free_string (sel_s);
                    if (sel_p == NULL) return;
                }
            }
            break;
        case PropertyNotify:
            if (event.xproperty.state != PropertyDelete) break;

            it = find_incrtrack (event.xproperty.atom);

            if (it != NULL)
            {
                continue_incr (it);
            }
            break;
        default:
            break;
        }
    }
}

/*
 * set_selection_pair__daemon (sel_p, sel_s)
 *
 * Creates a daemon process to handle selection requests for both the
 * primary and secondary selections with texts 'sel_p' and 'sel_s'
 * respectively.
 *
 * If both 'sel_p' and 'sel_s' are empty strings (NULL or "") then no
 * daemon process is created, and both selections are cleared instead.
 */
static void
set_selection_pair__daemon (unsigned char * sel_p, unsigned char * sel_s)
{
    if (empty_string (sel_p) && empty_string (sel_s))
    {
        clear_selection (XA_PRIMARY);
        clear_selection (XA_SECONDARY);
        return;
    }

    become_daemon ();

    set_selection_pair (sel_p, sel_s);
}

/*
 * keep_selections ()
 *
 * Takes ownership of both the primary and secondary selections. The current
 * selection texts are retrieved and a new daemon process is created to
 * handle both selections unmodified.
 */
static void
keep_selections (void)
{
    unsigned char * text1, * text2;

    text1 = get_selection_text (XA_PRIMARY);
    text2 = get_selection_text (XA_SECONDARY);

    set_selection_pair__daemon (text1, text2);
}

/*
 * exchange_selections ()
 *
 * Exchanges the primary and secondary selections. The current selection
 * texts are retrieved and a new daemon process is created to handle both
 * selections with their texts exchanged.
 */
static void
exchange_selections (void)
{
    unsigned char * text1, * text2;

    text1 = get_selection_text (XA_PRIMARY);
    text2 = get_selection_text (XA_SECONDARY);

    set_selection_pair__daemon (text2, text1);
}

/*
 * free_saved_argv ()
 *
 * atexit function for freeing argv, after it has been relocated to the
 * heap.
 */
static void
free_saved_argv (void)
{
    int i;

    for (i=0; i < saved_argc; i++)
    {
        free (saved_argv[i]);
    }
    free (saved_argv);
}

/*
 * expand_argv (&argc, &argv)
 *
 * Explodes single letter options so that the argument parser can see
 * all of them. Relocates argv and all arguments to the heap.
 */
static void
expand_argv(int * argc, char **argv[])
{
    int i, new_i, arglen, new_argc = *argc;
    char ** new_argv;
    char * arg;

    /* Calculate new argc */
    for (i = 0; i < *argc; i++)
    {
        arglen = strlen((*argv)[i]);
        /* An option we need to expand? */
        if ((arglen > 2) && (*argv)[i][0] == '-' && (*argv)[i][1] != '-')
            new_argc += arglen-2;
    }

    /* Allocate new_argv */
    new_argv = xs_malloc (new_argc * sizeof(char *));

    /* Copy args into new argv */
    for (i = 0, new_i = 0; i < *argc; i++)
    {
        arglen = strlen((*argv)[i]);

        /* An option we need to expand? */
        if ((arglen > 2)
                && (*argv)[i][0] == '-' && (*argv)[i][1] != '-')
        {
            /* Make each letter a new argument. */

            char * c = ((*argv)[i] + 1);

            while (*c != '\0')
            {
                arg = xs_malloc(sizeof(char) * 3);
                arg[0] = '-';
                arg[1] = *c;
                arg[2] = '\0';
                new_argv[new_i++] = arg;
                c++;
            }
        }
        else
        {
            /* Simply copy the argument pointer to new_argv */
            new_argv[new_i++] = _xs_strdup ((*argv)[i]);
        }
    }

    /* Set the expected return values */
    *argc = new_argc;
    *argv = new_argv;

    /* Save the new argc, argv values and free them on exit */
    saved_argc = new_argc;
    saved_argv = new_argv;
    atexit (free_saved_argv);
}

int main(int argc, char *argv[])
{
    Bool do_input = False, do_output = False;
    Bool force_input = False, force_output = False;
    Window root;
    Atom selection = XA_PRIMARY, test_atom;
    int i, s=0;
    unsigned char * old_sel = NULL, * new_sel = NULL;
    char * display_name = NULL;
    long timeout_ms = 0L;

#define OPT(s) (strcmp (argv[i], (s)) == 0)


    force_input = True;
    do_output = False;

    if (do_input || force_input)
    {
        if (fstat (0, &in_statbuf) == -1)
        {
            //exit_err ("fstat error on stdin");
        }
        if (S_ISDIR(in_statbuf.st_mode))
        {
//      exit_err ("-: Is a directory\n");
        }
    }

    if (do_output || force_output)
    {
        if (fstat (1, &out_statbuf) == -1)
        {
//      exit_err ("fstat error on stdout");
        }
        if (S_ISDIR(out_statbuf.st_mode))
        {
//      exit_err ("stdout: Is a directory\n");
        }
    }

    display = XOpenDisplay (display_name);
    root = XDefaultRootWindow (display);

    window = XCreateSimpleWindow (display, root, 0, 0, 1, 1, 0, 0, 0);


    /* Get a timestamp */
    XSelectInput (display, window, PropertyChangeMask);
    timestamp = get_timestamp ();

    max_req = 4000;

    /* Consistency check */
    test_atom = XInternAtom (display, "PRIMARY", False);
    test_atom = XInternAtom (display, "SECONDARY", False);

    NUM_TARGETS=0;

    /* Get the TIMESTAMP atom */
    timestamp_atom = XInternAtom (display, "TIMESTAMP", False);
    supported_targets[s++] = timestamp_atom;
    NUM_TARGETS++;

    /* Get the MULTIPLE atom */
    multiple_atom = XInternAtom (display, "MULTIPLE", False);
    supported_targets[s++] = multiple_atom;
    NUM_TARGETS++;

    /* Get the TARGETS atom */
    targets_atom = XInternAtom (display, "TARGETS", False);
    supported_targets[s++] = targets_atom;
    NUM_TARGETS++;

    /* Get the DELETE atom */
    delete_atom = XInternAtom (display, "DELETE", False);
    supported_targets[s++] = delete_atom;
    NUM_TARGETS++;

    /* Get the INCR atom */
    incr_atom = XInternAtom (display, "INCR", False);
    supported_targets[s++] = incr_atom;
    NUM_TARGETS++;

    /* Get the TEXT atom */
    text_atom = XInternAtom (display, "TEXT", False);
    supported_targets[s++] = text_atom;
    NUM_TARGETS++;

    utf8_atom = XA_STRING;

    supported_targets[s++] = XA_STRING;
    NUM_TARGETS++;

    /* Get the NULL atom */
    null_atom = XInternAtom (display, "NULL", False);

    /* Get the COMPOUND_TEXT atom.
     * NB. We do not currently serve COMPOUND_TEXT; we can retrieve it but
     * do not perform charset conversion.
     */
    compound_text_atom = XInternAtom (display, "COMPOUND_TEXT", False);

    /* Find the "CLIPBOARD" selection if required */
    selection = XInternAtom (display, "CLIPBOARD", False);

    /* handle output modes */
    if (do_output || force_output)
    {
        /* Get the current selection */
        old_sel = get_selection_text (selection);
    }

    /* handle input and clear modes */
 if (do_input || force_input)
    {
        if (do_output || force_output) fflush (stdout);
        new_sel = initialise_read (new_sel);
        if(!do_follow)
            new_sel = read_input (new_sel, False);

        set_selection__daemon (selection, new_sel);
    }
}
