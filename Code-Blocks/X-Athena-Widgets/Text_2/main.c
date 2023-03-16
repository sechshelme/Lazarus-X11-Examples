/*******************************************************************

                             text2

      Simple test program to show of the text widget

   *****************************************************************/

#include  <X11/StringDefs.h>
#include  <X11/Intrinsic.h>
#include  <X11/Xaw/Command.h>
#include  <X11/Xaw/Form.h>
#include  <X11/Xaw/AsciiText.h>
//#include "../lib/lib.h"

char filename[] = "filename: ";
char no_file_message[] = "  *****  no file selected **** ";
Widget fname;
Widget quit;
Widget text;
Widget form;




main(int argc, char **argv)

{
    Widget toplevel; Widget source; Widget command;
    int n;
    Arg wargs[10];
    toplevel = XtInitialize(argv[0],"text",NULL,0, &argc,argv);
    form = XtCreateManagedWidget("form", formWidgetClass, toplevel, NULL, 0);

//    n = 0; XtSetArg(wargs[n], XtNfromVert, quit); n++;
//    XtSetArg(wargs[n], XtNtype, XawAsciiString); n++;
    XtSetArg(wargs[n], XtNwidth, 400); n++;
    XtSetArg(wargs[n], XtNheight, 500); n++;
    XtSetArg(wargs[n], XtNstring, no_file_message); n++;
    XtSetArg(wargs[n], XtNscrollHorizontal, XawtextScrollWhenNeeded); n++;
    XtSetArg(wargs[n], XtNscrollVertical, XawtextScrollAlways); n++;
    text = XtCreateManagedWidget("text", asciiTextWidgetClass, form, wargs, n);
//    command = XtCreateManagedWidget("open", commandWidgetClass, form, NULL, 0);

//    n = 0;
    //XtSetArg(wargs[n], XtNfromHoriz, quit); n++;
    //XtSetValues(command, wargs, n);
    //XtAddCallback(command, XtNcallback, open_command, 0);

//    n = 0;
    //XtSetArg(wargs[n], XtNfromHoriz, command); n++;
    //XtSetArg(wargs[n], XtNtype, XawAsciiString); n++;
    //XtSetArg(wargs[n], XtNstring, filename); n++;
    //XtSetArg(wargs[n], XtNwidth, 200); n++;
    //XtSetArg(wargs[n], XtNeditType, XawtextEdit); n++;
    //XtSetArg(wargs[n], XtNinsertPosition, 10); n++;
    //fname = XtCreateManagedWidget("filename",asciiTextWidgetClass, form, wargs, n);

//    n = 0;
    //XtSetArg(wargs[n], XtNtextSource, &source); n++;
    //XtGetValues(fname, wargs, n);

    //n = 0;
    //XtSetArg(wargs[n], XtNdataCompression, FALSE); n++;
    //XtSetValues(source, wargs, n);
    //XtAddCallback(source, XtNcallback, text_call, NULL);

    XtRealizeWidget(toplevel);
    XtMainLoop();
}
