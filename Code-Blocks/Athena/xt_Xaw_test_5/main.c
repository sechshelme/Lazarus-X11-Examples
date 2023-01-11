/*
    Компилируется строкой cc -o simple simple.c -lXaw -lXt -lX11
*/
#include <X11/Intrinsic.h>
#include <X11/StringDefs.h>
#include <X11/Shell.h>
#include <X11/Xaw/Form.h>
#include <X11/Xaw/Command.h>
#include <stdlib.h>

// sudo aptitude install libxaw7-dev

#include <stdio.h> //fprintf, stderr
//#include <stdlib.h > // exit
//include <X11/IntrinsicP.h> // IntrinsicP.h has some faster macros than Intrinsic.h
//#include <X11/ShellP.h> // Needed for Widget class definitions
XtAppContext app;
Widget main_widget; //Main Window
Display *main_disp; //The Display pointer for the parent widget is stored here.
Window main_wind; //The Window for the parent widget is stored here.
Widget widget_child;
Display *dchild;
Window wchild;
//----------------------------------------------------
// This function is called by a ButtonPress event in the Popup Widget
// Button 1 Hides the Popup
// Button 2 makes the Popup tall and skinny
// Button 3 makes the Popup short and wide
void popevent(Widget w, XtPointer p, XEvent *event, char* CTmp)
{
    if (event->xbutton.button == Button1)
    {
        fprintf(stderr, "Child Button 1 Pressed\n");
        XtPopdown(widget_child);
    }
    if (event->xbutton.button == Button2)
    {
        fprintf(stderr, "Child Button 2 Pressed\n");
        XtResizeWidget(widget_child, 120, 350, 10);
    }
    if (event->xbutton.button == Button3)
    {
        fprintf(stderr, "Child Button 3 Pressed\n");
        XtResizeWidget(widget_child, 200, 50, 10);
    }
}
//------------------------------------------------
// This function is called by a ButtonPress event in the main widget
// Button 1 is the loft mouse button, Button 3 is the right button,
// Button 2 is the middle button (or the left & right button pressed together)
// Button 3 quits the program
void EvProc(Widget w, XtPointer client_data, XEvent *event, char* CTmp)
{
    Colormap cmap;
    XColor color;
    if (event->xbutton.button == Button1)
    {
        fprintf(stderr, "Button 1 Pressed\n");
        if (widget_child == NULL)
        {
            widget_child = XtCreatePopupShell("Popup Demo", applicationShellWidgetClass, main_widget, NULL, 0);
            XtAddEventHandler(widget_child, ButtonPressMask, FALSE, popevent, NULL);
        }
        XtResizeWidget(widget_child, 200, 50, 10);
        XtPopup(widget_child, XtGrabNone); //--- Save child widget window & display values
        wchild = XtWindow(widget_child);
        dchild = XtDisplay(widget_child);
        cmap = DefaultColormap(dchild, DefaultScreen(dchild));
        if (XParseColor(dchild, cmap, "light cyan", &color) == 0)
        {
            fprintf(stderr, "Bad Parse\n");
        }
        if (XAllocColor(dchild, cmap, &color) == 0)
        {
            fprintf(stderr, "Bad Color");
        }
        XSetWindowBackground(dchild, wchild, color.pixel);
        XClearWindow(dchild, wchild);
    }
    if (event->xbutton.button == Button2)
    {
        fprintf(stderr, "Button 2 Pressed\n");
    }
    if (event->xbutton.button == Button3)
    {
        fprintf(stderr, "Button 3 Pressed\n");
        exit(0);
    }
}
//------------------------------------------------
void main (int argc, char **argv)
{
    short unsigned int xx,yy;
    Colormap cmap;
    XColor color;
    widget_child = NULL;
//--- Create and initialize the top-level widget
    main_widget = XtOpenApplication(&app, "My Application", NULL, 0, &argc, argv, NULL, applicationShellWidgetClass, NULL, 0);
//--- Make it the desired size
    XtMakeResizeRequest(main_widget, 300, 100, &xx, &yy);
//--- Realize the main widget
    XtRealizeWidget(main_widget);

//Save main widget Window & Display values
    main_wind = XtWindow(main_widget);
    main_disp = XtDisplay(main_widget);
//--- Load default colormap and allocate a color close to the desired background color
    cmap = DefaultColormap(main_disp, DefaultScreen(main_disp));
    if (XParseColor(main_disp, cmap, "dark_blue", &color) == 0)
    {
        fprintf(stderr, "Bad Parse\n");
    }
    if (XAllocColor(main_disp, cmap, &color) == 0)
    {
        fprintf(stderr, "Bad Color\n");
    }
    XSetWindowBackground(main_disp, main_wind, color.pixel);
//--- Add Mouse Button Event Handler
    XtAddEventHandler(main_widget, ButtonPressMask, FALSE, EvProc, NULL);
//-----
    XClearWindow(main_disp, main_wind);
    XtAppMainLoop(app);
}
