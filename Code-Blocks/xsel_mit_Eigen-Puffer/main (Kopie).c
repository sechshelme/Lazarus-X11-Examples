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

#include "buffer.c"
#include "xsel.h"

static Display * display;
static Window window;

/* Maxmimum request size supported by this X server */
static long max_req;

static Atom multiple_atom; /* The MULTIPLE atom */
static Atom targets_atom; /* The TARGETS atom */
static Atom delete_atom; /* The DELETE atom */
static Atom incr_atom; /* The INCR atom */
static Atom null_atom; /* The NULL atom */
static Atom text_atom; /* The TEXT atom */

#define MAX_NUM_TARGETS 9
static int NUM_TARGETS;
static Atom supported_targets[MAX_NUM_TARGETS];

/* do_zeroflush: Use only last zero-separated part of input.
 * All previous parts are discarded */
static Bool do_zeroflush = False;

/* do_follow: Follow mode for output */
static Bool do_follow = False;

/* fstat() on stdin and stdout */
static struct stat in_statbuf;

static int total_input = 0;
static int current_alloc = 0;

#define USEC_PER_SEC 1000000

static void *
xs_malloc (size_t size)
{
    void * ret;

    if (size == 0) size = 1;
    ret = malloc (size);

    return ret;
}

static void become_daemon (void)
{
    pid_t pid;
    int null_r_fd, null_w_fd;
    char * cachedir;

 //       cachedir = get_xdg_cache_home();

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

    free (cachedir);
}

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


static void clear_selection (Atom selection)
{
    XSetSelectionOwner (display, selection, None, 0);
    XSync (display, False);
}


static Bool own_selection (Atom selection)
{
    Window owner;

    XSetSelectionOwner (display, selection, window, 0);
    owner = XGetSelectionOwner (display, selection);
    if (owner != window)
    {
        return False;
    }
    else
    {
        return True;
    }
}


static IncrTrack * incrtrack_list = NULL;

static void add_incrtrack (IncrTrack * it)
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
                         PropModeReplace, 0, 1,
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
                         PropModeReplace, sel, strlen(sel),
                         selection, time, mparent);
}

static HandleResult
handle_delete (Display * display, Window requestor, Atom property)
{
    XChangeProperty (display, requestor, property, null_atom, 0,
                     PropModeReplace, NULL, 0);

    return DID_DELETE;
}


static HandleResult process_multiple (MultTrack * mt, Bool do_parent)
{
    HandleResult retval = HANDLE_OK;
    unsigned long i;

    if (!mt) return retval;

    for (; mt->index < mt->length; mt->index += 2)
    {
        i = mt->index;
        if (mt->atoms[i] == targets_atom)
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

    if (ev.target == targets_atom)
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

int main(int argc, char *argv[])
{
    Window root;
    Atom selection = XA_PRIMARY;
    int s=0;
    unsigned char * new_sel = NULL;
    char * display_name = NULL;


        if (fstat (0, &in_statbuf) == -1)
        {
        }
        if (S_ISDIR(in_statbuf.st_mode))
        {
        }

    display = XOpenDisplay (display_name);
    root = XDefaultRootWindow (display);
    window = XCreateSimpleWindow (display, root, 0, 0, 1, 1, 0, 0, 0);


    /* Get a timestamp */
    XSelectInput (display, window, PropertyChangeMask);

    max_req = 4000;

    NUM_TARGETS=0;

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

    supported_targets[s++] = XA_STRING;
    NUM_TARGETS++;

    /* Get the NULL atom */
    null_atom = XInternAtom (display, "NULL", False);

    selection = XInternAtom (display, "CLIPBOARD", False);
        //new_sel = initialise_read (new_sel);
//        if(!do_follow) new_sel = read_input (new_sel, False);


  //      printf(new_sel);

        new_sel=MyBuffer;

        printf(new_sel);
        set_selection__daemon (selection, MyBuffer);
}
