// https://ergodic.ugr.es/cphys_pedro/unix/athena2.html

#include  <X11/StringDefs.h>
#include  <X11/Intrinsic.h>
#include  <X11/Xaw3dxft/Box.h>
#include  <X11/Xaw3dxft/Command.h>
#include  <stdio.h>

void hello(Widget w, XtPointer *client, XtPointer call) {
    printf("Hello World\n");
}

void quit(Widget w, XtPointer *client, XtPointer call) {
    exit(0);
}

int main(int argc, char **argv) {

Arg xxx;
//XrmStringToQuark()123.45);

    Widget toplevel, box, command;

    toplevel = XtInitialize("Mein Fenster", "simple", NULL, 0, &argc, argv);

    box = XtVaCreateManagedWidget("Button Gruppe", boxWidgetClass, toplevel, XtNforeground, 0xFF0000, 0);
    box = XtVaCreateManagedWidget("Button Gruppe", boxWidgetClass, box, XtNbackground, 0xFF88FF,XtNwidth, 320, XtNheight, 200,
    XtNborderWidth, 20, XtNborderColor, 0x8888FF, 0);
   box->core.border_width=300;


    command = XtCreateManagedWidget("Hello World !\nHallo Welt !", commandWidgetClass, box, NULL, 0);
    XtAddCallback(command, XtNcallback, hello, NULL);

    command = XtCreateManagedWidget("Programm beenden", commandWidgetClass, box, NULL, 0);
    XtAddCallback(command, XtNcallback, quit, NULL);

    XtRealizeWidget(toplevel);

    XtMainLoop();
}


