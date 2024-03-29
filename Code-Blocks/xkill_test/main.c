/*

Copyright 1988, 1998  The Open Group

Permission to use, copy, modify, distribute, and sell this software and its
documentation for any purpose is hereby granted without fee, provided that
the above copyright notice appear in all copies and that both that
copyright notice and this permission notice appear in supporting
documentation.

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE OPEN GROUP BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

Except as contained in this notice, the name of The Open Group shall
not be used in advertising or otherwise to promote the sale, use or
other dealings in this Software without prior written authorization
from The Open Group.

*/

/*
 * xkill - simple program for destroying unwanted clients
 * Author:  Jim Fulton, MIT X Consortium; Dana Chee, Bellcore
 */

/*
 * Warning, this is a very dangerous client....
 */

#ifdef HAVE_CONFIG_H
# include "config.h"
#endif

#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

#include <X11/Xos.h>
#include <X11/Xlib.h>
#include <X11/cursorfont.h>
#include <X11/Xproto.h>

#include <X11/Xmu/WinUtil.h>


#define SelectButtonAny (-1)
#define SelectButtonFirst (-2)

static XID get_window_id ( Display *dpy, int screen, int button);

int main(int argc, char *argv[])
{
    Display *dpy = NULL;
    char *displayname = NULL;		/* name of server to contact */
    int screenno;			/* screen number of dpy */
    XID id = None;			/* resource to kill */
    char *button_name = NULL;		/* name of button for window select */
    int button;				/* button number or negative for all */
    Bool top = False;

    button = SelectButtonFirst;


    dpy = XOpenDisplay (displayname);
    screenno = DefaultScreen (dpy);


    if (id == None)
    {
        id = get_window_id (dpy, screenno, 1);
        id = XmuClientWindow(dpy, id);
    }

    if (id != None)
    {
        printf ("killing creator of resource 0x%lx\n", id);
        XSync (dpy, 0);			/* give xterm a chance */
        //        XKillClient (dpy, id);
        XSync (dpy, 0);
    }

    return 0;
}


static XID get_window_id(Display *dpy, int screen, int button)
{
    Cursor cursor;		/* cursor to use when selecting */
    Window root;		/* the current root */
    Window retwin = None;	/* the window that got selected */
    int retbutton = -1;		/* button used to select window */
    int pressed = 0;		/* count of number of buttons pressed */

    root = RootWindow (dpy, screen);
    cursor = XCreateFontCursor (dpy, XC_pirate);

    XSync (dpy, 0);			/* give xterm a chance */

    XGrabPointer (dpy, root, False, ButtonPressMask | ButtonReleaseMask, GrabModeSync, GrabModeAsync, None, cursor, CurrentTime);

    while (retwin == None || pressed != 0)
    {
        XEvent event;

        XAllowEvents (dpy, SyncPointer, CurrentTime);
        XWindowEvent (dpy, root, ButtonPressMask | ButtonReleaseMask, &event);
        switch (event.type)
        {
        case ButtonPress:
            if (retwin == None)
            {
                retbutton = event.xbutton.button;
                retwin = ((event.xbutton.subwindow != None) ?
                          event.xbutton.subwindow : root);
            }
            pressed++;
            continue;
        case ButtonRelease:
            if (pressed > 0) pressed--;
            continue;
        }					/* end switch */
    }						/* end for */

    XUngrabPointer (dpy, CurrentTime);
    XFreeCursor (dpy, cursor);
    XSync (dpy, 0);

    return ((button == -1 || retbutton == button) ? retwin : None);
}
