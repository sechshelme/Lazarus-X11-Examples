/* #define	Xaw3d */

#include <stdio.h>

#include <X11/StringDefs.h>
#include <X11/Intrinsic.h>
#include <X11/Core.h>
#include <X11/Object.h>
#include <X11/Shell.h>

#include <X11/Xaw/Box.h>
#include <X11/Xaw/Form.h>
#include <X11/Xaw/Label.h>
#include <X11/Xaw/Command.h>
#include <X11/Xaw/Repeater.h>
#include <X11/Xaw/Toggle.h>
#include <X11/Xaw/List.h>
#include <X11/Xaw/Scrollbar.h>
#include <X11/Xaw/Panner.h>
#include <X11/Xaw/StripChart.h>
#include <X11/Xaw/AsciiText.h>
#include <X11/Xaw/Dialog.h>
#include <X11/Xaw/Paned.h>
#include <X11/Xaw/Porthole.h>
#include <X11/Xaw/Viewport.h>
#include <X11/Xaw/Tree.h>
#include <X11/Xaw/MenuButton.h>
#include <X11/Xaw/SimpleMenu.h>
#include <X11/Xaw/Sme.h>
#include <X11/Xaw/SmeBSB.h>
#include <X11/Xaw/SmeLine.h>
#include "Radio.h"
#include "Checkbox.h"
#include "Gauge.h"
#ifdef	Xaw3d
//#include <X11/Xaw3d/Clock.h>
//#include <X11/Xaw3d/Logo.h>
//#include <X11/Xaw3d/Mailbox.h>
//#include <X11/Xaw3d/SmeThreeD.h>
#endif

	/* X11 stuff */

static	Display	*dpy ;
static	Atom	wm_protocols ;
static	Atom	wm_delete_window ;

	/* Xt stuff */

static	XtAppContext	app_ctx ;

static	Widget	topLevel ;
static	Widget	mainPanel ;		/* box widget for now */
static	Widget	demoPanel ;		/* box widget for now */
static	Widget	report ;
static	Widget	panner ;
static	Widget	porthole ;
static	Widget	portholeChild ;
static	Widget	viewport ;
static	Widget	menu ;
static	Widget	toggle, radio, checkbox ;
static	Widget	gauge, vgauge ;

static	int		reportEnable = False ;	/* see setReport() */

static String fallback[] = {
	"*background:		gray",
	"*demoPanel.width:	500",
	"*demoPanel.height:	300",
	"*sampleBox.height:	100",
	"*sampleBox.border:	black",
	NULL
};

static	u_long	black, white, red, blue ;
static	int	core_init = False ;
static	GC	coreGc ;

static	void	NewSample() ;
static	void	LabelDemo() ;
static	void	MultiLabelDemo() ;
static	void	CommandDemo() ;
static	void	RepeaterDemo() ;
static	void	ToggleDemo() ;
static	void	ListDemo() ;
static	void	ScrollbarDemo() ;
static	void	PannerDemo() ;
static	void	StripChartDemo() ;
static	void	AsciiTextDemo() ;
static	void	FormDemo() ;
static	void	DialogDemo() ;
static	void	PanedDemo() ;
static	void	PortholeDemo() ;
static	void	ViewportDemo() ;
static	void	TreeDemo() ;
static	void	MenuButtonDemo() ;
static	void	CoreDemo() ;
#ifdef	COMMENT
static	void	RadioDemo() ;
static	void	CheckboxDemo() ;
#endif	/* COMMENT */
static	void	GaugeDemo() ;
static	void	VGaugeDemo() ;
#ifdef	Xaw3d
static	void	ClockDemo() ;
static	void	LogoDemo() ;
static	void	MailboxDemo() ;
#endif

