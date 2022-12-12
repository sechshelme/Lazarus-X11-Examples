/*
 * This example uses all the Athena widgets, and demonstrates timeouts.
 *
 * November 30, 1989 - Chris D. Peterson
 */

/*
 * $XConsortium: xwidgets.c,v 1.27 89/12/15 19:33:19 kit Exp $
 *
 * Copyright 1989 Massachusetts Institute of Technology
 *
 * Permission to use, copy, modify, distribute, and sell this software and its
 * documentation for any purpose is hereby granted without fee, provided that
 * the above copyright notice appear in all copies and that both that
 * copyright notice and this permission notice appear in supporting
 * documentation, and that the name of M.I.T. not be used in advertising or
 * publicity pertaining to distribution of the software without specific,
 * written prior permission.  M.I.T. makes no representations about the
 * suitability of this software for any purpose.  It is provided "as is"
 * without express or implied warranty.
 *
 * M.I.T. DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING ALL
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT SHALL M.I.T.
 * BE LIABLE FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
 * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
 * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 */


 // http://euklid.mi.uni-koeln.de/c/mirror/www.cs.curtin.edu.au/units/cg252-502/examples/Xawsrc/xwidgets.c

#include <stdio.h>

#include <X11/Xatom.h>
#include <X11/Intrinsic.h>
#include <X11/StringDefs.h>

#include <X11/Xaw/AsciiText.h>
#include <X11/Xaw/Box.h>
//#include <X11/Xaw/Clock.h>
#include <X11/Xaw/Command.h>
#include <X11/Xaw/Dialog.h>
#include <X11/Xaw/Form.h>
#include <X11/Xaw/Label.h>
#include <X11/Xaw/List.h>
//#include <X11/Xaw/Logo.h>
#include <X11/Xaw/MenuButton.h>
#include <X11/Xaw/Scrollbar.h>
#include <X11/Xaw/SimpleMenu.h>
#include <X11/Xaw/SmeBSB.h>
#include <X11/Xaw/SmeLine.h>
#include <X11/Xaw/StripChart.h>
#include <X11/Xaw/Paned.h>
#include <X11/Xaw/Toggle.h>
#include <X11/Xaw/Viewport.h>

#include <X11/Xaw/Cardinals.h>

String fallback_resources[] = {
    "*input:                  True",
    "*Paned.width:            350",
    "*label.label:            At least one of each Athena Widget.",
    "*Dialog.label:           I am a Dialog widget.",
    "*Dialog.value:           Enter new value here.",
    "*Dialog*command*label:   ok",
    "*Dialog*resizable:       True",
    "*Viewport*allowVert:     True",
    "*Viewport*forceBars:	True",
    "*Form*formLabel.label:   0",
    "*Form*resizable:       True",
    "*StripChart*update:      1",
    "*StripChart*jumpScroll:  1",
    "*Box*allowResize:        True",
    "*scrollbar*orientation:  horizontal",
    "*scrollbar*length:       100",
    "*text*height:            75",
    "*text*string:            Look ma,\\na text widget!",
    "*text*editType:          edit",
    "*text*scrollVertical:    whenNeeded",
    "*text*scrollHorizonal:   whenNeeded",
    "*textFile*type:          file",
    "*textFile*string:        /etc/motd",
    "*textFile*scrollVertical:    whenNeeded",
    "*textFile*scrollHorizonal:   whenNeeded",
    "*textFile*height:        75",
/*    "*topShadow:		LightBlue",		/* for Xaw */
/*    "*bottomShadow:		MidnightBlue",*/
    "*shadowWidth:		3",
    "*Background:		CornflowerBlue",
    NULL,
};

static void Destroyed(), Quit(), Count(), Syntax(), CreateFormWithButtons();
static void CreateBox(), Okay(), Scrolled(), Thumbed(), Finish();
static void TimeSinceTouched();

void
main(argc, argv)
int argc;
char **argv;
{
    Widget toplevel, outer, dialog, box, quit, chart, list, viewport;
    XtAppContext app_con;

    toplevel = XtVaAppInitialize(&app_con, "Xwidgets", NULL, ZERO,
			       &argc, argv, fallback_resources,
				NULL);

    if (argc != 1)
	Syntax(app_con, argv[0]);

    XtAddCallback( toplevel, XtNdestroyCallback, Destroyed, NULL );

    outer = XtVaCreateManagedWidget( "paned", panedWidgetClass, toplevel,
				  NULL);

    quit = XtVaCreateManagedWidget( "quit", commandWidgetClass, outer,
				 NULL);
    XtAddCallback( quit, XtNcallback, Quit, (XtPointer) toplevel);

    (void)XtVaCreateManagedWidget( "label", labelWidgetClass, outer,
				NULL);

    dialog = XtVaCreateManagedWidget("dialog", dialogWidgetClass, outer,
				   NULL);

    viewport = XtVaCreateManagedWidget( "viewport", viewportWidgetClass, outer,
				     NULL);

    list = XtVaCreateManagedWidget("list", listWidgetClass, viewport,
				 NULL);

    XawDialogAddButton(dialog, "command", Okay, (XtPointer) list);


    CreateFormWithButtons(outer);

    box = XtVaCreateManagedWidget( "box", boxWidgetClass, outer,
				NULL);
//    (void) XtVaCreateManagedWidget(NULL, clockWidgetClass, box,				NULL);
//    (void) XtVaCreateManagedWidget(NULL, logoWidgetClass, box,				NULL);

    chart = XtVaCreateManagedWidget("stripChart", stripChartWidgetClass, outer,
				NULL);
    XtAddCallback(chart, XtNgetValue, TimeSinceTouched, NULL);

    (void) XtVaCreateManagedWidget("text", asciiTextWidgetClass,outer,
				NULL);

    CreateBox(outer);

    (void) XtVaCreateManagedWidget("textFile", asciiTextWidgetClass, outer,
				NULL);

    XtRealizeWidget(toplevel);
    XtAppMainLoop(app_con);
}

