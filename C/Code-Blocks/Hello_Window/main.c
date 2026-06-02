#include <X11/keysym.h>
#include <X11/Xlib.h>
#include <X11/Xutil.h>

Display *display;
int screen;
int depth;
Window win;
Atom wm_delete_window;
int quit = 0;

static void eventloop (void) {
  XEvent xev;
  XNextEvent (display, &xev);

  switch (xev.type) {
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
  XSelectInput (display, win, ButtonPressMask | KeyPressMask);
  XMapWindow (display, win);

  wm_delete_window = XInternAtom(display, "WM_DELETE_WINDOW", False);
  XSetWMProtocols(display, win, &wm_delete_window, 1);

  while (!quit)
  {
    eventloop ();
  }
  XDestroyWindow(display, win);
  XCloseDisplay (display);
}
