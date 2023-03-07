#include  <X11/StringDefs.h>
#include  <X11/Intrinsic.h>
#include  <X11/Core.h>
#include  <X11/Xaw/Box.h>
#include  <X11/Xaw/Command.h>  //#include "../lib/lib.h"

void hello(Widget w, XtPointer *client, XtPointer call)
{
    printf("Hello World\n");
}

void quit(Widget w, XtPointer *client, XtPointer call)
{
    exit(0);
}

void box_event( Widget w, XtPointer client, XConfigureEvent *ev)
{
        printf("Exposex: x; %i  y: %i  w: %i  h: %i  \n", ev->x, ev->y, ev->width, ev->height);
}

void redisplay_event( Widget w, XtPointer client, XExposeEvent *ev)
{
    if(ev->count != 0)
    {
        return;
    }

    XClearWindow(XtDisplay(w),XtWindow(w));
//    draw_graphics(w);


   Display *display;
    Drawable window;
    GC gc;



    display = XtDisplay(w);
    window = XtWindow(w);

    gc = XCreateGC(display, window, NULL, NULL);
    XSetForeground(display, gc, 1);
    XSetBackground(display, gc, 0);

    XDrawLine(display, window, gc, 10, 10, 100, 101);
    XDrawRectangle(display, window, gc, 75, 110, 150, 100);
    XDrawArc(display, window, gc, 75, 110, 150, 100, 45*64, 120*64);

    XDrawRectangle(display, window, gc, 10, 10, ev->width-20, ev->height-20);
    XFreeGC(display, gc);
}

void click_event( Widget w, XtPointer client, XButtonEvent  *ev)
{
    printf("click x: %i  y: %i  \n", ev->x, ev->y);
}

int main(int argc, char **argv)
{
    Widget toplevel, box, drawing, drawing2, command;
    int n;

    toplevel = XtInitialize(argv[0],"drawing", NULL, 0, &argc, argv);

    box = XtCreateManagedWidget("box", boxWidgetClass, toplevel, NULL, 0);
    XtAddEventHandler(box, StructureNotifyMask, FALSE, box_event, NULL);



    command = XtCreateManagedWidget("Hello World !", commandWidgetClass, box, NULL, 0);
    XtAddCallback(command, XtNcallback, hello, NULL);

    command = XtCreateManagedWidget("Programm beenden", commandWidgetClass, box, NULL, 0);
    XtAddCallback(command, XtNcallback, quit, NULL);


        Arg args[] =
    {
        {XtNheight, 300},
        {XtNwidth, 300},
        {XtNbackground, 0XFF8888},
        {XtNresize, TRUE},
    };


    drawing = XtCreateManagedWidget("drawing",coreWidgetClass, box, args, XtNumber(args));


        Arg args2[] =
    {
        {XtNheight, 200},
        {XtNwidth, 200},
        {XtNbackground, 0X88FF88},
        {XtNresize, TRUE},
    };


    drawing2 = XtCreateManagedWidget("drawing",coreWidgetClass, box, args2, XtNumber(args2));



    XtSetValues(drawing, args, XtNumber(args));
    XtAddEventHandler(drawing, ExposureMask, FALSE, redisplay_event, NULL);
    XtAddEventHandler(drawing, ButtonPressMask, FALSE, click_event, NULL);
    XtRealizeWidget(toplevel);
    XtMainLoop();
}


draw_graphics(w)
Widget w;
{
    Display *display;
    Drawable window;
    GC gc;

    display = XtDisplay(w);
    window = XtWindow(w);

    gc = XCreateGC(display, window, NULL, NULL);
    XSetForeground(display, gc, 1);
    XSetBackground(display, gc, 0);

    XDrawLine(display, window, gc, 10, 10, 100, 100);
    XDrawRectangle(display, window, gc, 75, 110, 150, 100);
    XDrawArc(display, window, gc, 75, 110, 150, 100, 45*64, 120*64);

    XFreeGC(display, gc);
}
