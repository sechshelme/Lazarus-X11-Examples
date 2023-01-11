/* $Id: Gauge.c,v 1.2 1997/10/06 16:10:22 falk Exp $
 *
 * Gauge.c - Gauge widget
 */

/*
 * Gauge.c - Gauge widget
 *
 * Author: Edward A. Falk
 *         falk@falconer.vip.best.com
 *  
 * Date:   July 9, 1997
 *
 * Note: for fun and demonstration purposes, I have added selection
 * capabilities to this widget.  If you select the widget, you create
 * a primary selection containing the current value of the widget in
 * both integer and string form.  If you copy into the widget, the
 * primary selection is converted to an integer value and the gauge is
 * set to that value.
 *
 * $Log: Gauge.c,v $
 * Revision 1.2  1997/10/06 16:10:22  falk
 * renamed v0,v1 => minValue, maxValue
 *
 * Revision 1.1  1997/08/27 06:40:44  falk
 * Initial revision
 *
 */

/* TODO:  display time instead of value
 */

#define	DEF_LEN	50	/* default width (or height for vertical gauge) */
#define	MIN_LEN	10	/* minimum reasonable width (height) */
#define	TIC_LEN	6	/* length of tic marks */
#define	GA_WID	3	/* width of gauge */
#define	MS_PER_SEC 1000

#include <X11/IntrinsicP.h>
#include <X11/Xatom.h>
#include <X11/StringDefs.h>
#include <X11/Xaw/XawInit.h>
#include <X11/Xmu/Misc.h>
#include "GaugeP.h"

#include <X11/Xmu/Atoms.h>
#include <X11/Xmu/Converters.h>
#include <X11/Xmu/Drawing.h>

#include <stdio.h>
#include <ctype.h>



/****************************************************************
 *
 * Gauge resources
 *
 ****************************************************************/


static	char	defaultTranslations[] =
	"<Btn1Up>:	select()\n\
	 <Key>F1:	select(CLIPBOARD)\n\
	 <Btn2Up>:	paste()\n\
	 <Key>F2:	paste(CLIPBOARD)" ;



#define offset(field) XtOffsetOf(GaugeRec, field)
static XtResource resources[] = {
    {XtNvalue, XtCValue, XtRInt, sizeof(int),
	offset(gauge.value), XtRImmediate, (XtPointer)0},
    {XtNminValue, XtCMinValue, XtRInt, sizeof(int),
	offset(gauge.v0), XtRImmediate, (XtPointer)0},
    {XtNmaxValue, XtCMaxValue, XtRInt, sizeof(int),
	offset(gauge.v1), XtRImmediate, (XtPointer)100},
    {XtNntics, XtCNTics, XtRInt, sizeof(int),
	offset(gauge.ntics), XtRImmediate, (XtPointer) 0},
    {XtNnlabels, XtCNLabels, XtRInt, sizeof(int),
	offset(gauge.nlabels), XtRImmediate, (XtPointer) 0},
    {XtNlabels, XtCLabels, XtRStringArray, sizeof(String *),
	offset(gauge.labels), XtRStringArray, NULL},
    {XtNautoScaleUp, XtCAutoScaleUp, XtRBoolean, sizeof(Boolean),
	offset(gauge.autoScaleUp), XtRImmediate, FALSE},
    {XtNautoScaleDown, XtCAutoScaleDown, XtRBoolean, sizeof(Boolean),
	offset(gauge.autoScaleDown), XtRImmediate, FALSE},
    {XtNorientation, XtCOrientation, XtROrientation, sizeof(XtOrientation),
	offset(gauge.orientation), XtRImmediate, (XtPointer)XtorientHorizontal},
    {XtNupdate, XtCInterval, XtRInt, sizeof(int),
	offset(gauge.update), XtRImmediate, (XtPointer)0},
    {XtNgetValue, XtCCallback, XtRCallback, sizeof(XtPointer),
	offset(gauge.getValue), XtRImmediate, (XtPointer)NULL},
};
#undef offset



	/* member functions */

static	void	GaugeClassInit(), GaugeInit() ;
static	void	GaugeResize(), GaugeExpose(), GaugeDestroy() ;
static	Boolean	GaugeSetValues() ;
static	XtGeometryResult	GaugeQueryGeometry() ;

	/* action procs */

static	void	GaugeSelect() ;
static	void	GaugePaste() ;

	/* internal privates */

static	void	GaugeSize() ;	/* return preferred gauge size */
static	void	AutoScale() ;	/* re compute v0,v1 */
static	void	MaxLabel() ;	/* find max label size */
static	void	EnableUpdate(), DisableUpdate() ;
static	void	GaugeGetValue() ;
static	void	GaugeMercury() ;