static	void	CommandCB(Widget cmd, XtPointer client, XtPointer call_data) ;
static	void	RepeaterCB(Widget cmd, XtPointer client, XtPointer call_data) ;
static	void	RepeaterStopCB(Widget, XtPointer, XtPointer) ;
static	void	ToggleCB(Widget cmd, XtPointer client, XtPointer call_data) ;
static	void	RadioCB(Widget cmd, XtPointer client, XtPointer call_data) ;
static	void	CheckboxCB(Widget cmd, XtPointer client, XtPointer call_data) ;
static	void	ListCB(Widget cmd, XtPointer client, XtPointer call_data) ;
static	void	ScrollCB(Widget cmd, XtPointer client, XtPointer call_data) ;
static	void	JumpCB(Widget cmd, XtPointer client, XtPointer call_data) ;
static	void	PannerCB(Widget cmd, XtPointer client, XtPointer call_data) ;
static	void	PortholeCB(Widget cmd, XtPointer client, XtPointer call_data) ;
static	void	StripChartCB(Widget, XtPointer, XtPointer) ;
static	void	AsciiTextCB(Widget, XtPointer, XtPointer) ;
static	void	DbutCB(Widget cmd, XtPointer client, XtPointer call_data) ;
static	void	ViewportCB(Widget vp, XtPointer client, XtPointer call_data) ;
static	void	MenuCB(Widget cmd, XtPointer client, XtPointer call_data) ;
static	void	CoreCB(Widget, XtPointer client, XEvent *, Boolean *cont) ;
static	void	GaugeCB(Widget, XtPointer, XtPointer) ;

static	void	WMProtocols(Widget, XEvent *, String *, Cardinal *) ;

	/* define global actions table for the application.  This is done
	 * to catch messages.  This could also be done through the main
	 * event loop if we wrote one.  It would be nice if Xt had a way
	 * of regestering a callback proc for specific kinds of events.
	 *
	 * By expanding this table, we could control the entire behavior
	 * of the application from the resources file.  For example, the
	 * xclipboard program defines actions such as NewClip, DeleteClip,
	 * etc., and then binds those actions to buttons in the resources
	 * database.
	 */

XtActionsRec	sampler_actions[] = {
    {"WMProtocols", WMProtocols},
} ;

main(int argc, char **argv)
{
	/* this could all be done with a single call to XtAppInitialize(),
	 * but I'm spelling it out for illustration purposes.
	 */

	XtToolkitInitialize() ;
	app_ctx = XtCreateApplicationContext() ;
	XtAppSetFallbackResources(app_ctx, fallback) ;
	dpy = XtOpenDisplay(app_ctx, NULL, "sampler", "Sampler",
		NULL, 0, &argc, argv) ;
	topLevel = XtVaAppCreateShell("sampler", "Sampler",
		applicationShellWidgetClass, dpy,
		0) ;

	XtAppAddActions(app_ctx, sampler_actions, XtNumber(sampler_actions));

	/* now create the widgets.  Most resources will come from the
	 * resource file rather than being hard-coded.
	 */

	mainPanel = XtVaCreateManagedWidget("mainPanel",
		formWidgetClass, topLevel,
		0) ;

	report = XtVaCreateManagedWidget("report", labelWidgetClass, mainPanel,
		XtNlabel, "",
		0) ;

	demoPanel = XtVaCreateManagedWidget("demoPanel",
		boxWidgetClass, mainPanel,
		0) ;

	LabelDemo() ;
	MultiLabelDemo() ;
	CommandDemo() ;
	RepeaterDemo() ;
	ToggleDemo() ;
	ListDemo() ;
	ScrollbarDemo() ;
	PannerDemo() ;
	StripChartDemo() ;
	AsciiTextDemo() ;
	FormDemo() ;
	DialogDemo() ;
	PanedDemo() ;
	PortholeDemo() ;
	ViewportDemo() ;
	TreeDemo() ;
	MenuButtonDemo() ;
	CoreDemo() ;
#ifdef	COMMENT
	RadioDemo() ;
	CheckboxDemo() ;
	XtVaSetValues(radio, XtNradioGroup, toggle, 0) ;
#endif	/* COMMENT */
	GaugeDemo() ;
	VGaugeDemo() ;
#ifdef	Xaw3d
	ClockDemo() ;
	LogoDemo() ;
	MailboxDemo() ;
#endif

	/* connect panner & porthole */
	if( panner != NULL && porthole != NULL )
	{
	  XtAddCallback(panner, XtNreportCallback,
		  PannerCB, (XtPointer)porthole) ;
	  XtAddCallback(porthole, XtNreportCallback,
		  PortholeCB, (XtPointer)panner) ;
	}

	XtRealizeWidget(topLevel) ;

	/* tell window system we're willing to handle window-delete messages */
	wm_protocols = XInternAtom(dpy, "WM_PROTOCOLS", False);
	wm_delete_window = XInternAtom(dpy, "WM_DELETE_WINDOW", False);
	(void) XSetWMProtocols(dpy, XtWindow(topLevel), &wm_delete_window,1);

	reportEnable = True ;		/* see setReport(), below */

	XtAppMainLoop(app_ctx) ;



	exit(0) ;
}





	/* Gotcha: changing the label of the "report" widget will change
	 * its size, which we don't want.  Work around this by disabling
	 * changes to this item until after widgets are realized, at
	 * which time the report's parent widget will lock down the size.
	 */

