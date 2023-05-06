#include <stdio.h>
#include <X11/Xlib.h>

int
main()
{
    Display *dpy;
    Window owner;
    Atom sel;
    char *selections[] = { "PRIMARY", "SECONDARY", "CLIPBOARD", "FOOBAR" };
    size_t i;

    dpy = XOpenDisplay(NULL);
    if (!dpy)
    {
        fprintf(stderr, "Could not open X display\n");
        return 1;
    }

    for (i = 0; i < sizeof selections / sizeof selections[0]; i++)
    {
        sel = XInternAtom(dpy, selections[i], False);
        owner = XGetSelectionOwner(dpy, sel);
        printf("Owner of '%s': 0x%lX\n", selections[i], owner);
        printf("sel'%d': \n", sel);
    }

    return 0;
}