static	Boolean	GaugeConvert() ;
static	void	GaugeLoseSel() ;
static	void	GaugeDoneSel() ;
static	void	GaugeGetSelCB() ;

static	GC	Get_GC() ;


static	XtActionsRec	actionsList[] =
{
  {"select",	GaugeSelect},
  {"paste",	GaugePaste},
} ;



/****************************************************************
 *
 * Full class record constant
 *
 ****************************************************************/

GaugeClassRec gaugeClassRec = {
  {
/* core_class fields */	
    /* superclass	  	*/	(WidgetClass) &labelClassRec,
    /* class_name	  	*/	"Gauge",
    /* widget_size	  	*/	sizeof(GaugeRec),
    /* class_initialize   	*/	GaugeClassInit,
    /* class_part_initialize	*/	NULL,
    /* class_inited       	*/	FALSE,
    /* initialize	  	*/	GaugeInit,
    /* initialize_hook		*/	NULL,
    /* realize		  	*/	XtInheritRealize,	/* TODO? */
    /* actions		  	*/	actionsList,
    /* num_actions	  	*/	XtNumber(actionsList),
    /* resources	  	*/	resources,
    /* num_resources	  	*/	XtNumber(resources),
    /* xrm_class	  	*/	NULLQUARK,
    /* compress_motion	  	*/	TRUE,
    /* compress_exposure  	*/	TRUE,
    /* compress_enterleave	*/	TRUE,
    /* visible_interest	  	*/	FALSE,
    /* destroy		  	*/	GaugeDestroy,
    /* resize		  	*/	GaugeResize,
    /* expose		  	*/	GaugeExpose,
    /* set_values	  	*/	GaugeSetValues,
    /* set_values_hook		*/	NULL,
    /* set_values_almost	*/	XtInheritSetValuesAlmost,
    /* get_values_hook		*/	NULL,
    /* accept_focus	 	*/	NULL,
    /* version			*/	XtVersion,
    /* callback_private   	*/	NULL,
    /* tm_table		   	*/	defaultTranslations,
    /* query_geometry		*/	GaugeQueryGeometry,
    /* display_accelerator	*/	XtInheritDisplayAccelerator,
    /* extension		*/	NULL
  },
/* Simple class fields initialization */
  {
    /* change_sensitive		*/	XtInheritChangeSensitive
  },
#ifdef	_ThreeDP_h
/* ThreeD class fields initialization */
  {
    XtInheritXaw3dShadowDraw	/* shadowdraw 		*/
  },
#endif
/* Label class fields initialization */
  {
    /* ignore 			*/	0
  },
/* Gauge class fields initialization */
  {
    /* extension		*/	NULL
  },
};

WidgetClass gaugeWidgetClass = (WidgetClass)&gaugeClassRec;




/****************************************************************
 *
 * Member Procedures
 *
 ****************************************************************/

static void
GaugeClassInit()
{
    XawInitializeWidgetSet();
    XtAddConverter(XtRString, XtROrientation, XmuCvtStringToOrientation,
    		NULL, 0) ;
}



/* ARGSUSED */
static void
GaugeInit(request, new, args, num_args)
    Widget request, new;
    ArgList args;
    Cardinal *num_args;
{
    GaugeWidget gw = (GaugeWidget) new;

    if( gw->gauge.v0 == 0  &&  gw->gauge.v1 == 0 ) {
      gw->gauge.autoScaleUp = gw->gauge.autoScaleDown = TRUE ;
      AutoScale(gw) ;
    }

    /* If size not explicitly set, set it to our preferred size now.  */

    if( request->core.width == 0  ||  request->core.height == 0 )
    {
      Dimension w,h ;
      GaugeSize(gw, &w,&h, DEF_LEN) ;
      if( request->core.width == 0 )
	new->core.width = w ;
      if( request->core.height == 0 )
	new->core.height = h ;
      gw->core.widget_class->core_class.resize(new) ;
    }

    gw->gauge.selected = None ;
    gw->gauge.selstr = NULL ;

    if( gw->gauge.update > 0 )
      EnableUpdate(gw) ;

    gw->gauge.inverse_GC = Get_GC(gw, gw->core.background_pixel) ;
}

static void
GaugeDestroy(w)
    Widget w;
{
	GaugeWidget gw = (GaugeWidget)w;

	if( gw->gauge.selstr != NULL )
	  XtFree(gw->gauge.selstr) ;

	if( gw->gauge.selected != None )
	  XtDisownSelection(w, gw->gauge.selected, CurrentTime) ;

	XtReleaseGC(w, gw->gauge.inverse_GC) ;

	if( gw->gauge.update > 0 )
	  DisableUpdate(gw) ;
}


