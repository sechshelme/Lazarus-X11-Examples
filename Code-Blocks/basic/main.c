/*
 * Copyright 1989 O'Reilly and Associates, Inc.
 * See ../Copyright for complete rights and liability information.
 */

// https://ccia.ugr.es/~acu/NTP/CursoActual/archivos/Xlib/basicwin/color/basic.ro.c


#include <X11/Xlib.h>
#include <X11/Xutil.h>
#include <X11/Xos.h>

#include <stdio.h>

//#include "../bitmaps/icon_bitmap"
#include "icon_bitmap"
#define BITMAPDEPTH 1
#define MAX_COLORS 3

/* Display and screen_num are used as arguments to nearly every Xlib routine,
 * so it simplifies routine calls to declare them global.  If there were
 * additional source files, these variables would be declared extern in
 * them. */
Display *display;
int screen_num;
Screen *screen_ptr;

/* pixel values */
unsigned long foreground_pixel, background_pixel, border_pixel;

/* values for window_size in main, is window big enough to be useful? */
#define SMALL 1
#define OK 0

char *progname;

void main(argc, argv)
int argc;
char **argv;
{
	Window win;
	unsigned int width, height, x, y;     /* window size and position */
	unsigned int borderwidth = 4;	      /* four pixels */
	unsigned int display_width, display_height;
	unsigned int icon_width, icon_height;
	char *window_name = "Basic Window Program";
	char *icon_name = "basicwin";
	Pixmap icon_pixmap;
	XSizeHints size_hints;
	XEvent report;
	GC gc;
	XFontStruct *font_info;
	char *display_name = NULL;
	int window_size = 0;    /* OK, or too SMALL to display contents */

	progname = argv[0];

	/* connect to X server */

	if ( (display=XOpenDisplay(display_name)) == NULL )
	{
		(void) fprintf( stderr,
				"basicwin: cannot connect to X server %s\\n",
				XDisplayName(display_name));
		exit( -1 );
	}

	/* get screen_num size from display structure macro */
	screen_num = DefaultScreen(display);
	screen_ptr = DefaultScreenOfDisplay(display);
	display_width = DisplayWidth(display, screen_num);
	display_height = DisplayHeight(display, screen_num);

	/* place window */
	x = display_width/3, y = display_height/3;

	/* size window with enough room for text */
	width = display_width/3, height = display_height/4;


	//get_colors();

	/* create opaque window */
	win = XCreateSimpleWindow(display, RootWindow(display,screen_num), x, y,
			width, height, borderwidth, border_pixel,
	    		background_pixel);

	/* Create pixmap of depth 1 (bitmap) for icon */
	icon_pixmap = XCreateBitmapFromData(display, win, icon_bitmap_bits,
			icon_bitmap_width, icon_bitmap_height);

	/* Set resize hints */
	size_hints.flags = PPosition | PSize | PMinSize;
	size_hints.x = x;
	size_hints.y = y;
	size_hints.width = width;
	size_hints.height = height;
	size_hints.min_width = 350;
	size_hints.min_height = 250;

	/* set Properties for window manager (always before mapping) */
	XSetStandardProperties(display, win, window_name, icon_name,
	    icon_pixmap, argv, argc, &size_hints);

	/* Select event types wanted */
	XSelectInput(display, win, ExposureMask | KeyPressMask |
			ButtonPressMask | StructureNotifyMask);

	load_font(&font_info);

	/* create GC for text and drawing */
	get_GC(win, &gc, font_info);

	/* Display window */
	XMapWindow(display, win);

	/* get events, use first to display text and graphics */
	while (1)  {
		XNextEvent(display, &report);
		switch  (report.type) {
		case Expose:
			/* get all other Expose events on the queue */
			while (XCheckTypedEvent(display, Expose, &report));
			if (window_size == SMALL)
			       TooSmall(win, gc, font_info);
			else {
				/* place text in window */
			       place_text(win, gc, font_info, width, height);

				/* place graphics in window, */
			       place_graphics(win, gc, width, height);
			}
			break;
		case ConfigureNotify:
			/* window has been resized, change width and
			 * height to send to place_text and place_graphics
			 * in next Expose */
			width = report.xconfigure.width;
			height = report.xconfigure.height;
			if ((width < size_hints.min_width) ||
					(height < size_hints.min_height))
				window_size = SMALL;
			else
				window_size = OK;
			break;
		case ButtonPress:
			/* trickle down into KeyPress (no break) */
		case KeyPress:
			XUnloadFont(display, font_info->fid);
			XFreeGC(display, gc);
			XCloseDisplay(display);
			exit(1);
		default:
			/* all events selected by StructureNotifyMask
			 * except ConfigureNotify are thrown away here,
			 * since nothing is done with them */
			break;
		} /* end switch */
	} /* end while */
}

