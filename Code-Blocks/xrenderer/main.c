#include <X11/keysym.h>
#include <X11/Xlib.h>
#include <X11/Xutil.h>
//#include <X11/Xutil.h>
#include <X11/extensions/Xrender.h>


// file:///home/tux/Schreibtisch/x11-master/xrender/Xrender.html

Display *display;
int screen;
int depth;
Window win;
GC gc;
Atom wm_delete_window;
int quit = 0;

void init()
{
      gc=XCreateGC(display,win,0,0);

  XRenderPictFormat *format=    XRenderFindStandardFormat(display,PictStandardRGB24);

      Pixmap pixmap=XCreatePixmap(display,win,512,512,24);

      Picture picture= XRenderCreatePicture(display,pixmap, format,0,NULL);
      printf("xxxxxxx\n");

      XFreePixmap(display,pixmap);


      //XDrawRectangle(display,win,gc,10,10,100,100);
XRenderColor color={.red=0, .green=0, .blue=0x8000, .alpha=0x8000};
//Picture picture=XRenderCreatePicture(display,tmp,);
XRenderFillRectangle(display, PictOpSrc, picture, &color, 0, 0, 1, 1);
}

static void eventloop (void) {
  XEvent xev;
  XNextEvent (display, &xev);

  switch (xev.type) {
    case Expose:
      {
      }
      break;
    case KeyPress:
      if (XLookupKeysym (&xev.xkey, 0) == XK_Escape)
      {
        quit = 1;
      }
      break;
    case ClientMessage: {
      if ((Atom)xev.xclient.data.l[0] == wm_delete_window)
      {
        quit = 1;
      }
      break;
    }
  }
}

int main (int argc, char **argv)
{
  display = XOpenDisplay (NULL);
  screen = XDefaultScreen (display);
  depth = XDefaultDepth (display, screen);
  win = XCreateSimpleWindow ( display, RootWindow (display, screen), 100, 10, 400, 300, 5, 0x000000, 0xFFFFFF);
  XSelectInput (display, win, ButtonPressMask | KeyPressMask |ExposureMask);
  XMapWindow (display, win);

  wm_delete_window = XInternAtom(display, "WM_DELETE_WINDOW", False);
  XSetWMProtocols(display, win, &wm_delete_window, 1);

  init();

  while (!quit)
  {
    eventloop ();
  }
  XDestroyWindow(display, win);
  XCloseDisplay (display);
}