static	void
setReport(String str)
{
	if( reportEnable )
	  XtVaSetValues(report, XtNlabel, str, 0) ;
}

static	void
LabelDemo()
{
	Widget	lbl ;
	Widget	box ;

	box = XtCreateManagedWidget("sampleBox",
		boxWidgetClass, demoPanel,
		NULL,0) ;

	lbl = XtCreateManagedWidget("labelLbl", labelWidgetClass, box, NULL,0) ;
}

static	void
MultiLabelDemo()
{
	Widget	lbl ;
	Widget	box ;

	box = XtCreateManagedWidget("sampleBox",
		boxWidgetClass, demoPanel,
		NULL,0) ;

	lbl = XtCreateManagedWidget("multiLbl", labelWidgetClass, box, NULL,0) ;
}


static	void
CommandDemo()
{
	Widget	lbl ;
	Widget	cmd ;
	Widget	box ;

	box = XtCreateManagedWidget("sampleBox",
		boxWidgetClass, demoPanel,
		NULL, 0) ;

	lbl = XtCreateManagedWidget("commandLbl", labelWidgetClass, box,
		NULL,0) ;
	cmd = XtCreateManagedWidget("commandDemo", commandWidgetClass, box,
		NULL, 0) ;
	XtAddCallback(cmd, XtNcallback, CommandCB, NULL) ;
}


static	void
RepeaterDemo()
{
	Widget	lbl ;
	Widget	rep ;
	Widget	box ;

	box = XtCreateManagedWidget("sampleBox",
		boxWidgetClass, demoPanel,
		NULL,0) ;

	lbl = XtCreateManagedWidget("repeaterLbl", labelWidgetClass, box,
		NULL, 0) ;
	rep = XtCreateManagedWidget("repeaterDemo", repeaterWidgetClass, box,
		NULL, 0) ;
	XtAddCallback(rep, XtNstartCallback, RepeaterCB, NULL) ;
	XtAddCallback(rep, XtNcallback, RepeaterCB, NULL) ;
	XtAddCallback(rep, XtNstopCallback, RepeaterStopCB, NULL) ;
}


static	void
ToggleDemo()
{
	Widget	lbl ;
	Widget	box ;

	box = XtCreateManagedWidget("sampleBox",
		boxWidgetClass, demoPanel,
		NULL,0) ;

	lbl = XtCreateManagedWidget("toggleLbl", labelWidgetClass, box,
		NULL, 0) ;
	toggle = XtCreateManagedWidget("toggleDemo", toggleWidgetClass, box,
		NULL, 0) ;
	XtAddCallback(toggle, XtNcallback, ToggleCB, NULL) ;
}


static	void
ListDemo()
{
	Widget	lbl ;
	Widget	list ;
	Widget	box ;
static	String	items[] = {"Fee","Fie","Foe","Fum",NULL} ;

	box = XtCreateManagedWidget("sampleBox",
		boxWidgetClass, demoPanel,
		NULL,0) ;

	lbl = XtCreateManagedWidget("listLbl", labelWidgetClass, box,
		NULL, 0) ;
	list = XtVaCreateManagedWidget("listDemo", listWidgetClass, box,
		XtNlist, items,
		0) ;
	XtAddCallback(list, XtNcallback, ListCB, NULL) ;
}