get_GC(win, gc, font_info)
Window win;
GC *gc;
XFontStruct *font_info;
{
	unsigned long valuemask = 0; /* ignore XGCvalues and use defaults */
	XGCValues values;
	unsigned int line_width = 6;
	int line_style = LineOnOffDash;
	int cap_style = CapRound;
	int join_style = JoinRound;
	int dash_offset = 0;
	static char dash_list[] = {
		12, 24	};
	int list_length = 2;

	/* Create default Graphics Context */
	*gc = XCreateGC(display, win, valuemask, &values);

	/* specify font */
	XSetFont(display, *gc, font_info->fid);

	/* specify black foreground since default may be white on white */
	XSetForeground(display, *gc, foreground_pixel);

	/* set line attributes */
	XSetLineAttributes(display, *gc, line_width, line_style, cap_style,
			join_style);

	/* set dashes to be line_width in length */
	XSetDashes(display, *gc, dash_offset, dash_list, list_length);
}

load_font(font_info)
XFontStruct **font_info;
{
	char *fontname = "9x15";

	/* Access font */
	if ((*font_info = XLoadQueryFont(display,fontname)) == NULL)
	{
		(void) fprintf( stderr, "Basic: Cannot open 9x15 font\\n");
		exit( -1 );
	}
}

place_text(win, gc, font_info, win_width, win_height)
Window win;
GC gc;
XFontStruct *font_info;
unsigned int win_width, win_height;
{
	int y = 20; 	/* offset from corner of window*/
	char *string1 = "Hi! I'm a window, who are you?";
	char *string2 = "To terminate program; Press any key";
	char *string3 = "or button while in this window.";
	char *string4 = "Screen Dimensions:";
	int len1, len2, len3, len4;
	int width1, width2, width3;
	char cd_height[50], cd_width[50], cd_depth[50];
	int font_height;
	int initial_y_offset, x_offset;


	/* need length for both XTextWidth and XDrawString */
	len1 = strlen(string1);
	len2 = strlen(string2);
	len3 = strlen(string3);

	/* get string widths for centering */
	width1 = XTextWidth(font_info, string1, len1);
	width2 = XTextWidth(font_info, string2, len2);
	width3 = XTextWidth(font_info, string3, len3);

	/* output text, centered on each line */
	XDrawString(display,win,gc,(win_width - width1)/2,y,string1,len1);
	XDrawString(display,win,gc,(win_width - width2)/2,
			(int)(win_height - 35),string2,len2);
	XDrawString(display,win,gc,(win_width - width3)/2,
			(int)(win_height - 15),string3,len3);

	/* copy numbers into string variables */
	(void) sprintf(cd_height, " Height - %d pixels",
			DisplayHeight(display,screen_num));
	(void) sprintf(cd_width, " Width  - %d pixels",
			DisplayWidth(display,screen_num));
	(void) sprintf(cd_depth, " Depth  - %d plane(s)",
			DefaultDepth(display, screen_num));

	/* reuse these for same purpose */
	len4 = strlen(string4);
	len1 = strlen(cd_height);
	len2 = strlen(cd_width);
	len3 = strlen(cd_depth);

	font_height = font_info->max_bounds.ascent +
			font_info->max_bounds.descent;

	/* To center strings vertically, we place the first string
	 * so that the top of it is two font_heights above the center
	 * of the window.  Since the baseline of the string is what we
	 * need to locate for XDrawString, and the baseline is one
	 * font_info->max_bounds.ascent below the top of the chacter,
	 * the final offset of the origin up from the center of the
	 * window is one font_height + one descent. */

	initial_y_offset = win_height/2 - font_height -
			font_info->max_bounds.descent;
	x_offset = (int) win_width/4;
	XDrawString(display, win, gc, x_offset, (int) initial_y_offset,
			string4,len4);

	XDrawString(display, win, gc, x_offset, (int) initial_y_offset +
			font_height,cd_height,len1);
	XDrawString(display, win, gc, x_offset, (int) initial_y_offset +
			2 * font_height,cd_width,len2);
	XDrawString(display, win, gc, x_offset, (int) initial_y_offset +
			3 * font_height,cd_depth,len3);
}


place_graphics(win, gc, window_width, window_height)
Window win;
GC gc;
unsigned int window_width, window_height;
{
	int x, y;
	int width, height;

	height = window_height/2;
	width = 3 * window_width/4;
	x = window_width/2 - width/2;  /* center */
	y = window_height/2 - height/2;
	XDrawRectangle(display, win, gc, x, y, width, height);
}

TooSmall(win, gc, font_info)
Window win;
GC gc;
XFontStruct *font_info;
{
	char *string1 = "Too Small";
	int y_offset, x_offset;

	y_offset = font_info->max_bounds.ascent + 2;
	x_offset = 2;

	/* output text, centered on each line */
	XDrawString(display, win, gc, x_offset, y_offset, string1,
			strlen(string1));
}
