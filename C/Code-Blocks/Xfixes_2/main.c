
#include <X11/Xlib.h>
#include <X11/Xutil.h>
#include <X11/extensions/shape.h>
#include <X11/extensions/Xfixes.h>

#include <stdio.h>
#include <string.h> // strncmp
#include <unistd.h> // usleep

// https://stackoverflow.com/questions/73200127/linux-x11-how-to-create-transparent-and-insensitive-to-events-window-non-depen


    Display *dpy;
    Window w;
    XSetWindowAttributes attr;
    XVisualInfo vinfo;
    GC gc;
    XserverRegion region;
    int winWidth, winHeight;


void XInit()
{
    dpy = XOpenDisplay(NULL);
    if (!dpy) printf("cannot open display '%s'", XDisplayName(0));

    // Get screen resolution >>>>>
    int snum;
    snum = DefaultScreen(dpy);
    winWidth = 640;
    winHeight = 480;
    // Get screen resolution <<<<<

    XMatchVisualInfo(dpy, DefaultScreen(dpy), 32, TrueColor, &vinfo);
    attr.colormap = XCreateColormap(dpy, DefaultRootWindow(dpy), vinfo.visual, AllocNone);
    attr.border_pixel = 0;
    attr.background_pixel = 0;

    w = XCreateWindow(dpy, DefaultRootWindow(dpy), 0, 0,  winWidth, winHeight, 10, vinfo.depth, CopyFromParent, vinfo.visual, CWColormap | CWBorderPixel | CWBackPixel, &attr);


      // Ignore any input for passing events to other windows >>>>>
    region = XFixesCreateRegion (dpy, NULL, 0);
    XFixesSetWindowShapeRegion (dpy, w, ShapeBounding, 0, 0, 0);
    XFixesSetWindowShapeRegion (dpy, w, ShapeInput, 0, 0, region);
    XFixesDestroyRegion (dpy, region);
    // Ignore any input for passing events to other windows <<<<<

    gc = XCreateGC(dpy, w, 0, 0);

    XSelectInput(dpy, w, ExposureMask);
    XMapWindow(dpy, w);

    XFlush(dpy);
};


int main(int argc, char *argv[]) {

    XInit();

    int ctr = 0;

    while(1) {

        XClearWindow(dpy,w);

        XSetForeground(dpy, gc, 0x01808020);
        XRectangle rct[] = {100, 100, 200, 200};
        XFillRectangles(dpy, w, gc, rct, 1);

        XSetForeground(dpy, gc, 0x80010140);
        XRectangle rectan[] = {150, 150, 10*(ctr % 10 + 1), 10*(ctr % 10 + 1)};
        XFillRectangles(dpy, w, gc, rectan, 1);

        XFlush(dpy);
        XSync(dpy, True);

        ctr++;

        usleep(100000);
    }

    XClearWindow(dpy,w);

    XDestroyWindow(dpy, w);
    XCloseDisplay(dpy);

    return 0;
}



