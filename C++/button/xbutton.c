/* xbutton.c */
#include <X11/Xlib.h>
#include <X11/Xutil.h>
// #include <unistd. h.>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
static Display *disp;
static Window win;
static GC gc;
static XFontStruct *font;
static int curbutton;  /* Aktueller Button, der gedrückt wurde */
static int xs, ys;     /* Aktuelle X-,Y-Größe des Fensters     */
static unsigned long white, black, red, blue, green;
static void draw_buttons (void);
static int which_button (int, int);
static void draw_buttons (void) {
  int wd = (xs) / 2 - 4;   /* Weite von jedem Button */
  int ht = (ys) / 3 - 4;   /* Höhe von jedem Button  */
  int i1, i2, i3, xp, yp;
  XCharStruct tsize;
  XClearWindow (disp, win);
  XSetForeground (disp, gc, red);
  XFillRectangle (disp, win, gc, 2, 2, wd, ht);
  XSetForeground (disp, gc, black);
  XSetBackground (disp, gc, red);
  XDrawRectangle (disp, win, gc, 2, 2, wd, ht);
  XTextExtents (font, "Ende", strlen ("Ende"),
                &i1, &i2, &i3, &tsize);
  xp = (wd / 2) - (tsize.width / 2);
  yp = (ht / 2) + (tsize.ascent) -
     ((tsize.ascent + tsize.descent) / 2);
  XDrawImageString ( disp, win, gc, xp, yp,
                     "Ende", strlen ("Ende"));
  XSetForeground (disp, gc, blue);
  XSetBackground (disp, gc, white);
  XDrawRectangle (disp, win, gc, xs / 2 + 2, 2, wd, ht);
  XTextExtents (font, "Hallo", strlen ("Hallo"),
                &i1, &i2, &i3, &tsize);
  xp = (xs / 2 + wd / 2 + 2) - (tsize.width / 2);
  yp = (ht / 2 + 2) + (tsize.ascent) -
     ((tsize.ascent + tsize.descent) / 2);
  XDrawImageString (disp, win, gc, xp, yp,
                    "Hallo", strlen ("Hallo"));
}
static int which_button (int x, int y) {
  int wd = (xs) / 2 - 4;   /* Weite von jedem Button */
  int ht = (ys) / 3 - 4;   /* Höhe von jedem Button  */
  if (x >= 2 && y >= 2 && x <= wd + 2 && y <= ht + 2)
    return 1;
  if (x >= xs / 2 + 2 && y >= 2 &&
      x <= wd + xs / 2 + 2 && y <= ht + 2)
    return 2;
  return 0;
}
int main (int argc, char **argv) {
  int depth;
  int screen;
  XSetWindowAttributes wa;
  XSizeHints sh;
  XVisualInfo vinfo;
  Visual *visual;
  Colormap cmap;
  Atom closeatom;
  XColor col;
  XEvent e;
  int quit = 0;
  XTextProperty name;
  char *txt = "Buttons";
  disp = XOpenDisplay ("");
  if (disp == NULL) {
    printf(" Kann keine Verbindung zum X-Server aufbauen\n");
    exit (EXIT_FAILURE);
  }
  if (!XMatchVisualInfo (disp, 0, 32, TrueColor, &vinfo))
    if (!XMatchVisualInfo (disp, 0, 24, TrueColor, &vinfo))
      if (!XMatchVisualInfo (disp, 0, 16, TrueColor, &vinfo)) {
        printf ("Cannot get TrueColor Visual!\n");
        exit (EXIT_FAILURE);
      }
  visual = vinfo.visual;
  depth = vinfo.depth;
  screen = vinfo.screen;
  cmap = XCreateColormap (
     disp, RootWindow (disp, screen), visual, AllocNone );
  col.red   = 0xFFFF;
  col.green = 0xFFFF;
  col.blue  = 0xFFFF;
  col.flags = DoRed | DoGreen | DoBlue;
  XAllocColor (disp, cmap, &col);
  white = col.pixel;
  col.red   = 0x0000;
  col.green = 0x0000;
  col.blue  = 0x0000;
  col.flags = DoRed | DoGreen | DoBlue;
  XAllocColor (disp, cmap, &col);
  black = col.pixel;
  col.red   = 0xFFFF;
  col.green = 0x0000;
  col.blue  = 0x0000;
  col.flags = DoRed | DoGreen | DoBlue;
  XAllocColor (disp, cmap, &col);
  red = col.pixel;
  col.red   = 0x0000;
  col.green = 0x0000;
  col.blue  = 0xAFFF;
  col.flags = DoRed | DoGreen | DoBlue;
  XAllocColor (disp, cmap, &col);
  blue = col.pixel;
  col.red   = 0x0000;
  col.green = 0xAFFF;
  col.blue  = 0x0000;
  col.flags = DoRed | DoGreen | DoBlue;
  XAllocColor (disp, cmap, &col);
  green = col.pixel;
  wa.background_pixel = white;
  wa.border_pixel = black;   /* Nicht verwendet, aber nötig */
  wa.colormap = cmap;        /* Nicht verwendet, aber nötig */
  xs = 130, ys = 90;
  win = XCreateWindow (disp, RootWindow (disp, screen),
                  200, 150, 130, 90, 2, depth,
                  InputOutput, visual,
                  CWBorderPixel | CWBackPixel | CWColormap, &wa);
  sh.min_width = 130;
  sh.min_height = 90;
  sh.flags = PMinSize;
  XSetWMNormalHints (disp, win, &sh);
  XStringListToTextProperty (&txt, 1, &name);
  XSetWMName (disp, win, &name);
  gc = XCreateGC (disp, win, 0, NULL);
  if (gc == 0) {
    XDestroyWindow (disp, screen);
    exit (EXIT_FAILURE);
  }
  XSelectInput (disp, win,
                ButtonPressMask | ButtonReleaseMask |
                ExposureMask    | StructureNotifyMask );
  closeatom = XInternAtom (disp, "WM_DELETE_WINDOW", 1);
  if (closeatom)
    XSetWMProtocols (disp, win, (Atom *) & closeatom, 1);
  XMapWindow (disp, win);
  font = XLoadQueryFont (disp, "9x15");
  if (font == (XFontStruct *) NULL) {
    printf ("Kann die Schrift nicht einrichten:9x15.\n");
    exit (EXIT_FAILURE);
  }
  XSetFont (disp, gc, font->fid);
  while (!quit) {
    XNextEvent (disp, &e);
    if (e.type == ClientMessage
        && (Atom) (e.xclient.data.l[0]) == closeatom) {
      quit = 1;
    } 
    else if (e.type == ButtonPress) {
      curbutton = which_button (e.xbutton.x, e.xbutton.y);
    } 
    else if (e.type == ButtonRelease) {
      if (curbutton && 
          which_button (e.xbutton.x, e.xbutton.y) == curbutton) {
        if (curbutton == 1)
          quit = 1;
        else if (curbutton == 2)
          printf ("'Hallo' gedrückt\n");
      }
      curbutton = 0;
    } 
    else if (e.type == ConfigureNotify) {
      if(e.xconfigure.width != xs || e.xconfigure.height != ys) {
        xs = e.xconfigure.width;
        ys = e.xconfigure.height;
      }
    } 
    else if (e.type == Expose) {
      if (e.xexpose.count == 0) {
        draw_buttons ();
      }
    }
  }
  XFreeFont (disp, font);
  XDestroyWindow (disp, win);
  XCloseDisplay (disp);
  exit (EXIT_SUCCESS);
}
