#include <X11/StringDefs.h>
#include <X11/Xaw/Command.h>

int main(int argc, char **argv) {
    Widget widget = XtInitialize(argv[0], "simple", NULL, 0, &argc, argv);



      XChar2b lbl[] = {{04,64}, {0x04, 0x40}, {0x04, 0x43},
                      {0x04, 0x41}, {0x04, 0x41},
                      {0x04, 0x3a}, {0x04, 0x38},
                      {0x04, 0x39}, {0, 0}};

    XtVaCreateManagedWidget(
    "w00t", labelWidgetClass, widget,
    XtNfont, XLoadQueryFont(XtDisplay(widget),
        "-Misc-Fixed-Medium-R-Normal--20-200-75-75-C-100-ISO10646-1"
    ), XtNwidth, 500, XtNheight, 100,
    XtNencoding, XawTextEncodingChar2b,
    XtNlabel, lbl,
    NULL);



//    XtVaCreateManagedWidget(
        //"English Русский ελληνικά", labelWidgetClass, widget,
        //XtNfont, XLoadQueryFont(XtDisplay(widget),
            //"-Misc-Fixed-Medium-R-Normal--20-200-75-75-C-100-ISO10646-1"
        //), XtNwidth, 500, XtNheight, 100, NULL
    //);
    XtRealizeWidget(widget);
    XtMainLoop();
}