/* React to size change from manager.  Label widget will compute some
 * internal stuff, but we need to override.
 */

static void
GaugeResize(w)
    Widget w;
{
	GaugeWidget gw = (GaugeWidget)w;
	Position dx, dy;
	int	size ;		/* height (width) of gauge */
	int	vmargin ;	/* vertical (horizontal) margin */
	int	hmargin ;	/* horizontal (vertical) margin */
	XFontStruct *font = gw->label.font ;

	vmargin = gw->gauge.orientation == XtorientHorizontal ?
	  gw->label.internal_height : gw->label.internal_width ;
	hmargin = gw->gauge.orientation == XtorientHorizontal ?
	  gw->label.internal_width : gw->label.internal_height ;

	/* TODO: need to call parent resize proc?  I don't think so since
	 * we're recomputing everything from scratch anyway.
	 */

	/* find total height (width) of contents */

	size = GA_WID+2 ;			/* gauge itself + edges */

	if( gw->gauge.ntics > 1 )		/* tic marks */
	  size += vmargin + TIC_LEN ;

	if( gw->gauge.nlabels > 1 )
	{
	  Dimension	lwm, lw0, lw1 ;	/* width of max, left, right labels */
	  Dimension	lh ;

	  MaxLabel(gw,&lwm,&lh, &lw0,&lw1) ;

	  if( gw->gauge.orientation == XtorientHorizontal )
	  {
	    gw->gauge.margin0 = lw0 / 2 ;
	    gw->gauge.margin1 = lw1 / 2 ;
	    size += lh + vmargin ;
	  }
	  else
	  {
	    gw->gauge.margin0 = 
	    gw->gauge.margin1 = lh / 2 ;
	    size += lwm + vmargin ;
	  }
	}
	else
	  gw->gauge.margin0 = gw->gauge.margin1 = 0 ;

	gw->gauge.margin0 += hmargin ;
	gw->gauge.margin1 += hmargin ;

	/* Now distribute height (width) over components */

	if( gw->gauge.orientation == XtorientHorizontal )
	  gw->gauge.gmargin = (gw->core.height-size)/2 ;
	else
	  gw->gauge.gmargin = (gw->core.width-size)/2 ;

	gw->gauge.tmargin = gw->gauge.gmargin + GA_WID+2 + vmargin ;
	if( gw->gauge.ntics > 1 )
	  gw->gauge.lmargin = gw->gauge.tmargin + TIC_LEN + vmargin ;
	else
	  gw->gauge.lmargin = gw->gauge.tmargin ;
}

/*
 * Repaint the widget window
 */

