// https://ergodic.ugr.es/cphys_pedro/unix/athena2.html

#include  <X11/StringDefs.h>
#include  <X11/Intrinsic.h>
#include  <X11/Xaw/Box.h>
#include  <X11/Xaw/Command.h>
#include  <stdio.h>

void hello(Widget w, XtPointer *client, XtPointer call) {
    printf("Hello World\n");
}

void quit(Widget w, XtPointer *client, XtPointer call) {
    exit(0);
}

int main(int argc, char **argv) {
    Widget toplevel, box, button1, button2;
    Arg  wargs[10];
    int i;

    printf("Version: %i\n",__STDC_VERSION__);

    toplevel = XtInitialize("Mein Fenster", "simple", NULL, 0, &argc, argv);

    // --- Button Gruppe
    box = XtCreateManagedWidget("Button Gruppe", boxWidgetClass, toplevel, NULL, 0);

    i = 0;
    XtSetArg(wargs[i], XtNlabel, "Box1"); i++;
    XtSetArg(wargs[i], XtNbackground, 0x88FF88); i++;
    XtSetArg(wargs[i], XtNforeground, 0xFFFFFF); i++;
    XtSetValues(box, wargs, i);

    // --- Button1
    button1 = XtCreateManagedWidget("Hello", commandWidgetClass, box, NULL, 0);
    XtAddCallback(button1, XtNcallback, hello, NULL);

    i = 0;
    XtSetArg(wargs[i], XtNwidth, 75); i++;
    XtSetArg(wargs[i], XtNheight, 25); i++;
    XtSetArg(wargs[i], XtNlabel, "Hallo"); i++;
    XtSetArg(wargs[i], XtNbackground, 0x8888FF); i++;
    XtSetArg(wargs[i], XtNforeground, 0xFFFFFF); i++;
    XtSetValues(button1, wargs, i);


    // --- Button2
    button2 = XtCreateManagedWidget("quit", commandWidgetClass, box, NULL, 0);
    XtAddCallback(button2,
     XtNcallback,
     quit,
     NULL);

    i = 0;
    XtSetArg(wargs[i], XtNwidth, 75); i++;
    XtSetArg(wargs[i], XtNheight, 25); i++;
    XtSetArg(wargs[i], XtNlabel, "Beenden"); i++;
    XtSetArg(wargs[i], XtNbackground, 0xFF8888); i++;
    XtSetArg(wargs[i], XtNforeground, 0xFFFFFF); i++;
    XtSetValues(button2, wargs, i);

    // --- Alles inizialisieren
    XtRealizeWidget(toplevel);
    XtMainLoop();
}