/*	Function Name: CreateFormWithButtons
 *	Description: Creates a form widget that contains:
 *                   a label, command, toggle, and menu button.
 *	Arguments: parent - the parent of the form widget.
 *	Returns: none.
 */

static void
CreateFormWithButtons(parent)
Widget parent;
{
    Widget form, label, button, menu;
    int i;

    form = XtVaCreateManagedWidget( "form", formWidgetClass, parent,

				NULL);

    label = XtVaCreateManagedWidget("formLabel",labelWidgetClass,form,
				NULL);

    button = XtVaCreateManagedWidget("command",commandWidgetClass,form,
			XtNfromHoriz, label,
			NULL);
    XtAddCallback( button, XtNcallback, Count, (XtPointer) label );

    button = XtVaCreateManagedWidget("toggle", toggleWidgetClass, form,
				XtNfromHoriz, button,
				NULL);
    XtAddCallback( button, XtNcallback, Count, (XtPointer) label );

    button = XtVaCreateManagedWidget("menuButton", menuButtonWidgetClass, form,
				   XtNfromHoriz, button,
					NULL);

    menu = XtVaCreatePopupShell("menu", simpleMenuWidgetClass, button,
				NULL);

    for (i = 0; i < 5; i++) {
	char buf[BUFSIZ];
	sprintf(buf, "menuEntry%d", i + 1);
	(void) XtVaCreateManagedWidget(buf, smeBSBObjectClass, menu,

				NULL);
	if (i == 2)
	    (void) XtVaCreateManagedWidget("menuButton", smeLineObjectClass,
					 menu,
				NULL);
    }
}

/*	Function Name: CreateBox
 *	Description: Creates a box with a label and a scrollbar in it.
 *	Arguments: parent - the parent of the box.
 *	Returns: none.
 */

static void
CreateBox(parent)
Widget parent;
{
    Widget box, scrollbar, label;

    box = XtVaCreateManagedWidget(NULL, boxWidgetClass, parent,
				NULL);

    scrollbar = XtVaCreateManagedWidget("scrollbar", scrollbarWidgetClass, box,
				NULL);

    label = XtVaCreateManagedWidget("scroll_label", labelWidgetClass, box,
				NULL);

    XtAddCallback(scrollbar, XtNjumpProc, Thumbed, (XtPointer) label);
    XtAddCallback(scrollbar, XtNscrollProc, Scrolled, (XtPointer) label);
}

/*	Function Name: Syntax
 *	Description: Prints a the calling syntax for this function to stdout.
 *	Arguments: app_con - the application context.
 *                 call - the name of the application.
 *	Returns: none - exits tho.
 */

static void
Syntax(app_con, call)
XtAppContext app_con;
char *call;
{
    XtDestroyApplicationContext(app_con);
    fprintf(stderr, "Usage: %s\n", call);
    exit(1);
}

/*	Function Name: TimeSinceTouched
 *	Description: This function returns the number of 10s of seconds since
 *                   the user caused an event in this application.
 *	Arguments: widget - the strip chart widget.
 *                 closure - unused.
 *                 value_ptr - a pointer to the value to return.
 *	Returns: none
 */

/* ARGSUSED */
static void
TimeSinceTouched(widget,closure,value_ptr)
Widget widget;
XtPointer closure, value_ptr;
{
    double *value = (double *) value_ptr;
    static double old_value = 0.0;
    static Time old_stamp = 1;
    Time new_stamp;

    new_stamp = XtLastTimestampProcessed(XtDisplay(widget));

    if (old_stamp != new_stamp) {
	old_stamp = new_stamp;
	old_value = 0.0;
    }
    else {
	int update;

	XtVaGetValues(widget,
			XtNupdate, &update,
			NULL);
	old_value += (double) update / 10.0;
    }

    *value = old_value;

}

