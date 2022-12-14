/*****************************************************
   *
   *                simple.c
   *
   *  A very simple X program that uses the Athena
   *  widgets
   *
   ****************************************************/

#include  <X11/StringDefs.h>
#include  <X11/Intrinsic.h>
#include  <X11/Xaw/Box.h>
#include  <X11/Xaw/Command.h>
#include  <stdio.h>

// https://ergodic.ugr.es/cphys_pedro/unix/athena2.html

char *names[] =
{
    "button1",
    "button2",
    "buttonbn3",
    "button4",
    "button5",
    "test",
    0
};


int values[] =
{
    1,
    2,
    3,
    4,
    5,
    16
};

void hello(Widget w,XtPointer *client,XtPointer call) {
    printf("Hello World\n");
}

void quit(Widget w,XtPointer *client,XtPointer call) {
    exit(0);}


void bprint(Widget w,XtPointer client,XtPointer call) {
    printf("button %d\n", client);
}



main(argc,argv)
int argc;
char **argv;
{
    Widget toplevel;
    Widget box;
    Widget command;
    Arg  wargs[10];
    int  n;
    Widget    buttons[20];
    int  nbuttons;

    //char * s='123456';

    toplevel = XtInitialize("Mein Fenster","simple",NULL, 0, &argc, argv);

    box = XtCreateManagedWidget("Button Gruppe",boxWidgetClass, toplevel, NULL, 0);

    n = 0;
//    XtSetArg(wargs[n],XtNorientation,XtorientVertical);
    n++;
//    XtSetArg(wargs[n],XtNvSpace,10);
    n++;
    //XtSetValues(box,wargs,n);

    command = XtCreateManagedWidget("Hello World", commandWidgetClass, box, NULL, 0);
    XtAddCallback(command,XtNcallback,hello, NULL);




    nbuttons = 0;
    while(names[nbuttons] != 0)
    {
//
        buttons[nbuttons] = XtCreateWidget(names[nbuttons], commandWidgetClass, box, NULL, 0);
        char str[20];
        strcpy(str,"Button ");
        strcat(str, "A");
        int i =atoi("12345");
//        printf("%i\n",i);

        sprintf(str,"Button %i", nbuttons);
        buttons[nbuttons] = XtCreateWidget(str , commandWidgetClass, box, NULL, 0);

        XtAddCallback(buttons[nbuttons],XtNcallback,bprint,  nbuttons);

        nbuttons++;
    }
    values[3]=1234;

    command = XtCreateManagedWidget("Programm beenden", commandWidgetClass, box, NULL, 0);
    XtAddCallback(command,XtNcallback,quit, NULL);


    XtManageChildren(buttons,nbuttons);

    XtRealizeWidget(toplevel);

    XtMainLoop();

}