static	void
ScrollbarDemo()
{
	Widget	lbl ;
	Widget	sb ;
	Widget	box ;

	box = XtCreateManagedWidget("sampleBox",
		boxWidgetClass, demoPanel,
		NULL,0) ;

	lbl = XtCreateManagedWidget("scrollbarLbl", labelWidgetClass, box,
		NULL, 0) ;
	sb = XtCreateManagedWidget("scrollbarDemo", scrollbarWidgetClass, box,
		NULL,0) ;
	XtAddCallback(sb, XtNscrollProc, ScrollCB, NULL) ;
	XtAddCallback(sb, XtNjumpProc, JumpCB, NULL) ;
}


static	void
PannerDemo()
{
	Widget	lbl ;
	Widget	box ;

	box = XtCreateManagedWidget("sampleBox",
		boxWidgetClass, demoPanel,
		NULL,0) ;

	lbl = XtCreateManagedWidget("pannerLbl", labelWidgetClass, box,
		NULL, 0) ;
	panner = XtCreateManagedWidget("pannerDemo", pannerWidgetClass, box,
		NULL,0) ;
}


static	void
StripChartDemo()
{
	Widget	lbl ;
	Widget	strip ;
	Widget	box ;

	box = XtCreateManagedWidget("sampleBox",
		boxWidgetClass, demoPanel,
		NULL,0) ;

	lbl = XtCreateManagedWidget("stripChartLbl", labelWidgetClass, box,
		NULL, 0) ;
	strip = XtVaCreateManagedWidget("stripChartDemo",
		stripChartWidgetClass, box,
		0) ;
	XtAddCallback(strip, XtNgetValue, StripChartCB, NULL) ;
}


static	void
AsciiTextDemo()
{
	Widget	lbl ;
	Widget	text ;
	Widget	box ;
static	char	buffer[80] ;

	box = XtCreateManagedWidget("sampleBox",
		boxWidgetClass, demoPanel,
		NULL,0) ;

	lbl = XtCreateManagedWidget("asciiTextLbl", labelWidgetClass, box,
		NULL, 0) ;
	text = XtVaCreateManagedWidget("asciiTextDemo",
		asciiTextWidgetClass, box,
#ifdef	COMMENT
		XtNuseStringInPlace, True,
#endif	/* COMMENT */
		XtNtype, XawAsciiString,
		XtNlength, sizeof(buffer),
#ifdef	COMMENT
		XtNstring, buffer,
#endif	/* COMMENT */
		XtNeditType, XawtextEdit,
		0) ;
#ifdef	COMMENT
	XtAddCallback(text, XtNgetValue, AsciiTextCB, NULL) ;
#endif	/* COMMENT */
}


static	void
FormDemo()
{
	Widget	form ;
	Widget	lbl ;
	Widget	a,b,c ;
static	char	buffer[80] ;

	form = XtVaCreateManagedWidget("sampleForm",
		formWidgetClass, demoPanel,
		0) ;

	lbl = XtCreateManagedWidget("formLbl", labelWidgetClass, form,
		NULL, 0) ;
	a = XtCreateManagedWidget("formLblA", labelWidgetClass, form,
		NULL, 0) ;
	b = XtCreateManagedWidget("formLblB", labelWidgetClass, form,
		NULL, 0) ;
	c = XtCreateManagedWidget("formLblC", labelWidgetClass, form,
		NULL, 0) ;
}


static	void
DialogDemo()
{
	Widget	dialog ;

	dialog = XtVaCreateManagedWidget("sampleDialog",
		dialogWidgetClass, demoPanel,
		0) ;

	XawDialogAddButton(dialog, "dbut1", DbutCB, (XtPointer)1) ;
	XawDialogAddButton(dialog, "dbut2", DbutCB, (XtPointer)2) ;
}


static	void
PanedDemo()
{
	Widget	lbl ;
	Widget	box ;

	Widget	paned ;
	Widget	a,b,c ;

	box = XtCreateManagedWidget("sampleBox",
		boxWidgetClass, demoPanel,
		NULL,0) ;

	lbl = XtCreateManagedWidget("panedLbl", labelWidgetClass, box,
		NULL, 0) ;

	paned = XtVaCreateManagedWidget("samplePane",
		panedWidgetClass, box,
		0) ;
	a = XtCreateManagedWidget("labelA", labelWidgetClass, paned,
		NULL, 0) ;
	b = XtCreateManagedWidget("labelB", labelWidgetClass, paned,
		NULL, 0) ;
	c = XtCreateManagedWidget("labelC", labelWidgetClass, paned,
		NULL, 0) ;
}