/*	Function Name: Quit
 *	Description: Destroys all widgets, and returns.
 *	Arguments: widget - the widget that called this callback.
 *                 closure, callData - *** UNUSED ***.
 *	Returns: none
 *
 * NOTE:  The shell widget has a destroy callback that sets a five second
 *        timer, and at the end of that time the program exits.
 */

/* ARGSUSED */
static void
Quit(widget,closure,callData)
Widget widget;
XtPointer closure, callData;
{
    fprintf(stderr, "command callback.\n");
    XtDestroyWidget((Widget)closure);
}

/*	Function Name: Count
 *	Description: This callback routin will increment that counter
 *                   and display the number as the label of the widget passed
 *                   in the closure.
 *	Arguments: widget - *** UNUSED ***
 *                 closure - a pointer to the label widge to display the
 *                           string in.
 *                 callData - *** UNUSED ***
 *	Returns: none
 */

/* ARGSUSED */
static void
Count(widget, closure, callData)
Widget widget;
XtPointer closure, callData;
{
   char text[10];
   static int count = 0;

   sprintf( text, " %d ", ++count );
   XtVaSetValues( (Widget)closure,
			XtNlabel, text,
			NULL);
}

/*	Function Name: Okay
 *	Description: Adds an entry to the List widget passed as clientData.
 *                   The name of this entry is the value of the dialog widget.
 *	Arguments: widget - the button that called this callback.
 *                 clientData - the list widget to add the entry to.
 *                 callData - *** UNUSED ***.
 *	Returns: none.
 *
 * NOTE: It is assumed that the button is a child of the dialog.
 */

/* ARGSUSED */
static void
Okay(widget, clientData, callData)
Widget widget;
XtPointer clientData, callData;
{
    Widget list_widget = (Widget) clientData;
    static String * list = NULL;
    static int num_items = 0, allocated_items = 0;

    if (num_items == allocated_items) {
	allocated_items += 10;
	list = (String *) XtRealloc((char *)list, sizeof(String) * allocated_items);
    }

    /*
     * The value returned by XawDialogGetValueString() does not remain good
     * forever so we must store is somewhere.  This creates a memory leak
     * since I don't remember these values, and free them later.  I know about
     * it, but it doesn't seem worth fixing in this example.
     */

    list[num_items++] = XtNewString(XawDialogGetValueString(XtParent(widget)));
    XawListChange(list_widget, list, num_items, 0, True);
}

/*	Function Name: Scrolled.
 *	Description: Prints the location of the pointer into the label
 *                   widget provided.
 *	Arguments: widget - *** UNUSED ***.
 *                 label_ptr - a pointer to the label widget.
 *                 value_ptr - the amount the bar has been scrolled.
 *	Returns: none
 */

/* ARGSUSED */
static void
Scrolled(widget, label_ptr, value_ptr)
Widget widget;
XtPointer label_ptr, value_ptr;
{
    int value = (int) value_ptr;
    Widget label = (Widget) label_ptr;
    char message[BUFSIZ];

    sprintf( message, " Scrolled by %d pixels", value);
    XtVaSetValues( label,
			XtNlabel, message,
			NULL);
}

/*	Function Name: Thumbed.
 *	Description: Prints the location of the thumb as a percentage of the
 *                   height of the scrollbar into the label widget provided.
 *	Arguments: widget - *** UNUSED ***.
 *                 label_ptr - a pointer to the label widget.
 *                 top_ptr - a pointer to a float containing the location of
 *                           of the scrollbar's thumb.
 *	Returns:
 */

/* ARGSUSED */
static void
Thumbed(widget, label_ptr, top_ptr)
Widget widget;
XtPointer label_ptr, top_ptr;
{
    float top = *((float *) top_ptr);
    Widget label = (Widget) label_ptr;
    char message[BUFSIZ];

    sprintf( message, " Thumbed to %d%% ", (int)(top*100) );
    XtVaSetValues( label,
		XtNlabel, message,
		NULL);
}

/*	Function Name: Finish
 *	Description: This is a timeout function that will exit the program.
 *	Arguments: client_data, id - *** UNUSED ***.
 *	Returns: exits.
 */

/* ARGSUSED */
static void
Finish(client_data, id)
XtPointer client_data;
XtIntervalId id;
{

    /*
     * I should really destroy the app_context here, but I am lazy, and
     * getting the app_context a pain.
     */
    fprintf(stderr, "Bye!\n");
    exit(0);
}

/*	Function Name: Destroyed
 *	Description: This is a Destroy callback that when called sets a
 *                   timeout function that will exit the program in 5 seconds.
 *	Arguments: widget - the widget that was just destroyed.
 *                 closure, callData - UNUSED.
 *	Returns: none.
 */

/* ARGSUSED */
static void
Destroyed(widget, closure, callData)
Widget widget;
XtPointer closure, callData;
{
    fprintf( stderr, "Everything now destroyed; setting 5 second timer.\n" );
    XtAppAddTimeOut(XtWidgetToApplicationContext(widget), 5000, (XtTimerCallbackProc)Finish, NULL);
}
