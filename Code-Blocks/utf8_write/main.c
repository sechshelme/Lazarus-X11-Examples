#include <X11/Xlib.h>
#include <X11/Xutil.h>
#include <X11/Xresource.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
/* TODO XWMGeometry or at least XParseGeometry */

static XrmOptionDescRec xrmTable[] = {
	{"-bg", "*background", XrmoptionSepArg, NULL},
	{"-fg", "*foreground", XrmoptionSepArg, NULL},
	{"-bc", "*bordercolour", XrmoptionSepArg, NULL},
	{"-font", "*font", XrmoptionSepArg, NULL},
};

int utf8toXChar2b(XChar2b *output_r, int outsize, const char *input, int inlen){
	int j, k;
	for(j =0, k=0; j < inlen && k < outsize; j ++){
		unsigned char c = input[j];
		if (c < 128)  {
			output_r[k].byte1 = 0;
			output_r[k].byte2 = c;
			k++;
		} else if (c < 0xC0) {
			/* we're inside a character we don't know  */
			continue;
		} else switch(c&0xF0){
		case 0xC0: case 0xD0: /* two bytes 5+6 = 11 bits */
			if (inlen < j+1){ return k; }
			output_r[k].byte1 = (c&0x1C) >> 2;
			j++;
			output_r[k].byte2 = ((c&0x3) << 6) + (input[j]&0x3F);
			k++;
			break;
		case 0xE0: /* three bytes 4+6+6 = 16 bits */
			if (inlen < j+2){ return k; }
			j++;
			output_r[k].byte1 = ((c&0xF) << 4) + ((input[j]&0x3C) >> 2);
			c = input[j];
			j++;
			output_r[k].byte2 = ((c&0x3) << 6) + (input[j]&0x3F);
			k++;
			break;
		case 0xFF:
			/* the character uses more than 16 bits */
			continue;
		}
	}
	return k;
}

unsigned long getColour(Display *dpy,  XrmDatabase db, char *name,
			char *cl, char *def){
	XrmValue v;
	XColor col1, col2;
	Colormap cmap = DefaultColormap(dpy, DefaultScreen(dpy));
	char * type;

	if (XrmGetResource(db, name, cl, &type, &v)
			&& XAllocNamedColor(dpy, cmap, v.addr, &col1, &col2)) {
	} else {
		XAllocNamedColor(dpy, cmap, def, &col1, &col2);
	}
	return col2.pixel;
}

XFontStruct *getFont(Display *dpy, XrmDatabase db, char *name,
		char *cl, char *def){
	XrmValue v;
	char * type;
	XFontStruct *font = NULL;

	if (XrmGetResource(db, name, cl, &type, &v)){
		if (v.addr)
			font = XLoadQueryFont(dpy, v.addr);
	}
	if (!font) {
		if (v.addr)
		fprintf(stderr, "unable to load preferred font: %s using fixed\n", v.addr);
		else
		fprintf(stderr, "couldn't figure out preferred font\n");
		font = XLoadQueryFont(dpy, def);
	}
	return font;
}


GC setup(Display * dpy, int argc, char ** argv, int *width_r, int *height_r,
		XFontStruct **font_r){
	int width, height;
	unsigned long background, border;
	Window win;
	GC pen;
	XGCValues values;

	XFontStruct *font;
	XrmDatabase db;

	XrmInitialize();
	db = XrmGetDatabase(dpy);
	XrmParseCommand(&db, xrmTable, sizeof(xrmTable)/sizeof(xrmTable[0]),
		"xtut8", &argc, argv);

	font = getFont(dpy, db, "xtut8.font", "xtut8.Font", "fixed");
	background = getColour(dpy,  db, "xtut8.background", "xtut8.BackGround", "DarkGreen");
	border = getColour(dpy,  db, "xtut8.border", "xtut8.Border", "LightGreen");
	values.foreground = getColour(dpy,  db, "xtut8.foreground", "xtut8.ForeGround", "Red");


	width = 400;
	height = 400;

	win = XCreateSimpleWindow(dpy, DefaultRootWindow(dpy), /* display, parent */
		0,0, /* x, y: the window manager will place the window elsewhere */
		width, height, /* width, height */
		2, border, /* border width & colour, unless you have a window manager */
		background); /* background colour */

	Xutf8SetWMProperties(dpy, win, "XTut8", "xtut8", argv, argc,
		NULL, NULL, NULL);

	/* create the pen to draw lines with */
	values.line_width = 1;
	values.line_style = LineSolid;
	values.font = font->fid;
	pen = XCreateGC(dpy, win, GCForeground|GCLineWidth|GCLineStyle|GCFont,&values);

	/* tell the display server what kind of events we would like to see */
	XSelectInput(dpy, win, ButtonPressMask|ButtonReleaseMask|StructureNotifyMask|ExposureMask);

	/* okay, put the window on the screen, please */
	XMapWindow(dpy, win);

	*width_r = width; *height_r = height;
	*font_r = font;

	return pen;
}

int main_loop(Display *dpy, XFontStruct *font, GC pen, int width, int height,
		 char *text){
	int text_width;
	int textx, texty;
	XEvent ev;
	int font_ascent;
	XChar2b *string;
	int strlength = strlen(text);

	/* may be too big, but definitely big enough */
	string = malloc(sizeof(*string) * strlen(text));
	strlength = utf8toXChar2b(string, strlength, text, strlength);
	printf("%d\n", strlength);

	text_width = XTextWidth16(font, string, strlength);
	printf("%d\n", text_width);
	font_ascent = font->ascent;

	/* as each event that we asked about occurs, we respond. */
	while(1){
		XNextEvent(dpy, &ev);
		switch(ev.type){
		case Expose:
			if (ev.xexpose.count > 0) break;
			XDrawLine(dpy, ev.xany.window, pen, 0, 0, width/2-text_width/2, height/2);
			XDrawLine(dpy, ev.xany.window, pen, width, 0, width/2+text_width/2, height/2);
			XDrawLine(dpy, ev.xany.window, pen, 0, height, width/2-text_width/2, height/2);
			XDrawLine(dpy, ev.xany.window, pen, width, height, width/2+text_width/2, height/2);
   			textx = (width - text_width)/2;
   			texty = (height + font_ascent)/2;
   			XDrawString16(dpy, ev.xany.window, pen, textx, texty, string, strlength);
			break;
		case ConfigureNotify:
			if (width != ev.xconfigure.width
					|| height != ev.xconfigure.height) {
				width = ev.xconfigure.width;
				height = ev.xconfigure.height;
				XClearWindow(dpy, ev.xany.window);
			}
			break;
		case ButtonRelease:
			XCloseDisplay(dpy);
			free(string);
			return 0;
		}
	}
}

int main(int argc, char ** argv){
	int width, height;
	Display *dpy;
	GC pen;
	XFontStruct * font;
	char *text = "Hello World äüö ÄÜÖ  Ã«!";

	/* First connect to the display server */
	dpy = XOpenDisplay(NULL);
	if (!dpy) {fprintf(stderr, "unable to connect to display\n");return 7;}
	pen = setup(dpy, argc, argv, &width, &height, &font);
	if (argv[1] && argv[1][0]) text = argv[1];
	return main_loop(dpy, font, pen, width, height, text);
}