/* ARGSUSED */
static void
GaugeExpose(w, event, region)
    Widget w;
    XEvent *event;
    Region region;
{
	GaugeWidget gw = (GaugeWidget) w;
	GaugeWidgetClass gwclass = (GaugeWidgetClass) XtClass (gw);
register Display *dpy = XtDisplay(w) ;
register Window	win = XtWindow(w) ;
	GC	gc, bgc;	/* foreground, background */
	GC	gctop, gcbot ;	/* dark, light shadows */
	int	len ;		/* length (width or height) of widget */
	int	hgt ;		/* height (width) of widget */
	int	e0,e1 ;		/* ends of the gauge */
	int	x ;
	int	y ;		/* vertical (horizontal) position */
	int	i ;
	int	v0 = gw->gauge.v0 ;
	int	v1 = gw->gauge.v1 ;
	int	value = gw->gauge.value ;

	gc = XtIsSensitive(w) ? gw->label.normal_GC : gw->label.gray_GC ;


#ifdef	_ThreeDP_h
	gctop = gw->threeD.bot_shadow_GC ;
	gcbot = gw->threeD.top_shadow_GC ;
#else
	gctop = gcbot = gc ;
#endif

	if( gw->gauge.orientation == XtorientHorizontal ) {
	  len = gw->core.width ;
	  hgt = gw->core.height ;
	} else {
	  len = gw->core.height ;
	  hgt = gw->core.width ;
	}

	/* if the gauge is selected, signify by drawing the background
	 * in a constrasting color.
	 */

	if( gw->gauge.selected )
	{
	  XFillRectangle(dpy,win, gc, 0,0, w->core.width,w->core.height) ;
	  gc = gw->gauge.inverse_GC ;
	}

	e0 = gw->gauge.margin0 ;		/* left (top) end */
	e1 = len - gw->gauge.margin1 -1 ;	/* right (bottom) end */

	/* Draw the Gauge itself */

	y = gw->gauge.gmargin ;

	if( gw->gauge.orientation == XtorientHorizontal )	/* horizontal */
	{
	  XDrawLine(dpy,win,gctop, e0+1,y, e1-1,y) ;
	  XDrawLine(dpy,win,gctop, e0,y+1, e0,y+GA_WID) ;
	  XDrawLine(dpy,win,gcbot, e0+1, y+GA_WID+1, e1-1, y+GA_WID+1) ;
	  XDrawLine(dpy,win,gcbot, e1,y+1, e1,y+GA_WID) ;
	}
	else							/* vertical */
	{
	  XDrawLine(dpy,win,gctop, y,e0+1, y,e1-1) ;
	  XDrawLine(dpy,win,gctop, y+1,e0, y+GA_WID,e0) ;
	  XDrawLine(dpy,win,gcbot, y+GA_WID+1,e0+1, y+GA_WID+1, e1-1) ;
	  XDrawLine(dpy,win,gcbot, y+1,e1, y+GA_WID,e1) ;
	}


		/* draw the mercury */

	GaugeMercury(dpy, win, gc, gw, 0,value) ;


	if( gw->gauge.ntics > 1 )
	{
	  y = gw->gauge.tmargin ;
	  for(i=0; i<gw->gauge.ntics; ++i)
	  {
	    x = e0 + i*(e1-e0-1)/(gw->gauge.ntics-1) ;
	    if( gw->gauge.orientation == XtorientHorizontal ) {
	      XDrawLine(dpy,win,gcbot, x,y+1, x,y+TIC_LEN-2) ;
	      XDrawLine(dpy,win,gcbot, x,y, x+1,y) ;
	      XDrawLine(dpy,win,gctop, x+1,y+1, x+1,y+TIC_LEN-2) ;
	      XDrawLine(dpy,win,gctop, x,y+TIC_LEN-1, x+1,y+TIC_LEN-1) ;
	    }
	    else {
	      XDrawLine(dpy,win,gcbot, y+1,x, y+TIC_LEN-2,x) ;
	      XDrawLine(dpy,win,gcbot, y,x, y,x+1) ;
	      XDrawLine(dpy,win,gctop, y+1,x+1, y+TIC_LEN-2,x+1) ;
	      XDrawLine(dpy,win,gctop, y+TIC_LEN-1,x, y+TIC_LEN-1,x+1) ;
	    }
	  }
	}

	/* draw labels */
	if( gw->gauge.nlabels > 1 )
	{
	  char	label[20], *s = label ;
	  int	len, w,h ;

	  if( gw->gauge.orientation == XtorientHorizontal )
	    y = gw->gauge.lmargin + gw->label.font->max_bounds.ascent - 1 ;
	  else {
	    y = gw->gauge.lmargin ;
	    h = gw->label.font->max_bounds.ascent / 2 ;
	  }

	  for(i=0; i<gw->gauge.nlabels; ++i)
	  {
	    if( gw->gauge.labels == NULL )
	      sprintf(label, "%d", v0+i*(v1 - v0)/(gw->gauge.nlabels - 1)) ;
	    else
	      s = gw->gauge.labels[i] ;
	    if( s != NULL ) {
	      x = e0 + i*(e1-e0-1)/(gw->gauge.nlabels-1) ;
	      len = strlen(s) ;
	      if( gw->gauge.orientation == XtorientHorizontal ) {
		w = XTextWidth(gw->label.font, s, len) ;
		XDrawString(dpy,win,gc, x-w/2,y, s,len) ;
	      }
	      else {
		XDrawString(dpy,win,gc, y,x+h, s,len) ;
	      }
	    }
	  }
	}
}


/*
 * Set specified arguments into widget
 */

static Boolean
GaugeSetValues(old, request, new, args, num_args)
    Widget old, request, new;
    ArgList args;
    Cardinal *num_args;
{
	GaugeWidget oldgw = (GaugeWidget) old;
	GaugeWidget reqgw = (GaugeWidget) request;
	GaugeWidget gw = (GaugeWidget) new;
	int i;
	Boolean was_resized = False, redisplay = False ;

	if( gw->gauge.selected != None ) {
	  XtDisownSelection(new, gw->gauge.selected, CurrentTime) ;
	  gw->gauge.selected = None ;
	}

	/* Changes to v0,v1,labels, ntics, nlabels require resize & redraw. */
	/* Change to value requires redraw and possible resize if autoscale */

	was_resized =
	  gw->gauge.v0 != oldgw->gauge.v0  ||
	  gw->gauge.v1 != oldgw->gauge.v1  ||
	  gw->gauge.ntics != oldgw->gauge.ntics  ||
	  gw->gauge.nlabels != oldgw->gauge.nlabels  ||
	  gw->gauge.labels != oldgw->gauge.labels ;

	if( gw->gauge.autoScaleUp && gw->gauge.value > gw->gauge.v1 ||
	    gw->gauge.autoScaleDown && gw->gauge.value < gw->gauge.v1/3 )
	{
	  AutoScale(gw) ;
	  was_resized = TRUE ;
	}

	if( was_resized ) {
	  if( gw->label.resize )
	    GaugeSize(gw, &gw->core.width, &gw->core.height, DEF_LEN) ;
	  else
	    GaugeResize(new) ;
	}

	if( gw->gauge.update != oldgw->gauge.update )
	  if( gw->gauge.update > 0 )
	    EnableUpdate(gw) ;
	  else
	    DisableUpdate(gw) ;

	if( gw->core.background_pixel != oldgw->core.background_pixel )
	{
	  XtReleaseGC(new, gw->gauge.inverse_GC) ;
	  gw->gauge.inverse_GC = Get_GC(gw, gw->core.background_pixel) ;
	}

	return was_resized || gw->gauge.value != oldgw->gauge.value  ||
	   XtIsSensitive(old) != XtIsSensitive(new);
}


