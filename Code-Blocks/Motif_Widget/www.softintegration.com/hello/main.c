/* Written by Dan Heller and Paula Ferguson.
 * Copyright 1994, O'Reilly & Associates, Inc.
 * Permission to use, copy, and modify this program without
 * restriction is hereby granted, as long as this copyright
 * notice appears in each copy of the program source code.
 * This program is freely distributable without licensing fees and
 * is provided without guarantee or warrantee expressed or implied.
 * This program is -not- in the public domain.
 */

/* hello.c -- initialize the toolkit using an application context and a
 * toplevel shell widget, then create a pushbutton that says Hello using
 * the varargs interface.
 */
#include <Xm/PushB.h>

int main(argc, argv)
int argc;
char *argv[];
{
    Widget        toplevel, button;
    XtAppContext  app;
    void          button_pushed();
    XmString 	  label;

    XtSetLanguageProc (NULL, NULL, NULL);

    toplevel = XtVaAppInitialize (&app, "Hello", NULL, 0,
        &argc, argv, NULL, XtNwidth, 320, XtNheight, 200,  NULL);

    label = XmStringCreateLocalized ("Push here to say hello");
    button = XtVaCreateManagedWidget ("pushme",
        xmPushButtonWidgetClass, toplevel,
        XmNlabelString, label,
        NULL);
    XmStringFree (label);
    XtAddCallback (button, XmNactivateCallback, button_pushed, NULL);

    XtRealizeWidget (toplevel);
    XtAppMainLoop (app);
}

void button_pushed(widget, client_data, call_data)
Widget widget;
XtPointer client_data;
XtPointer call_data;
{
    printf ("Hello Yourself!\n");
}
