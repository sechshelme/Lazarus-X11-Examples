/*
 * Компилируется строкой cc -o simple simple.c -lXaw -lXt -lX11
 */
#include <X11/Intrinsic.h>
#include <X11/StringDefs.h>
#include <X11/Shell.h>
#include <X11/Xaw/Form.h>
#include <X11/Xaw/Command.h>
#include <stdlib.h>

// sudo aptitude install libxaw7-dev

XtAppContext app_context;

void quit_proc(Widget w, XtPointer client_data, XtPointer call_data)
{
    XtDestroyApplicationContext(app_context);
    exit(0);
}

void new_proc(Widget w, XtPointer client_data, XtPointer call_data)
{
    XtDestroyApplicationContext(app_context);
    exit(0);
}

int main(int argc, char **argv)
{
    Widget toplevel, form, w, w2, filemenu;

    toplevel = XtOpenApplication(&app_context, "XFirst", NULL, 0, &argc, argv, NULL, applicationShellWidgetClass, NULL, 0);
    form =XtVaCreateManagedWidget("form", formWidgetClass, toplevel, NULL);

    w = XtVaCreateManagedWidget("quit_button", commandWidgetClass, form, XtNlabel, "Quit", NULL);
    w2 = XtVaCreateManagedWidget("quit_button", commandWidgetClass, form, XtNlabel, "Quit", NULL);

//    filemenu=	 XtVaCreateManagedWidget("playersform",				       formWidgetClass,				       "label", NULL);



    XtAddCallback(w, XtNcallback, quit_proc, NULL);
    XtAddCallback(w2, XtNcallback, new_proc, NULL);
//    XtAddCallback(filemenu, XtNcallback, quit_proc, NULL);

    XtRealizeWidget(toplevel);
    XtAppMainLoop(app_context);
}