static XtGeometryResult
GaugeQueryGeometry(w, intended, preferred)
    Widget w;
    XtWidgetGeometry *intended, *preferred;
{
    register GaugeWidget gw = (GaugeWidget)w;

    if( intended->width == w->core.width  &&
	intended->height == w->core.height )
      return XtGeometryNo ;

    preferred->request_mode = CWWidth | CWHeight;
    GaugeSize(gw, &preferred->width, &preferred->height, DEF_LEN) ;

    if( (!(intended->request_mode & CWWidth) ||
	  intended->width >= preferred->width)  &&
	(!(intended->request_mode & CWHeight) ||
	  intended->height >= preferred->height) )
      return XtGeometryYes;
    else
      return XtGeometryAlmost;
}




/****************************************************************
 *
 * Action Procedures
 *
 ****************************************************************/

static void
GaugeSelect(w,event,params,num_params)
	Widget	w ;
	XEvent	*event ;
	String	*params ;
	Cardinal *num_params ;
{
	GaugeWidget	gw = (GaugeWidget)w ;
	Atom		seln = XA_PRIMARY ;

	if( gw->gauge.selected != None ) {
	  XtDisownSelection(w, gw->gauge.selected, CurrentTime) ;
	  gw->gauge.selected = None ;
	}

	if( *num_params > 0 ) {
	  seln = XInternAtom(XtDisplay(w), params[0], False) ;
	  printf("atom %s is %d\n", params[0], seln) ;
	}

	if( ! XtOwnSelection(w, seln, event->xbutton.time, GaugeConvert,
			GaugeLoseSel, GaugeDoneSel) )
	{
	  /* in real code, this error message would be replaced by
	   * something more elegant, or at least deleted
	   */

	  fprintf(stderr, "Gauge failed to get selection, try again\n") ;
	}
	else
	{
	  gw->gauge.selected = TRUE ;
	  gw->gauge.selstr = (String)XtMalloc(4*sizeof(int)) ;
	  sprintf(gw->gauge.selstr, "%d", gw->gauge.value) ;
	  GaugeExpose(w) ;
	}
}


static	Boolean
GaugeConvert(w, selection, target, type, value, length, format)
	Widget	w ;
	Atom	*selection ;	/* usually XA_PRIMARY */
	Atom	*target ;	/* requested target */
	Atom	*type ;		/* returned type */
	XtPointer *value ;	/* returned value */
	u_long	*length ;	/* returned length */
	int	*format ;	/* returned format */
{
	GaugeWidget	gw = (GaugeWidget)w ;
	XSelectionRequestEvent *req ;

	printf( "requesting selection %s:%s\n",
	    XGetAtomName(XtDisplay(w),*selection),
	    XGetAtomName(XtDisplay(w),*target));

	if( *target == XA_TARGETS(XtDisplay(w)) )
	{
	  Atom *rval, *stdTargets ;
	  u_long stdLength ;

	  /* XmuConvertStandardSelection can handle this.  This function
	   * will return a list of standard targets.  We prepend TEXT,
	   * STRING and INTEGER to the list and return it.
	   */

	  req = XtGetSelectionRequest(w, *selection, NULL) ;
	  XmuConvertStandardSelection(w, req->time, selection, target,
	  	type, (XtPointer*)&stdTargets, &stdLength, format) ;

	  *type = XA_ATOM ;		/* TODO: needed? */
	  *length = stdLength + 3 ;
	  rval = (Atom *) XtMalloc(sizeof(Atom)*(stdLength+3)) ;
	  *value = (XtPointer) rval ;
	  *rval++ = XA_INTEGER ;
	  *rval++ = XA_STRING ;
	  *rval++ = XA_TEXT(XtDisplay(w)) ;
	  bcopy((char *)stdTargets, (char *)rval, stdLength*sizeof(Atom)) ;
	  XtFree((char*) stdTargets) ;
	  *format = 8*sizeof(Atom) ;	/* TODO: needed? */
	  return True ;
	}

	else if( *target == XA_INTEGER )
	{
	  *type = XA_INTEGER ;
	  *length = 1 ;
	  *value = (XtPointer) &gw->gauge.value ;
	  *format = 8*sizeof(int) ;
	  return True ;
	}

	else if( *target == XA_STRING || 
		 *target == XA_TEXT(XtDisplay(w)) )
	{
	  *type = *target ;
	  *length = strlen(gw->gauge.selstr)*sizeof(char) ;
	  *value = (XtPointer) gw->gauge.selstr ;
	  *format = 8 ;
	  return True ;
	}

	else
	{
	  /* anything else, we just give it to XmuConvertStandardSelection() */

	  req = XtGetSelectionRequest(w, *selection, NULL) ;
	  if( XmuConvertStandardSelection(w, req->time, selection, target,
	  	type, value, length, format) )
	    return True ;
	  else {
	    printf(
		"Gauge: requestor is requesting unsupported selection %s:%s\n",
	    	XGetAtomName(XtDisplay(w),*selection),
		XGetAtomName(XtDisplay(w),*target));
	    return False ;
	  }
	}
}



