#include <stdio.h>
#include <stdlib.h>
#include <X11/Xlib.h>
#include <X11/Xutil.h>
#include <X11/keysym.h>
#include <X11/extensions/XTest.h>
#include <X11/cursorfont.h>
#include <unistd.h>

extern "C"{
#include <stroke.h>
}
#include <map>
#include <string>
#include <iostream>

using namespace std;
#define WIDTH 300
#define HEIGHT 100


Window find_window(Display* d, int screen);

void send_code(Display* d, Window w, int code)
{
	if(w==0)
		return;

	XSetInputFocus(d, w, None, RevertToNone);
	XTestFakeKeyEvent(d, code, True, 0);
	XTestFakeKeyEvent(d, code, False, 0);
}

void send_keysym(Display* d, Window w, KeySym  k)
{
	//Map a keysym to an "unused" key, eg 254 and then send the key.
	//Need to map same key to all modifiers to get capital letters to work
	//Hee, hee.
	if(w==0)
		return;

	int code=254;

	KeySym keys[5] = {k,k,k,k,k};
	XChangeKeyboardMapping(d, code, 5, keys,  1);

	XSetInputFocus(d, w, None, RevertToNone);
	XTestFakeKeyEvent(d, code, True, 0);
	XTestFakeKeyEvent(d, code, False, 0);
}

int main()
{
	Display* 	display;
	Window		root, w;
	int 		screen, points;
	XPoint		xy[10000];
	char		sequence[STROKE_MAX_SEQUENCE+1];
	GC			gc;
	int			W=WIDTH, H=HEIGHT;

	map<string, KeySym> letters;

	display = XOpenDisplay(0);

	if(!display)
	{
		fprintf(stderr, "Can't connect to display.\n");
		exit(1);
	}
	
	//Read in stroke key mapping
	for(;;)
	{
		string letter, stroke;
		cin >> letter >> stroke;
		if(!cin.good())
			break;
		
		KeySym k = XStringToKeysym(letter.c_str());
		//int code = XKeysymToKeycode(display, k);
		
		letters[stroke] = k;
	}


	screen = DefaultScreen(display);
	root =  XRootWindow(display, screen);
			
	stroke_init();


	w = XCreateSimpleWindow(display, root, 0, 0, W, H, 0, 
							BlackPixel(display, screen), 
							BlackPixel(display, screen));

	//Set window name and class
	{
		char * win_name = "Stroke Pad";
		XTextProperty name_property;
		XStringListToTextProperty(&win_name, 1, &name_property);
		XSetWMName(display, w, &name_property);
		XSetWMIconName(display, w, &name_property);
	
		char* res_name = "strokepad";
		char* class_name = "StrokePad";
		XClassHint classh = { res_name, class_name};
		XSetClassHint(display, w ,&classh);
	}
		
	
	XMapWindow(display, w);
	XSelectInput(display, w, KeyPressMask | KeyReleaseMask | ButtonPressMask | 
				ButtonReleaseMask | Button1MotionMask |StructureNotifyMask);

	gc = XCreateGC(display, w, 0, 0);
	XSetLineAttributes(display, gc, 5, LineSolid, CapRound, JoinRound);
	XSetForeground(display, gc, WhitePixel(display, screen));
	
	string last_stroke;
	bool failed=0;
	points = 0;
	Window fwin = 0;
	//Get input
	for(;;)
	{
		XEvent e;

		XNextEvent(display, &e);

		cerr << "Event type = " << e.type << endl;
		if(e.type == MappingNotify)
			continue;
		
		if(e.type == KeyPress)
		{
			KeySym k;	
			XLookupString(&e.xkey, 0, 0, &k, 0);

			if(last_stroke != "" && failed) 
			{
				clog << "Adding " << last_stroke << " : " << XKeysymToString(k)  << endl;
				//letters[last_stroke] = e.xkey.keycode;
				letters[last_stroke] = k;
			}
			else if(k == XK_BackSpace)
			{
				clog << "Erasing " << last_stroke <<" : " << XKeysymToString(letters[last_stroke]) << endl;
				letters.erase(last_stroke);
			}
			else if(k == XK_Escape)
				break;
			else if(k == XK_f || k == XK_F17)
			{
				fwin = find_window(display, screen);

				//cout << endl << fwin << endl;
			}
		}

		last_stroke = "";
		failed=false;
		if(e.type == ConfigureNotify)
		{
			W = e.xconfigure.width;
			H = e.xconfigure.height;
		}
		if(e.type == ButtonPress)
		{
			stroke_record(e.xmotion.x, e.xmotion.y);
			xy[points].x = e.xmotion.x;
			xy[points].y = e.xmotion.y;
			points++;
		}
		else if(e.type == MotionNotify)
		{
			stroke_record(e.xmotion.x, e.xmotion.y);
			xy[points].x = e.xmotion.x;
			xy[points].y = e.xmotion.y;
			points++;
		}
		else if(e.type == ButtonRelease)
		{
			stroke_trans(sequence);
			
			//If it fails, the sequence is 0	
			clog << "sequence = " << sequence << " : ";
			map<string,KeySym>::iterator i;
			i = letters.find(sequence);

			if(i != letters.end())
			{
				clog << XKeysymToString(i->second) << endl;
				send_keysym(display, fwin, i->second);
			}
			else
			{
				clog << "Nothing.\n";
				XFillRectangle(display, w, gc, 0, 0, W, H);
				XFlush(display);
				usleep(100000);
				XSetInputFocus(display, w, None, RevertToNone);
				failed=1;
			}
			last_stroke=sequence;


			XClearWindow(display, w);
			points=0;
		}

		XDrawLines(display, w, gc, xy, points, CoordModeOrigin);
	}

	
	map<string,KeySym>::iterator i;
	for(i=letters.begin(); i != letters.end(); i++)
		//cout << XKeysymToString(XKeycodeToKeysym(display, i->second, 0)) << " " << i->first << endl;
		cout << XKeysymToString(i->second) << " " << i->first << endl;

	return 0;
}

Window find_window(Display* d, int screen)
{

	Window parent, child, root;
	int i;
	unsigned int u;
	XEvent e;

	Cursor c;

	c = XCreateFontCursor(d, XC_dot);

	XGrabPointer(d, XRootWindow(d, screen), False, ButtonPressMask, GrabModeAsync,
				 GrabModeAsync, XRootWindow(d, screen), c, CurrentTime);


	for(;;)	
	{
		XNextEvent(d, &e);
		if(e.type == ButtonPress)
			break;
	}

	root =XRootWindow(d, screen);
	parent = root;

	for(;;)
	{
		XQueryPointer(d, parent, &root, &child,
				  &i, &i, &i, &i, &u); 
		
		if(child == 0)
			break;

		parent = child;
	}
	
	XUngrabPointer(d, CurrentTime);
	return parent;
}


