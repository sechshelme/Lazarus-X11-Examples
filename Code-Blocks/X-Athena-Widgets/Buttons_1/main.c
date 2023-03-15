// https://ergodic.ugr.es/cphys_pedro/unix/athena2.html

#include  <X11/StringDefs.h>
#include  <X11/Intrinsic.h>
#include  <X11/Xaw/Box.h>
#include  <X11/Xaw/Command.h>
#include  <X11/Xaw/Template.h>
#include  <X11/Xaw/TextSink.h>
#include  <X11/Xmu/Converters.h>
#include  <stdio.h>


#define X2tEcenter "center"
#define X2tEcenter "cednter"


void hello(Widget w, XtPointer *client, XtPointer call) {
    printf("Hello World\n");
}

void quit(Widget w, XtPointer *client, XtPointer call) {
    exit(0);
}

int main(int argc, char **argv) {

printf("size: %i\n",sizeof( NULLQUARK));
printf("size: %i\n",sizeof( long));
printf("size: %i\n",sizeof( int));

    Widget toplevel, box, command;

    toplevel = XtInitialize("Mein Fenster", "simple", NULL, 0, &argc, argv);

    box = XtCreateManagedWidget("Button Gruppe", boxWidgetClass, toplevel, NULL, 0);

    command = XtCreateManagedWidget("Hello World !", commandWidgetClass, box, NULL, 0);
    XtAddCallback(command, XtNcallback, hello, NULL);

    command = XtCreateManagedWidget("Programm beenden", commandWidgetClass, box, NULL, 0);
    XtAddCallback(command, XtNcallback, quit, NULL);

    //command = XtCreateManagedWidget("Programm beenden", templateWidgetClass, box, NULL, 0);

    XtRealizeWidget(toplevel);

    XtMainLoop();
}