static	void
GaugeLoseSel(w, selection)
	Widget	w ;
	Atom	*selection ;	/* usually XA_PRIMARY */
{
	GaugeWidget	gw = (GaugeWidget)w ;
	Display *dpy = XtDisplay(w) ;
	Window	win = XtWindow(w) ;

	if( gw->gauge.selstr != NULL ) {
	  XtFree(gw->gauge.selstr) ;
	  gw->gauge.selstr = NULL ;
	}

	gw->gauge.selected = False ;
	XClearWindow(dpy,win) ;
	GaugeExpose(w) ;
}


static	void
GaugeDoneSel(w, selection, target)
	Widget	w ;
	Atom	*selection ;	/* usually XA_PRIMARY */
	Atom	*target ;	/* requested target */
{
	GaugeWidget	gw = (GaugeWidget)w ;

	/* selection done, anything to do? */
}


static void
GaugePaste(w,event,params,num_params)
	Widget	w ;
	XEvent	*event ;
	String	*params ;
	Cardinal *num_params ;
{
	GaugeWidget	gw = (GaugeWidget)w ;
	Atom		seln = XA_PRIMARY ;

	if( *num_params > 0 ) {
	  seln = XInternAtom(XtDisplay(w), params[0], False) ;
	  printf("atom %s is %d\n", params[0], seln) ;
	}

	/* try for integer value first */
	XtGetSelectionValue(w, seln, XA_INTEGER,
		GaugeGetSelCB, (XtPointer)XA_INTEGER,
		event->xbutton.time) ;
}

static	void
GaugeGetSelCB(w, client, selection, type, value, length, format)
	Widget	w ;
	XtPointer client ;
	Atom	*selection ;
	Atom	*type ;
	XtPointer value ;
	u_long	*length ;
	int	*format ;
{
	Display	*dpy = XtDisplay(w) ;
	int	i ;
	Atom	target = (Atom)client ;
	Atom	*aptr ;
	int	*iptr ;
	char	*cptr ;

	if( *type == XA_INTEGER ) {
	  iptr = (int *)value ;
	  XawGaugeSetValue(w, *iptr) ;
	}

	else if( *type == XA_STRING  ||  *type == XA_TEXT(dpy) ) {
	  cptr = (char *)value ;
	  XawGaugeSetValue(w, atoi(cptr)) ;
	}

	/* failed, try string */
	else if( *type == None && target == XA_INTEGER )
	  XtGetSelectionValue(w, *selection, XA_STRING,
		GaugeGetSelCB, (XtPointer)XA_STRING,
		CurrentTime) ;
}



/****************************************************************
 *
 * Public Procedures
 *
 ****************************************************************/


	/* Change gauge value.  Only undraw or draw what needs to be
	 * changed.
	 */

