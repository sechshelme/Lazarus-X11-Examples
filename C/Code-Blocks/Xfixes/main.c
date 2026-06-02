/* for corrent exit on termination */
#include <signal.h>

#include <X11/Xlib.h>
#include <X11/Xutil.h>
#include <X11/extensions/shape.h>
#include <X11/extensions/Xfixes.h>

#include <stdio.h>
#include <string.h> // strncmp
#include <unistd.h> // usleep

// https://stackoverflow.com/questions/73200127/linux-x11-how-to-create-transparent-and-insensitive-to-events-window-non-depen


// all required elements for drawing
typedef struct
{
    Display *dpy;
    Window w;
    XSetWindowAttributes attr;
    XGCValues gcv;
    XVisualInfo vinfo;
    GC gc;
    XserverRegion region;
    int winWidth, winHeight;
}  TXLibConfig;



int must_quit = 0;

// Define the function to be called when ctrl-c (SIGINT) is sent to process
void signal_callback_handler2(int signum) {

    must_quit = 1;
}

int XInit(TXLibConfig *txlibPtr);

int main(int argc, char *argv[]) {

    // exit by Ctrl+C and pkill
//    signal(SIGINT, signal_callback_handler);
  //  signal(SIGTERM, signal_callback_handler);


//    TXLibConfig tXlibCfg = {0};
    TXLibConfig tXlibCfg;
    XInit(&tXlibCfg);

    int ctr = 0;

    while(1) {

        XClearWindow(tXlibCfg.dpy,tXlibCfg.w);

        XSetForeground(tXlibCfg.dpy, tXlibCfg.gc, 0x01808020);
        XRectangle rct[] = {100, 100, 200, 200};
        XFillRectangles(tXlibCfg.dpy, tXlibCfg.w, tXlibCfg.gc, rct, 1);

        XSetForeground(tXlibCfg.dpy, tXlibCfg.gc, 0x80010140);
        XRectangle rectan[] = {150, 150, 10*(ctr % 10 + 1), 10*(ctr % 10 + 1)};
        XFillRectangles(tXlibCfg.dpy, tXlibCfg.w, tXlibCfg.gc, rectan, 1);

        XFlush(tXlibCfg.dpy);
        XSync(tXlibCfg.dpy, True);

        ctr++;

        usleep(100000);

        if (must_quit == 1) break;
    }

    XClearWindow(tXlibCfg.dpy,tXlibCfg.w);

    XDestroyWindow(tXlibCfg.dpy, tXlibCfg.w);
    XCloseDisplay(tXlibCfg.dpy);

    return 0;
}


int XInit(TXLibConfig *txlibPtr)
{
    txlibPtr->dpy = XOpenDisplay(NULL);
    if (!txlibPtr->dpy) printf("cannot open display '%s'", XDisplayName(0));

    // Get screen resolution >>>>>
    int snum;
    snum = DefaultScreen(txlibPtr->dpy);
//    txlibPtr->winWidth = DisplayWidth(txlibPtr->dpy, snum);
//    txlibPtr->winHeight = DisplayHeight(txlibPtr->dpy, snum);
    txlibPtr->winWidth = 640;
    txlibPtr->winHeight = 480;
    // Get screen resolution <<<<<

    XMatchVisualInfo(txlibPtr->dpy, DefaultScreen(txlibPtr->dpy), 32, TrueColor, &txlibPtr->vinfo);
    txlibPtr->attr.colormap = XCreateColormap(txlibPtr->dpy, DefaultRootWindow(txlibPtr->dpy), txlibPtr->vinfo.visual, AllocNone);
    txlibPtr->attr.border_pixel = 0;
    txlibPtr->attr.background_pixel = 0;

    txlibPtr->w = XCreateWindow(txlibPtr->dpy, DefaultRootWindow(txlibPtr->dpy), 0, 0,
                      txlibPtr->winWidth, txlibPtr->winHeight, 10, txlibPtr->vinfo.depth,
                      NoEventMask, txlibPtr->vinfo.visual, CWColormap | CWBorderPixel | CWBackPixel, &txlibPtr->attr);

    // Ignore any input for passing events to other windows >>>>>
    txlibPtr->region = XFixesCreateRegion (txlibPtr->dpy, NULL, 0);
    XFixesSetWindowShapeRegion (txlibPtr->dpy, txlibPtr->w, ShapeBounding, 0, 0, 0);
    XFixesSetWindowShapeRegion (txlibPtr->dpy, txlibPtr->w, ShapeInput, 0, 0, txlibPtr->region);
    XFixesDestroyRegion (txlibPtr->dpy, txlibPtr->region);
    // Ignore any input for passing events to other windows <<<<<

    txlibPtr->gcv.line_width = 1;
    txlibPtr->gc = XCreateGC(txlibPtr->dpy, txlibPtr->w, GCLineWidth, &txlibPtr->gcv);

    XSelectInput(txlibPtr->dpy, txlibPtr->w, ExposureMask);
    long value = XInternAtom(txlibPtr->dpy, "_NET_WM_WINDOW_TYPE_DOCK", False);
    XChangeProperty(txlibPtr->dpy, txlibPtr->w, XInternAtom(txlibPtr->dpy, "_NET_WM_WINDOW_TYPE", False),
                    6, 32, PropModeReplace, (unsigned char *) &value, 1);
    XMapWindow(txlibPtr->dpy, txlibPtr->w);

    XFlush(txlibPtr->dpy);
 //   usleep(100000);


    return 0;
};

