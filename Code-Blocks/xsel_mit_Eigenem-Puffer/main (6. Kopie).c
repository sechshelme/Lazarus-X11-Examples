#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <X11/Xlib.h>
#include <X11/Xatom.h>
#include <X11/Xutil.h>

#include "buffer.c"
#include "xsel.h"

static Display * display;
static Window window;

static long max_req;

static Atom targets_atom;
static Atom incr_atom;
static Atom UTF_8_atom;

#define MAX_NUM_TARGETS 9
static int NUM_TARGETS;
static Atom supported_targets[MAX_NUM_TARGETS];

static Bool own_selection (Atom selection)
{
    XSetSelectionOwner (display, selection, window, 0);
    XGetSelectionOwner (display, selection);

    return True;
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

static void remove_incrtrack (IncrTrack * it)
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

static IncrTrack * fresh_incrtrack (void)
{
    IncrTrack * it;

    it = malloc (sizeof (IncrTrack));
    add_incrtrack (it);

    return it;
}


static void trash_incrtrack (IncrTrack * it)
{
    remove_incrtrack (it);
    free (it);
}

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


static void
notify_incr (IncrTrack * it, HandleResult hr)
{
    XSelectionEvent ev;

    XSync (it->display, False);

    ev.type = SelectionNotify;
    ev.display = it->display;
    ev.requestor = it->requestor;
    ev.selection = it->selection;
    ev.time = it->time;
    ev.target = it->target;

    ev.property = it->property;

    XSendEvent (display, ev.requestor, False, (unsigned long)NULL, (XEvent *)&ev);
}

static HandleResult change_property (Display * display, Window requestor, Atom property,
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
    XChangeProperty (it->display, it->requestor, it->property, it->target,
                     it->format, PropModeReplace, it->data, it->chunk);

    it->offset += it->chunk;
    it->state = S_INCR_2;

    return HANDLE_INCOMPLETE;
}

static HandleResult
incr_stage_2 (IncrTrack * it)
{
    it->chunk = MIN (it->max_elements, it->nelements - it->offset);

    if (it->chunk <= 0)
    {
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

static HandleResult handle_targets (Display * display, Window requestor, Atom property,
                                    Atom selection, Time time, MultTrack * mparent)
{
    Atom * targets_cpy;
    HandleResult r;

    targets_cpy = malloc (sizeof (supported_targets));
    memcpy (targets_cpy, supported_targets, sizeof (supported_targets));

    r = change_property (display, requestor, property, XA_ATOM, 32, PropModeReplace, (unsigned char *)targets_cpy, NUM_TARGETS, selection, time, mparent);
    free(targets_cpy);
    return r;
}


static HandleResult handle_string (Display * display, Window requestor, Atom property,
                                   unsigned char * sel, Atom selection, Time time,
                                   MultTrack * mparent)
{
    return
        change_property (display, requestor, property, XA_STRING, 8,
                         PropModeReplace, sel, strlen(sel),
                         selection, time, mparent);
}

HandleResult process_multiple (MultTrack * mt, Bool do_parent)
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
        else if (mt->atoms[i] == XA_STRING || mt->atoms[i] == UTF_8_atom)
        {
            retval |= handle_string (mt->display, mt->requestor, mt->atoms[i+1],
                                     mt->sel, mt->selection, mt->time, mt);
        }
        else
        {
            mt->atoms[i] = None;
        }
    }

    return retval;
}


static HandleResult continue_incr (IncrTrack * it)
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

    return retval;
}


static Bool handle_selection_request (XEvent event, unsigned char * sel)
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

    if (ev.target == targets_atom)
    {
        ev.property = xsr->property;
        hr = handle_targets (ev.display, ev.requestor, ev.property,
                             ev.selection, ev.time, NULL);
    }
    else if (ev.target == XA_STRING || ev.target == UTF_8_atom)
    {
        ev.property = xsr->property;
        hr = handle_string (ev.display, ev.requestor, ev.property, sel,
                            ev.selection, ev.time, NULL);
    }
    else
    {
        ev.property = None;
    }

    retval = (hr & DID_DELETE) ? False : True;

    if ((hr & HANDLE_INCOMPLETE) == 0)
    {
        XSendEvent (display, ev.requestor, False,
                    (unsigned long)NULL, (XEvent *)&ev);

        if (!retval) XSync (display, False);
    }

    return retval;
}

static void set_selection (Atom selection, unsigned char * sel)
{
    XEvent event;
    IncrTrack * it;

    if (own_selection (selection) == False) return;

    for (;;)
    {
        XFlush (display);

        XNextEvent (display, &event);

        switch (event.type)
        {
        case SelectionClear:
            printf("SelectionClear\n");
            if (event.xselectionclear.selection == selection) return;
            break;
        case SelectionRequest:
            printf("SelectionRequest\n");
            if (event.xselectionrequest.selection == selection)
            {
                if (!handle_selection_request (event, sel)) return;
            }
            break;
        case PropertyNotify:
            printf("PropertyNotify\n");

            if (event.xproperty.state == PropertyDelete)
            {
                it = find_incrtrack (event.xproperty.atom);

                if (it != NULL) continue_incr (it);
            }
            break;
        }
    }
}

int main(int argc, char *argv[])
{
    Window root;
    Atom selection;
    int s=0;
    display = XOpenDisplay (NULL);
    root = XDefaultRootWindow (display);
    window = XCreateSimpleWindow (display, root, 0, 0, 1, 1, 0, 0, 0);
    XSelectInput (display, window, PropertyChangeMask);

    max_req = 4000;
    NUM_TARGETS=0;

    /* Get the TARGETS atom */
    targets_atom = XInternAtom (display, "TARGETS", False);
    supported_targets[s++] = targets_atom;
    NUM_TARGETS++;

    /* Get the INCR atom */
    incr_atom = XInternAtom (display, "INCR", False);
    supported_targets[s++] = incr_atom;
    NUM_TARGETS++;

    /* Get the TEXT atom */
    UTF_8_atom = XInternAtom (display, "UTF8_STRING", False);
    supported_targets[s++] = UTF_8_atom;
    NUM_TARGETS++;

    supported_targets[s++] = XA_STRING;
    NUM_TARGETS++;

    selection = XInternAtom (display, "CLIPBOARD", False);

    //printf(MyBuffer);

    setsid () ;
    set_selection (selection, MyBuffer);
}
