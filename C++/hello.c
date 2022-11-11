#include <X11/keysym.h>
#include <X11/Xlib.h>
#include <X11/Xutil.h>
static Display *display;
static int screen;
static int depth;
static Window win;
int quit = 0;

static int create_window (void) {
  display = XOpenDisplay (NULL);
  screen = XDefaultScreen (display);
  depth = XDefaultDepth (display, screen);
  win = XCreateSimpleWindow ( display, RootWindow (display, screen), 100, 10, 400, 300, 5, 0x000000, 0xFFFFFF);
  XSelectInput (display, win, ButtonPressMask | KeyPressMask);
  XMapWindow (display, win);
}

static void eventloop (void) {
  XEvent xev;
  XNextEvent (display, &xev);

  switch (xev.type) {
  case KeyPress:
    if (XLookupKeysym (&xev.xkey, 0) == XK_Escape){ quit = 1;} 
    break;
  }
}

int main (int argc, char **argv) {
  create_window ();
  while (!quit) { eventloop ();}
  XDestroyWindow(display, win);
  XCloseDisplay (display);
}
