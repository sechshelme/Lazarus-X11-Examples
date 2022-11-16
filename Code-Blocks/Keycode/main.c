#include <X11/Xlib.h>
//#include <X11/Xutil.h>
//#include <X11/Xresource.h>
//#hnclude <X11/Xlocale.h>
#include <stdio.h>
//#include <stdlib.h>
//#include <string.h>

/*ne __LC_CTYPE		 0
#define __LC_NUMERIC		 1
#define __LC_TIME		 2
#define __LC_COLLATE		 3
#define __LC_MONETARY		 4
#define __LC_MESSAGES		 5
#define __LC_ALL		 6
#define __LC_PAPER		 7
#define __LC_NAME		 8
#define __LC_ADDRESS		 9
#define __LC_TELEPHONE		10
#define __LC_MEASUREMENT	11
#define __LC_IDENTIFICATION	12*/

#define	LC_ALL 6


int main(int argc, char ** argv)
{
    int screen_num, width, height;
    unsigned long background, border;
    Window win;
    XEvent ev;
    Display *dpy;
    XIM im;
    XIC ic;
    char *failed_arg;
    XIMStyles *styles;
    XIMStyle xim_requested_style;

    /* First connect to the display server, as specified in the DISPLAY
    environment variable. */
    if (setlocale(LC_ALL, "") == NULL) {
        return 9;
    }

    if (!XSupportsLocale()) {
        return 10;
    }
    if (XSetLocaleModifiers("@im=none") == NULL) {
        return 11;
    }

    dpy = XOpenDisplay(NULL);
    if (!dpy) {
        fprintf(stderr, "unable to connect to display");
        return 7;
    }
    /* these are macros that pull useful data out of the display object */
    /* we use these bits of info enough to want them in their own variables */
    screen_num = DefaultScreen(dpy);
    background = BlackPixel(dpy, screen_num);
    border = WhitePixel(dpy, screen_num);

    width = 400; /* start with a small window */
    height = 200;

    win = XCreateSimpleWindow(dpy, DefaultRootWindow(dpy), /* display, parent */
        0,0, /* x, y: the window manager will place the window elsewhere */
        width, height, /* width, height */
        2, 0xFF00000, /* border width & colour, unless you have a window manager */
        0x880000) ;/* background colour */

    /* tell the display server what kind of events we would like to see */
    XSelectInput(dpy, win, ButtonPressMask|StructureNotifyMask|KeyPressMask|KeyReleaseMask);

    /* okay, put the window on the screen, please */
    XMapWindow(dpy, win);

    im = XOpenIM(dpy, NULL, NULL, NULL);
    if (im == NULL) {
        fputs("Could not open input method\n", stdout);
        return 2;
    }

    failed_arg = XGetIMValues(im, XNQueryInputStyle, &styles, NULL);

    if (failed_arg != NULL) {
      fputs("XIM Can't get styles\n", stdout);
      return 3;
    }

    int i;
    for (i = 0; i < styles->count_styles; i++) {
        printf("style %d\n", (int)styles->supported_styles[i]);
    }
    ic = XCreateIC(im, XNInputStyle, XIMPreeditNothing | XIMStatusNothing, XNClientWindow, win, NULL);
    if (ic == NULL) {
        printf("Could not open IC\n");
        return 4;
    }

    XSetICFocus(ic);

    /* as each event that we asked about occurs, we respond.  In this
     * case we note if the window's shape changed, and exit if a button
     * is pressed inside the window */
    while(1) {
        XNextEvent(dpy, &ev);
        if (XFilterEvent(&ev, win))
            continue;
        switch(ev.type){
        case MappingNotify:
            XRefreshKeyboardMapping(&ev.xmapping);
            break;
        case KeyPress:
            {
                int count = 0;
                KeySym keysym = 0;
                char buf[20];
                Status status = 0;
                count = Xutf8LookupString(ic, (XKeyPressedEvent*)&ev, buf, 20, &keysym, &status);

                printf("count: %d\n", count);
                if (status==XBufferOverflow)
//                    printf("BufferOverflow\n");

                if (count)
                    printf("buffer: %.*s\n", count, buf);

                if (status == XLookupKeySym || status == XLookupBoth) {
//                    printf("status: %d\n", status);
                }
//                printf("pressed KEY: %d\n", (int)keysym);
            }
            break;
        case KeyRelease:
            {
                int count = 0;
                KeySym keysym = 0;
                char buf[20];
                Status status = 0;
                count = XLookupString((XKeyEvent*)&ev, buf, 20, &keysym, NULL);

                if (count)
                    printf("in release buffer: %.*s\n", count, buf);

//                printf("released KEY: %d\n", (int)keysym);
            }
            break;
        case ConfigureNotify:
            if (width != ev.xconfigure.width
                    || height != ev.xconfigure.height) {
                width = ev.xconfigure.width;
                height = ev.xconfigure.height;
//                printf("Size changed to: %d by %d", width, height);
            }
            break;
        case ButtonPress:
//            XCloseDisplay(dpy);
//            return 0;
        }
        fflush(stdout);
    }
}