static	void
PortholeDemo()
{
	Widget	box ;
	Widget	lbl ;

	box = XtCreateManagedWidget("sampleBox",
		boxWidgetClass, demoPanel,
		NULL,0) ;

	lbl = XtCreateManagedWidget("portholeLbl", labelWidgetClass, box,
		NULL, 0) ;

	porthole = XtVaCreateManagedWidget("samplePorthole",
		portholeWidgetClass, box,
		0) ;

	portholeChild = XtVaCreateManagedWidget("portholeChild",
		boxWidgetClass, porthole,
		0) ;
	(void) XtCreateManagedWidget("messageA", labelWidgetClass, portholeChild,
		NULL, 0) ;
	(void) XtCreateManagedWidget("messageB", labelWidgetClass, portholeChild,
		NULL, 0) ;
	(void) XtCreateManagedWidget("messageC", labelWidgetClass, portholeChild,
		NULL, 0) ;
}


static	void
ViewportDemo()
{
	Widget	box ;
	Widget	lbl ;
	Widget	child ;

	box = XtCreateManagedWidget("sampleBox",
		boxWidgetClass, demoPanel,
		NULL,0) ;

	lbl = XtCreateManagedWidget("viewportLbl", labelWidgetClass, box,
		NULL, 0) ;

	viewport = XtVaCreateManagedWidget("sampleViewport",
		viewportWidgetClass, box,
		0) ;

	child = XtVaCreateManagedWidget("viewportChild",
			boxWidgetClass, viewport, 0) ;
	(void) XtCreateManagedWidget("messageA", labelWidgetClass, child,
		NULL, 0) ;
	(void) XtCreateManagedWidget("messageB", labelWidgetClass, child,
		NULL, 0) ;
	(void) XtCreateManagedWidget("messageC", labelWidgetClass, child,
		NULL, 0) ;
	XtAddCallback(viewport, XtNreportCallback, ViewportCB, NULL) ;
}


static	void
TreeDemo()
{
	Widget	box ;
	Widget	tree ;
	Widget	lbl ;
	Widget	a,b,c,d ;
static	char	buffer[80] ;

	box = XtCreateManagedWidget("sampleBox",
		boxWidgetClass, demoPanel,
		NULL,0) ;

	lbl = XtCreateManagedWidget("treeLbl", labelWidgetClass, box,
		NULL, 0) ;

	tree = XtVaCreateManagedWidget("sampleTree",
		treeWidgetClass, box,
		0) ;

	a = XtVaCreateManagedWidget("labelA", labelWidgetClass, tree,
		0) ;
	b = XtVaCreateManagedWidget("labelB", labelWidgetClass, tree,
		XtNtreeParent, a,
		0) ;
	c = XtVaCreateManagedWidget("labelC", labelWidgetClass, tree,
		XtNtreeParent, a,
		0) ;
	d = XtVaCreateManagedWidget("labelD", labelWidgetClass, tree,
		XtNtreeParent, c,
		0) ;
}


