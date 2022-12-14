// Quelle: https://ergodic.ugr.es/cphys_pedro/unix/athena2.html

#include  <X11/StringDefs.h>
#include  <X11/Intrinsic.h>
#include  <X11/Xaw/Box.h>
#include  <X11/Xaw/Command.h>
#include  <stdio.h>

#define Lenght(a) (sizeof(a)/sizeof(a[0]))

void hello(Widget w, XtPointer *client, XtPointer call) {
    printf("Hello World\n");
}

void quit(Widget w, XtPointer *client, XtPointer call) {
    exit(0);
}

void bprint(Widget w, XtPointer client, XtPointer call) {
    printf("button %d\n", client);
}

int main(int argc,char **argv) {
    Widget toplevel, box, command, buttons[20];
    Arg  wargs[10];

    char str[20];

    toplevel = XtInitialize("Mein Fenster", "simple", NULL, 0, &argc, argv);

    box = XtCreateManagedWidget("Button Gruppe", boxWidgetClass, toplevel, NULL, 0);

    int i = 0;

    // Horizontale Ausrichtung der Buttons
    XtSetArg(wargs[i], XtNorientation, XtorientHorizontal);
    i++;

    // Ober und unterer Abstand zu den Buttons
    XtSetArg(wargs[i], XtNvSpace, 10);
    i++;

    XtSetValues(box, wargs, i);

    command = XtCreateManagedWidget("Hello World", commandWidgetClass, box, NULL, 0);
    XtAddCallback(command, XtNcallback, hello, NULL);

    for (int i = 0; i < Lenght(buttons); i++) {
        sprintf(str, "Button %i", i);

        buttons[i] = XtCreateWidget(str, commandWidgetClass, box, NULL, 0);
        XtAddCallback(buttons[i], XtNcallback, bprint, i);
    }
    XtManageChildren(buttons, Lenght(buttons));

    command = XtCreateManagedWidget("Programm beenden", commandWidgetClass, box, NULL, 0);
    XtAddCallback(command, XtNcallback, quit, NULL);

    XtRealizeWidget(toplevel);

    XtMainLoop();
}


