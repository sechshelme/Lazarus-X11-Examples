#include <X11/Xlib.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

#include <X11/extensions/shape.h>

#include "denied.xbm"

Display* disp;
int screen;
Window main_win;

int main(int argc, char** argv)
{
	Window w;
	Pixmap pm;
	XEvent e;
	Colormap cm;
	int x, y;
	XColor red, exact_red;
	XSizeHints *s_hints;

	disp = XOpenDisplay(0);
	screen = DefaultScreen(disp);
	cm = DefaultColormap(disp, screen);
	

	/*Work out coordinates such that the window is centred */
	x = (DisplayWidth(disp, screen) - noname_width)/2;
	y = (DisplayHeight(disp, screen) - noname_height)/2;
	
	/*Make the window red */	
	XAllocNamedColor(disp, cm, "red", &red, &exact_red);

	w=XCreateSimpleWindow(disp, XRootWindow(disp, screen), x, y, noname_width, noname_height, 0, red.pixel, red.pixel);

	/* Tell the window manager to obey the position information */
	s_hints = XAllocSizeHints();
	s_hints->flags = PPosition;
	XSetWMProperties(disp, w, 0, 0, 0, 0, s_hints, 0, 0);


	/*Create a bitmap from the xbm */	
	pm = XCreateBitmapFromData(disp, w, noname_bits, noname_width, noname_height);

	/*Set the shape of the window */
	XShapeCombineMask(disp, w, ShapeBounding, 0, 0, pm, ShapeSet);


	/*Flash the window on and off*/
	for(x=0; x < 4; x++)
	{
		XMapWindow(disp, w);
		XFlush(disp);

		system("cat sound.snd > /dev/audio&");

		usleep(1000000);
		XUnmapWindow(disp, w);
		XFlush(disp);
		usleep(200000);
	}

	XDestroyWindow(disp, w);	
	XCloseDisplay(disp);

}


