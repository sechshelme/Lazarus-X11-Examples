#include <stdio.h>
#include <X11/Xatom.h>
#include <X11/Xlib.h>

void
show_targets(Display *dpy, Window w, Atom p)
{
    Atom type, *targets;
    int di;
    unsigned long i, nitems, dul;
    unsigned char *prop_ret = NULL;
    char *an = NULL;

    /* Read the first 1024 atoms from this list of atoms. We don't
     * expect the selection owner to be able to convert to more than
     * 1024 different targets. :-) */
    XGetWindowProperty(dpy, w, p, 0, 1024 * sizeof (Atom), False, XA_ATOM,
                       &type, &di, &nitems, &dul, &prop_ret);

    printf("Targets:\n");
    targets = (Atom *)prop_ret;
    for (i = 0; i < nitems; i++)
    {
        an = XGetAtomName(dpy, targets[i]);
        printf("    '%s'\n", an);
        if (an)
            XFree(an);
    }
    XFree(prop_ret);

    XDeleteProperty(dpy, w, p);
}

int
main()
{
    Display *dpy;
    Window target_window, root;
    int screen;
    Atom sel, targets, target_property;
    XEvent ev;
    XSelectionEvent *sev;

    dpy = XOpenDisplay(NULL);
    if (!dpy)
    {
        fprintf(stderr, "Could not open X display\n");
        return 1;
    }

    screen = DefaultScreen(dpy);
    root = RootWindow(dpy, screen);

    sel = XInternAtom(dpy, "CLIPBOARD", False);
    targets = XInternAtom(dpy, "TARGETS", False);
    target_property = XInternAtom(dpy, "PENGUIN", False);

    target_window = XCreateSimpleWindow(dpy, root, -10, -10, 1, 1, 0, 0, 0);

    XConvertSelection(dpy, sel, targets, target_property, target_window,
                      CurrentTime);

    for (;;)
    {
        XNextEvent(dpy, &ev);
        switch (ev.type)
        {
            case SelectionNotify:
                sev = (XSelectionEvent*)&ev.xselection;
                if (sev->property == None)
                {
                    printf("Conversion could not be performed.\n");
                    return 1;
                }
                else
                {
                    show_targets(dpy, target_window, target_property);
                    return 0;
                }
                break;
        }
    }
}