static	void
MenuButtonDemo()
{
	Widget	box ;
	Widget	lbl ;
	Widget	menuButton ;
	Widget	menu ;
	Widget	m1,m2,m3,m4 ;

	box = XtCreateManagedWidget("sampleBox",
		boxWidgetClass, demoPanel,
		NULL, 0) ;

	lbl = XtCreateManagedWidget("menuButtonLbl", labelWidgetClass,
		box, NULL,0) ;
	menu = XtCreatePopupShell("menuDemo", simpleMenuWidgetClass,
		box, NULL, 0) ;
	m1 = XtCreateManagedWidget("menuItem1", smeBSBObjectClass, menu,
		NULL, 0) ;
	m2 = XtCreateManagedWidget("menuItem2", smeBSBObjectClass, menu,
		NULL, 0) ;
	(void) XtCreateManagedWidget("menuLine", smeLineObjectClass, menu,
		NULL, 0) ;
	m3 = XtCreateManagedWidget("menuItem3", smeBSBObjectClass, menu,
		NULL, 0) ;
	(void) XtCreateManagedWidget("menuBlank", smeObjectClass, menu,
		NULL, 0) ;
	m4 = XtCreateManagedWidget("menuItem4", smeBSBObjectClass, menu,
		NULL, 0) ;

	menuButton = XtCreateManagedWidget("menuButtonDemo",
		menuButtonWidgetClass, box, NULL, 0) ;


	XtAddCallback(m1, XtNcallback, MenuCB, NULL) ;
	XtAddCallback(m2, XtNcallback, MenuCB, NULL) ;
	XtAddCallback(m3, XtNcallback, MenuCB, NULL) ;
	XtAddCallback(m4, XtNcallback, MenuCB, NULL) ;
}


static	void
CoreDemo()
{

}


#ifdef	COMMENT
static	void
RadioDemo()
{
	Widget	lbl ;
	Widget	box ;

	box = XtCreateManagedWidget("sampleBox",
		boxWidgetClass, demoPanel,
		NULL,0) ;

	lbl = XtCreateManagedWidget("radioLbl", labelWidgetClass, box,
		NULL, 0) ;
	radio = XtCreateManagedWidget("radioDemo", radioWidgetClass, box,
		NULL, 0) ;
	XtAddCallback(radio, XtNcallback, RadioCB, NULL) ;
}


static	void
CheckboxDemo()
{
	Widget	lbl ;
	Widget	box ;

	box = XtCreateManagedWidget("sampleBox",
		boxWidgetClass, demoPanel,
		NULL,0) ;

	lbl = XtCreateManagedWidget("checkboxLbl", labelWidgetClass, box,
		NULL, 0) ;
	checkbox = XtCreateManagedWidget("checkboxDemo",
		checkboxWidgetClass, box, NULL, 0) ;
	XtAddCallback(checkbox, XtNcallback, CheckboxCB, NULL) ;
}
#endif	/* COMMENT */


static	void
GaugeDemo()
{
	Widget	lbl ;
	Widget	box ;

	box = XtCreateManagedWidget("sampleBox",
		boxWidgetClass, demoPanel,
		NULL,0) ;

	lbl = XtCreateManagedWidget("gaugeLbl", labelWidgetClass, box,
		NULL,0) ;
//	gauge = XtCreateManagedWidget("gaugeDemo", gaugeWidgetClass, box,		NULL, 0) ;
}


static	void
VGaugeDemo()
{
	Widget	lbl ;
	Widget	box ;
static	String	lbls[] = {"E","half","F"} ;

	box = XtCreateManagedWidget("sampleBox",
		boxWidgetClass, demoPanel,
		NULL,0) ;

	lbl = XtCreateManagedWidget("vgaugeLbl", labelWidgetClass, box,
		NULL,0) ;
//	vgauge = XtVaCreateManagedWidget("vgaugeDemo", gaugeWidgetClass, box,		XtNlabels, lbls, XtNnlabels, 3,		0) ;
//	XtAddCallback(vgauge, XtNgetValue, GaugeCB, NULL) ;
}




#ifdef	Xaw3d


static	void
ClockDemo()
{
	Widget	lbl ;
	Widget	clock ;
	Widget	box ;

	box = XtCreateManagedWidget("sampleBox",
		boxWidgetClass, demoPanel,
		NULL,0) ;

	lbl = XtCreateManagedWidget("clockLbl", labelWidgetClass, box,
		NULL, 0) ;
	clock = XtCreateManagedWidget("clockDemo", clockWidgetClass, box,
		NULL, 0) ;
}


static	void
LogoDemo()
{
	Widget	lbl ;
	Widget	logo ;
	Widget	box ;

	box = XtCreateManagedWidget("sampleBox",
		boxWidgetClass, demoPanel,
		NULL,0) ;

	lbl = XtCreateManagedWidget("logoLbl", labelWidgetClass, box,
		NULL, 0) ;
	logo = XtCreateManagedWidget("logoDemo", logoWidgetClass, box,
		NULL, 0) ;
}