void
XawGaugeSetValue(w, value)
	Widget	w ;
	Cardinal value ;
{
	GaugeWidget gw = (GaugeWidget)w ;
	int	oldvalue ;
	GC	gc ;

	if( gw->gauge.selected != None ) {
	  XtDisownSelection(w, gw->gauge.selected, CurrentTime) ;
	  gw->gauge.selected = None ;
	}

	if( !XtIsRealized(w) ) {
	  gw->gauge.value = value ;
	  return ;
	}

	/* need to rescale? */
	if( gw->gauge.autoScaleUp && value > gw->gauge.v1 ||
	    gw->gauge.autoScaleDown && value < gw->gauge.v1/3 )
	{
	  XtVaSetValues(w, XtNvalue, value, 0) ;
	  return ;
	}

	oldvalue = gw->gauge.value ;
	gw->gauge.value = value ;

	gc = XtIsSensitive(w) ? gw->label.normal_GC : gw->label.gray_GC ;
	GaugeMercury(XtDisplay(w), XtWindow(w), gc, gw, oldvalue,value) ;
}


Cardinal
XawGaugeGetValue(w)
	Widget	w ;
{
	GaugeWidget gw = (GaugeWidget)w ;
	return gw->gauge.value ;
}




/****************************************************************
 *
 * Private Procedures
 *
 ****************************************************************/

	/* draw the mercury over a specific region */

static	void
GaugeMercury(dpy,win,gc, gw, val0,val1)
	Display *dpy ;
	Window	win ;
	GC	gc ;
	GaugeWidget	gw ;
	Cardinal val0,val1 ;
{
	int	v0 = gw->gauge.v0 ;
	int	v1 = gw->gauge.v1 ;
	int	vd = v1 - v0 ;
	Dimension len ;		/* length (width or height) of gauge */
	Position e0, e1 ;	/* gauge ends */
	Position p0, p1 ;	/* mercury ends */
	int	y ;		/* vertical (horizontal) position */
	Boolean	undraw = FALSE ;

	len = gw->gauge.orientation == XtorientHorizontal ?
	  gw->core.width : gw->core.height ;

	e0 = gw->gauge.margin0 ;		/* left (top) end */
	e1 = len - gw->gauge.margin1 -1 ;	/* right (bottom) end */

	if( vd <= 0 ) vd = 1 ;

	if( val0 < v0 ) val0 = v0 ;
	else if( val0 > v1 ) val0 = v1 ;
	if( val1 < v0 ) val1 = v0 ;
	else if( val1 > v1 ) val1 = v1 ;

	p0 = (val0-v0)*(e1-e0-1)/vd ;
	p1 = (val1-v0)*(e1-e0-1)/vd ;

	if( p1 == p0 )
	  return ;

	y = gw->gauge.gmargin ;

	if( p1 < p0 )
	{
	  Position tmp = p0 ;
	  p0 = p1 ;
	  p1 = tmp ;
	  gc = gw->label.normal_GC ;
	  XSetForeground(dpy,gc, gw->core.background_pixel) ;
	  undraw = TRUE ;
	}

	if( gw->gauge.orientation == XtorientHorizontal )
	  XFillRectangle(dpy,win,gc, e0+p0+1,y+1, p1-p0,GA_WID) ;
	else
	  XFillRectangle(dpy,win,gc, y+1,e1-p1, GA_WID,p1-p0) ;

	if( undraw )
	  XSetForeground(dpy,gc, gw->label.foreground) ;
}



/* Search the labels, find the largest one. */
/* TODO: handle vertical fonts? */

static void
MaxLabel(gw,wid,hgt, w0,w1)
	GaugeWidget	gw;
	Dimension	*wid, *hgt ;	/* max label size */
	Dimension	*w0,*w1 ;	/* width of first, last labels */
{
	char	lstr[80], *lbl ;
	int	w,h ;
	XFontStruct *font = gw->label.font ;
	int	i ;
	int	lw ;
	int	v0 = gw->gauge.v0 ;
	int	dv = gw->gauge.v1 - v0 ;
	int	n = gw->gauge.nlabels ;

	if( n > 0 )
	{
	  if( --n <= 0 ) {n = 1 ; v0 += dv/2 ;}

	  /* loop through all labels, figure out how much room they
	   * need.
	   */
	  w = 0 ;
	  for(i=0; i<gw->gauge.nlabels; ++i)
	  {
	    if( gw->gauge.labels == NULL )	/* numeric labels */
	      sprintf(lbl = lstr,"%d", v0 + i*dv/n) ;
	    else
	      lbl = gw->gauge.labels[i] ;

	    if( lbl != NULL ) {
	      lw = XTextWidth(font, lbl, strlen(lbl)) ;
	      w = Max( w, lw ) ;
	    }
	    else
	      lw = 0 ;

	    if( i == 0 && w0 != NULL ) *w0 = lw ;
	  }
	  if( w1 != NULL ) *w1 = lw ;

	  *wid = w ;
	  *hgt = font->max_bounds.ascent + font->max_bounds.descent ;
	}
	else
	  *wid = *hgt = 0 ;
}


/* Determine the preferred size for this widget.  choose 100x100 for
 * debugging.
 */

