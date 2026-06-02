#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <X11/Xlib.h>
#include <X11/Xutil.h>
#include <X11/keysym.h>


int main()
{
	Display* 	display;
	Window		window, wtmp;
	int			screen;
	GC			gc;
	int 		radius, mx, my, itmp, orad;


	/* Default values */
	int line_width = 10, start_radius = 500, radius_step = 4, pause_time=50000;
		
	

	display = XOpenDisplay(0);

	if(!display)
	{
		fprintf(stderr, "Can't connect to display.\n");
		exit(1);
	}

	screen = DefaultScreen(display);
	window =  XRootWindow(display, screen);
			
	
	/* Create GCs */
	gc = XCreateGC(display, window, 0, 0);

	/*White, for the moment		*/
	XSetForeground(display, gc, WhitePixel(display, screen));

	/*Draw on  root draws on everything */
	XSetSubwindowMode(display, gc, IncludeInferiors);

	/* Nice fat lines */
	XSetLineAttributes(display, gc, line_width, LineSolid, CapButt, JoinRound);


	/*Use XOR, so drawind twice removes it*/
	XSetFunction(display, gc, GXxor);

	orad = 0;


	/*Attempt to grab the server, otherwise drawing errors can result*/
	XGrabServer(display);
	
	for(radius = start_radius; ; radius -= radius_step)
	{

		if(orad)
			XDrawArc(display, window, gc, mx -  orad/2 , my - orad / 2,  orad, orad, 0, 360*64);

		if(radius > 0)
		{
			XQueryPointer(display, window, &wtmp, &wtmp, &mx, &my, &itmp, &itmp, &itmp);
			XDrawArc(display, window, gc, mx -  radius/2 , my - radius / 2,  radius, radius, 0, 360*64);
		}

		XFlush(display);
		usleep(pause_time);

		orad = radius;

		if(radius < 0)
			break;
	}

	XUngrabServer(display);
	

	return 0;
}
