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




//#include <X11/IntrinsicP.h> // IntrinsicP.h has some faster macros than Intrinsic.h
//#include <X11/ShellP.h> // Needed for Widget class definitions
XtAppContext app;
Widget main_widget; //Main Window
//------------------------------------------------
int main (int argc, char **argv)
{
short unsigned int xx,yy;
//--- Create and initialize the top-level widget
main_widget = XtOpenApplication(&app, "My Application", NULL, 0, &argc, argv, NULL, applicationShellWidgetClass, NULL, 0);
//--- Make it the desired size
XtMakeResizeRequest(main_widget, 400, 100, &xx, &yy);
//--- Realize the main widget
XtRealizeWidget(main_widget);

//-----
XtAppMainLoop(app);

}
