#include <X11/Xlib.h>
#include <stdio.h>
#include <string.h>

Display* d;
Window w, root;
int s;
XEvent xev;
int quit = 0;
    Atom nameAtom;
    Atom utf8Atom;

void setTitel()
{
    char * title = "Mein zweiter Titel";
    XChangeProperty( d, w,   nameAtom,  utf8Atom, 8, PropModeReplace, title, strlen(title));
}

void getTitel()
{
    Atom type;
    int format;
    unsigned long nitems, after;
    unsigned char *data = 0;

    XGetWindowProperty(d, w, nameAtom, 0, 65536, 0, utf8Atom, &type, &format, &nitems, &after, &data);
    printf("len: %d\n", nitems);
    printf("Name: %s\n", data);
}

int main ()
{
    d = XOpenDisplay(0);

    nameAtom = XInternAtom(d,"NET_WM_NAME",0);
    utf8Atom = XInternAtom(d,"UTF8_STRING",0);

    s = DefaultScreen(d);
    root = DefaultRootWindow(d);
    w = XCreateSimpleWindow(d, root, 0, 0, 200, 200, 0, 0,255);
    XSelectInput(d, w, ExposureMask|ButtonPressMask|KeyPressMask|PropertyChangeMask);

    XMapWindow(d,w);
    XStoreName(d,w,"Mein erster Titel"); // Wo schreibt der hin ?

    getTitel(); // Hier kommt nichts
    setTitel(); // Mit Property Titel setzten
    getTitel(); // Jetzt kommt der Titel

    while (!quit)
    {
        XNextEvent (d, &xev);
    }

    XDestroyWindow(d, w);
    XCloseDisplay (d);

    return 0;
}
