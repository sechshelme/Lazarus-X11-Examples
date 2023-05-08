#include <X11/Xlib.h>
#include <stdio.h>

// https://stackoverflow.com/questions/36188154/get-x11-window-caption-height
// https://specifications.freedesktop.org/wm-spec/wm-spec-latest.html#idm45317634046336

int main ()
{
    Display* d;
    Window w, root;
    Atom a, t;
    int s;
    long fg, bg;
    int f;
    unsigned long n, b;
    unsigned char *data = 0;
    long* extents;
    XEvent e;

    d = XOpenDisplay(0);
    s = DefaultScreen(d);
    root = DefaultRootWindow(d);
    fg = BlackPixel(d, s);
    bg = WhitePixel(d, s);
    w = XCreateSimpleWindow(d, root, 0, 0, 200, 200, 0, fg, bg);
    XSelectInput(d, w, ExposureMask|ButtonPressMask|KeyPressMask|PropertyChangeMask);

    XMapWindow(d,w);

    a = XInternAtom(d, "_NET_FRAME_EXTENTS", True); /* Property to check */

    /* Window manager doesn't set up the extents immediately */
    /* Wait until they are set up and there are 4 of them */
    while (XGetWindowProperty(d, w, a,
                   0, 4, False, AnyPropertyType,
                   &t, &f,
                   &n, &b, &data) != Success || n != 4 || b != 0)
    {
        printf ("Waiting for extents\n");
        XNextEvent(d, &e);
    }

    /* OK got extents */
    extents = (long*) data;
    printf ("Got frame extents: left %ld right %ld top %ld bottom %ld\n",
            extents[0], extents[1], extents[2], extents[3]);

    return 0;
}
