#include <Xm/PushB.h>
#include <Xm/Xm.h>

int main(argc, argv)
int argc;
char *argv[];
{
    Widget        toplevel, button;
    XtAppContext  app;
    void          button_pushed();
    XmString 	  label1;

    printf("enum: %i\n", XmPER_SHELL);
printf("enum: %i\n", XmPER_WIDGET);
printf("enum: %i\n\n", XmINHERIT_POLICY);

printf("enum: %i\n", XmPAGE);
printf("enum: %i\n", XmMAJOR_TAB);
printf("enum: %i\n\n", XmMINOR_TAB);

printf("enum: %i\n", XmSOLID);
printf("enum: %i\n", XmSPIRAL);
printf("enum: %i\n\n", XmPIXMAP_OVERLAP_ONLY);



    XtSetLanguageProc (NULL, NULL, NULL);

    toplevel = XtVaAppInitialize (&app, "Hello", NULL, 0,
        &argc, argv, NULL, XtNwidth, 320, XtNheight, 200, NULL);

    label1 = XmStringCreateLocalized ("Push here to say hello");

    button = XtVaCreateManagedWidget ("pushme",
        xmPushButtonWidgetClass, toplevel,
        XmNlabelString, label1,
        NULL);
    XmStringFree (label1);
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