static	void
MailboxDemo()
{
	Widget	lbl ;
	Widget	mailbox ;
	Widget	box ;

	box = XtCreateManagedWidget("sampleBox",
		boxWidgetClass, demoPanel,
		NULL,0) ;

	lbl = XtCreateManagedWidget("mailboxLbl", labelWidgetClass, box,
		NULL, 0) ;
	mailbox = XtCreateManagedWidget("mailboxDemo", mailboxWidgetClass, box,
		NULL, 0) ;
}
#endif





static	void
CommandCB(Widget cmd, XtPointer client, XtPointer call_data)
{
	setReport("Command button pressed") ;
//	if( vgauge != NULL )	  XawGaugeSetValue(vgauge, 110) ;
}


static	void
RepeaterCB(Widget rep, XtPointer client, XtPointer call_data)
{
static	int	count = 0 ;
static	char	line[128] ;

	++count ;
	sprintf(line, "Repeater called %d times", count) ;
	setReport(line) ;
//	XawGaugeSetValue(gauge, count) ;
//	XawGaugeSetValue(vgauge, count) ;
}


static	void
RepeaterStopCB(Widget rep, XtPointer client, XtPointer call_data)
{
	setReport("Repeater released") ;
}


static	void
ToggleCB(Widget tog, XtPointer client, XtPointer call_data)
{
static	char	line[128] ;
	sprintf(line, "Toggle state %d", (int)call_data) ;
	setReport(line) ;
}


static	void
ListCB(Widget list, XtPointer client, XtPointer call_data)
{
	XawListReturnStruct *lret = (XawListReturnStruct *)call_data ;
static	char	line[128] ;

	sprintf(line, "List returns item %d: \"%s\"",
		lret->list_index, lret->string) ;
	setReport(line) ;
}


static	float	scrollValue ;


	/* called when user selects scroll up or scroll down */

static	void
ScrollCB(Widget sb, XtPointer client, XtPointer posn)
{
	int	newPos = (int)posn ;
	float	size ;
	float	a,b ;
static	char	line[128] ;

	sprintf(line, "Scroll, pointer = %d", newPos) ;
	setReport(line) ;

	XtVaGetValues(sb, XtNshown, &size, XtNtopOfThumb, &scrollValue, 0) ;
	scrollValue += newPos < 0 ? -.1 : .1 ;
	a = scrollValue ; b = 0. ;
	XawScrollbarSetThumb(sb, (float)a, (float)b) ;
}


	/* called when user drags slider */

static	void
JumpCB(Widget sb, XtPointer client, XtPointer posn)
{
static	char	line[128] ;

	scrollValue = *(float *)posn ;
	sprintf(line, "Jump to %.2f", scrollValue) ;
	setReport(line) ;
//	XawGaugeSetValue(gauge, (Cardinal) (scrollValue*110)) ;
}


static	void
PannerCB(Widget pan, XtPointer client, XtPointer call_data)
{
static	char	line[128] ;
	XawPannerReport	*rpt = (XawPannerReport *)call_data ;

	sprintf(line, "Pan to %d,%d\n", rpt->slider_x, rpt->slider_y) ;
	setReport(line) ;

	/* adjust porthole */
	XtVaSetValues(portholeChild,
		XtNx,-rpt->slider_x,
		XtNy,-rpt->slider_y,
		0) ;
}


static	void
PortholeCB(Widget ph, XtPointer client, XtPointer call_data)
{
	XawPannerReport	*rpt = (XawPannerReport *)call_data ;
	Widget		panner = (Widget) client ;
	Arg		args[10] ;
	Cardinal	n = 0 ;

	XtSetArg(args[n], XtNsliderX, rpt->slider_x); ++n ;
	XtSetArg(args[n], XtNsliderY, rpt->slider_y); ++n ;
	if( rpt->changed &
	  (XawPRSliderWidth|XawPRSliderHeight|XawPRCanvasWidth|XawPRCanvasHeight) )
	{
	  XtSetArg(args[n], XtNsliderWidth, rpt->slider_width); ++n ;
	  XtSetArg(args[n], XtNsliderHeight, rpt->slider_height); ++n ;
	  XtSetArg(args[n], XtNcanvasWidth, rpt->canvas_width); ++n ;
	  XtSetArg(args[n], XtNcanvasHeight, rpt->canvas_height); ++n ;
	}
	XtSetValues(panner, args, n) ;

	scrollValue = rpt->slider_x ;
}


