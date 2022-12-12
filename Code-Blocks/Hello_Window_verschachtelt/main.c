#include <X11/keysym.h>
#include <X11/Xlib.h>
#include <X11/Xutil.h>
#include <X11/X.h>
#include <stdint.h>

Display *display;
int screen;
int depth;
Window win, rw, Panelwin1, Panelwin2, Buttonwin1, Buttonwin2;
int quit = 0;
mask=ButtonPressMask | KeyPressMask;

static void eventloop (void) {
  XEvent xev;
  XNextEvent (display, &xev);
//return;

  switch (xev.type) {
    case KeyPress:
      if (XLookupKeysym (&xev.xkey, 0) == XK_Escape)
      {
        quit = 1;
      }
      break;

    case ButtonPress:
      if(xev.xbutton.window == Buttonwin1)
      {
        printf("Button1\n");
      };
      if(xev.xbutton.window == Buttonwin2)
      {
        printf("Button2\n");
      };
      break;
  }
}

int main (int argc, char **argv)
{
  display = XOpenDisplay (NULL);
  screen = XDefaultScreen (display);
  depth = XDefaultDepth (display, screen);
  rw = RootWindow (display, screen);

  win = XCreateSimpleWindow ( display, rw, 100, 10, 600, 400, 5, 0x000000, 0xFFFFFF);

  Panelwin1 = XCreateSimpleWindow ( display, win, 5, 5, 400, 300, 5, 0xBB0000, 0xFFFFBB);
  Panelwin2 = XCreateSimpleWindow ( display, Panelwin1, 5, 5, 300, 200, 5, 0x00BB0, 0xFFBBFF);

  Buttonwin1 = XCreateSimpleWindow ( display, Panelwin2, 5, 5, 75, 25, 5, 0x000BB0, 0xFFBBFF);
  Buttonwin2 = XCreateSimpleWindow ( display, Panelwin2, 100, 5, 75, 25, 5, 0x000BB0, 0xFFBBFF);

  XSelectInput (display, win, mask);
  XSelectInput (display, Panelwin1, mask);
  XSelectInput (display, Panelwin2, mask);
  XSelectInput (display, Buttonwin1, mask);
  XSelectInput (display, Buttonwin2, mask);

  XMapWindow (display, win);
  XMapWindow (display, Panelwin1);
  XMapWindow (display, Panelwin2);
  XMapWindow (display, Buttonwin1);
  XMapWindow (display, Buttonwin2);

  while (!quit)
  {
    eventloop ();
  }
  XCloseDisplay (display);
}