static void
GaugeSize(gw,wid,hgt, min_len)
	GaugeWidget	gw;
	Dimension	*wid, *hgt, min_len ;
{
	char	l0str[80], *l0 ;
	int	w,h ;		/* width, height of gauge */
	int	vmargin ;	/* vertical margin */
	int	hmargin ;	/* horizontal margin */
	XFontStruct *font = gw->label.font ;

	hmargin = gw->label.internal_width ;
	vmargin = gw->label.internal_height ;

	/* find total height (width) of contents */


	/* find minimum size for undecorated gauge */

	if( gw->gauge.orientation == XtorientHorizontal )
	{
	  w = min_len ;
	  h = GA_WID+2 ;			/* gauge itself + edges */
	}
	else
	{
	  w = GA_WID+2 ;
	  h = min_len ;
	}

	if( gw->gauge.ntics > 0 )
	{
	  if( gw->gauge.orientation == XtorientHorizontal )
	  {
	    w = Max(w, gw->gauge.ntics*3) ;
	    h += vmargin + TIC_LEN ;
	  }
	  else
	  {
	    w += hmargin + TIC_LEN ;
	    h = Max(h, gw->gauge.ntics*3) ;
	  }
	}


	/* If labels are requested, this gets a little interesting.
	 * We want the end labels centered on the ends of the gauge and
	 * the centers of the labels evenly spaced.  The labels at the ends
	 * will not be the same width, meaning that the gauge itself need
	 * not be centered in the widget.
	 *
	 * First, determine the spacing.  This is the width of the widest
	 * label, plus the internal margin.  Total length of the gauge is
	 * spacing * (nlabels-1).  To this, we add half the width of the
	 * left-most label and half the width of the right-most label
	 * to get the entire desired width of the widget.
	 */
	if( gw->gauge.nlabels > 0 )
	{
	  Dimension	lwm, lw0, lw1 ;	/* width of max, left, right labels */
	  Dimension	lh ;

	  MaxLabel(gw,&lwm,&lh, &lw0,&lw1) ;

	  if( gw->gauge.orientation == XtorientHorizontal )
	  {
	    lwm = (lwm+hmargin) * (gw->gauge.nlabels-1) + (lw0+lw1)/2 ;
	    w = Max(w, lwm) ;
	    h += lh + vmargin ;
	  }
	  else
	  {
	    lh = lh*gw->gauge.nlabels + (gw->gauge.nlabels - 1)*vmargin ;
	    h = Max(h, lh) ;
	    w += lwm + hmargin ;
	  }
	}

	w += hmargin*2 ;
	h += vmargin*2 ;

	*wid = w ;
	*hgt = h ;
}



static void
AutoScale(gw)
	GaugeWidget	gw;
{
	static int scales[3] = {1,2,5} ;
	int sptr = 0, smult=1 ;

	if( gw->gauge.autoScaleDown )
	  gw->gauge.v1 = 0 ;
	while( gw->gauge.value > gw->gauge.v1 )
	{
	  if( ++sptr > 2 ) {
	    sptr = 0 ;
	    smult *= 10 ;
	  }
	  gw->gauge.v1 = scales[sptr] * smult ;
	}
}

static	void
EnableUpdate(gw)
	GaugeWidget	gw ;
{
	gw->gauge.intervalId =
	  XtAppAddTimeOut(XtWidgetToApplicationContext((Widget)gw),
	  	gw->gauge.update * MS_PER_SEC, GaugeGetValue,
		(XtPointer)gw) ;
}

static	void
DisableUpdate(gw)
	GaugeWidget	gw ;
{
	XtRemoveTimeOut(gw->gauge.intervalId) ;
}

static	void
GaugeGetValue(clientData, intervalId)
	XtPointer	clientData ;
	XtIntervalId	intervalId ;
{
	GaugeWidget	gw = (GaugeWidget)clientData ;
	Cardinal	value ;

	if( gw->gauge.update > 0 )
	  EnableUpdate(gw) ;

	if( gw->gauge.getValue != NULL )
	{
	  XtCallCallbackList((Widget)gw, gw->gauge.getValue, (XtPointer)&value);
	  XawGaugeSetValue((Widget)gw, value) ;
	}
}


static	GC
Get_GC(gw, fg)
	GaugeWidget	gw ;
	Pixel		fg ;
{
	XGCValues	values ;
#define	vmask	GCForeground
#define	umask	(GCBackground|GCSubwindowMode|GCGraphicsExposures|GCDashOffset\
		|GCFont|GCDashList|GCArcMode)

	values.foreground = fg ;

	return XtAllocateGC((Widget)gw, 0, vmask, &values, 0L, umask) ;
}