static	void
ViewportCB(Widget vp, XtPointer client, XtPointer call_data)
{
static	char	line[128] ;
	XawPannerReport	*rpt = (XawPannerReport *)call_data ;

	sprintf(line, "Scroll to %d,%d", rpt->slider_x, rpt->slider_y) ;
	setReport(line) ;
	scrollValue = rpt->slider_x ;
}


static	void
StripChartCB(Widget strip, XtPointer client, XtPointer rval)
{
	*(double *)rval = 10.*scrollValue ;
}


static	void
GaugeCB(Widget strip, XtPointer client, XtPointer rval)
{
	*(Cardinal *)rval = 100*scrollValue ;
}


static	void
AsciiTextCB(Widget strip, XtPointer client, XtPointer rval)
{
}


static	void
DbutCB(Widget cmd, XtPointer client, XtPointer call_data)
{
static	char	line[128] ;

	sprintf(line, "Dialog button %x pressed", client) ;
	setReport(line) ;
}


static	void
MenuCB(Widget m, XtPointer client, XtPointer call_data)
{
static	char	line[128] ;
	char	*lbl ;

	XtVaGetValues(m, XtNlabel, &lbl, 0) ;
	sprintf(line, "menu %s selected", lbl) ;
	setReport(line) ;
}


static	void
CoreCB(Widget core, XtPointer client, XEvent *event, Boolean *cont)
{
	Display	*dpy = XtDisplay(core) ;
	Window	win = XtWindow(core) ;
	Colormap cmap ;
	XColor	r,b, dummy ;

	if( !core_init )
	{
	  XtVaGetValues(core, XtNcolormap, &cmap, 0) ;
	  coreGc = XCreateGC(dpy, win, 0, NULL) ;

	  XAllocNamedColor(dpy, cmap, "red", &r, &dummy) ; red = r.pixel ;
	  XAllocNamedColor(dpy, cmap, "blue", &b, &dummy) ; blue = b.pixel ;
	  core_init = True ;
	}

	XSetForeground(dpy, coreGc, blue) ;
	XDrawLine(dpy, win, coreGc, 10,10, 40,10) ;
	XDrawLine(dpy, win, coreGc, 10,10, 10,40) ;
	XSetForeground(dpy, coreGc, red) ;
	XDrawLine(dpy, win, coreGc, 40,10, 10,40) ;
}


static	void
RadioCB(Widget radio, XtPointer client, XtPointer call_data)
{
static	char	line[128] ;
	sprintf(line, "Radio state %d", (int)call_data) ;
	setReport(line) ;
}


static	void
CheckboxCB(Widget cbox, XtPointer client, XtPointer call_data)
{
static	char	line[128] ;
	sprintf(line, "Checkbox state %d", (int)call_data) ;
	setReport(line) ;
}



static	void
WMProtocols(w, ev, params, nparams)
	Widget	w ;
	XEvent	*ev ;
	String	*params ;
	Cardinal *nparams ;
{
	if( ev->type == ClientMessage  &&
	    ev->xclient.message_type == wm_protocols  &&
	    ev->xclient.data.l[0] == wm_delete_window )
	{
	  if( w == topLevel )
	    exit(0) ;
	}
}





	/* temporary due to rectangle fill bug */

XFillRectangle(dpy,win,gc, x,y,w,h)
	Display	*dpy ;
	Window	win ;
	GC	gc ;
	int	x,y ;
	unsigned w,h ;
{
	XPoint	pts[4] ;
	pts[0].x = x ;		pts[0].y = y ;
	pts[1].x = x + w ;	pts[1].y = y ;
	pts[2].x = x + w ;	pts[2].y = y + h ;
	pts[3].x = x ;		pts[3].y = y + h ;
	XFillPolygon(dpy,win,gc, pts,4, Complex, CoordModeOrigin);
}
