/* $Id: Radio.c,v 1.1 1997/08/27 06:40:44 falk Exp $
 *
 * Radio.c - Radio button widget
 *
 * Author: Edward A. Falk
 *         falk@falconer.vip.best.com
 *  
 * Date:   June 30, 1997
 *
 *
 * Overview:  This widget is identical to the Toggle widget in behavior,
 * but completely different in appearance.  This widget looks like a small
 * diamond-shaped button with a label to the right.
 *
 * To make this work, we subclass the Toggle widget to inherit its behavior
 * and to inherit the label-drawing function from which Toggle is
 * subclassed.  We then completely replace the Expose, Set, Unset
 * and Highlight member functions.
 *
 * The Set and Unset actions are slightly unorthodox.  In Toggle's
 * ClassInit function, Toggle searches the Command actions list and
 * "steals" the Set and Unset functions, caching pointers to them in its
 * class record.  It then calls these functions from its own ToggleSet
 * and Toggle actions.
 *
 * We, in turn, override the Set() and Unset() actions in our own ClassRec.
 *
 * $Log: Radio.c,v $
 * Revision 1.1  1997/08/27 06:40:44  falk
 * Initial revision
 *
 */


#include <stdio.h>

#include <X11/IntrinsicP.h>
#include <X11/StringDefs.h>
#include <X11/Xaw/XawInit.h>
#include <X11/Xmu/Converters.h>
#include <X11/Xmu/Misc.h>
#include "RadioP.h"

#define	BOX_SIZE	13

#define	rclass(w)	((RadioWidgetClass)((w)->core.widget_class))


#ifdef	_ThreeDP_h
#define	swid(rw)	((rw)->threeD.shadow_width)
#else
#define	swid(rw)	((rw)->core.border_width)
#endif

#define	bsize(rw)	(rclass(rw)->radio_class.dsize)
#define	bs(rw)		(bsize(rw) + 2*swid(rw))



/****************************************************************
 *
 * Full class record constant
 *
 ****************************************************************/

	/* The translations table from Toggle do not need to be
	 * overridden by Radio
	 */


	/* Member functions */

static	void	RadioToggle(), RadioInit() ;
static	void	RadioExpose(), RadioResize() ;
static	void	RadioDestroy(), RadioClassInit(), RadioClassPartInit() ;
static	Boolean	RadioSetValues();
static	void	DrawDiamond() ;
static	XtGeometryResult	RadioQueryGeometry();


	/* Action procs */

	void	RadioSet(), RadioUnset() ;
static	void	RadioNotify(), RadioHighlight(), RadioUnhighlight();


	/* internal privates */

static	void	RadioSize() ;		/* find ideal size for widget */

	/* The actions table from Toggle is almost perfect, but we need
	 * to override Highlight, Set, and Unset.
	 */

static XtActionsRec actionsList[] =
{
  {"highlight",		RadioHighlight},
  {"unhighlight",	RadioUnhighlight},
};

#define SuperClass ((ToggleWidgetClass)&toggleClassRec)

RadioClassRec radioClassRec = {
  {
    (WidgetClass) SuperClass,		/* superclass		*/	
    "Radio",				/* class_name		*/
    sizeof(RadioRec),			/* size			*/
    RadioClassInit,			/* class_initialize	*/
    RadioClassPartInit,			/* class_part_initialize  */
    FALSE,				/* class_inited		*/
    RadioInit,				/* initialize		*/
    NULL,				/* initialize_hook	*/
    XtInheritRealize,			/* realize		*/
    actionsList,			/* actions		*/
    XtNumber(actionsList),		/* num_actions		*/
    NULL,				/* resources		*/
    0,					/* resource_count	*/
    NULLQUARK,				/* xrm_class		*/
    TRUE,				/* compress_motion	*/
    TRUE,				/* compress_exposure	*/
    TRUE,				/* compress_enterleave	*/
    FALSE,				/* visible_interest	*/
    NULL,				/* destroy		*/
    RadioResize,			/* resize		*/
    RadioExpose,			/* expose		*/
    RadioSetValues,			/* set_values		*/
    NULL,				/* set_values_hook	*/
    XtInheritSetValuesAlmost,		/* set_values_almost	*/
    NULL,				/* get_values_hook	*/
    NULL,				/* accept_focus		*/
    XtVersion,				/* version		*/
    NULL,				/* callback_private	*/
    XtInheritTranslations,		/* tm_table		*/
    RadioQueryGeometry,			/* query_geometry	*/
    XtInheritDisplayAccelerator,	/* display_accelerator	*/
    NULL				/* extension		*/
  },  /* CoreClass fields initialization */
  {
    XtInheritChangeSensitive		/* change_sensitive	*/ 
  },  /* SimpleClass fields initialization */
#ifdef	_ThreeDP_h
  {
    XtInheritXaw3dShadowDraw		/* field not used	*/
  },  /* ThreeDClass fields initialization */
#endif
  {
    0					  /* field not used	*/
  },  /* LabelClass fields initialization */
  {
    0					  /* field not used	*/
  },  /* CommandClass fields initialization */
  {
      RadioSet,				/* Set Procedure.	*/
      RadioUnset,			/* Unset Procedure.	*/
      NULL				/* extension.		*/
  },  /* ToggleClass fields initialization */
  {
      BOX_SIZE,
      DrawDiamond,			/* draw procedure */
      NULL				/* extension. */
  }  /* RadioClass fields initialization */
};

  /* for public consumption */
WidgetClass radioWidgetClass = (WidgetClass) &radioClassRec;






/****************************************************************
 *
 * Class Methods
 *
 ****************************************************************/

static void
RadioClassInit()
{
  XawInitializeWidgetSet();
}

static	void
RadioClassPartInit(class)
  WidgetClass	class ;
{
  RadioWidgetClass c     = (RadioWidgetClass) class ;
  RadioWidgetClass super = (RadioWidgetClass)c->core_class.superclass ;

  if( c->radio_class.drawDiamond == NULL  ||
      c->radio_class.drawDiamond == XtInheritDrawDiamond )
  {
    c->radio_class.drawDiamond = super->radio_class.drawDiamond ;
  }
}




/*ARGSUSED*/
static void
RadioInit(request, new, args, num_args)
 Widget request, new;
 ArgList args;
 Cardinal *num_args;
{
    RadioWidget rw = (RadioWidget) new;
    RadioWidget rw_req = (RadioWidget) request;
    Dimension	w,h ;

    /* Select initial size for the widget */
    if( rw_req->core.width == 0  ||  rw_req->core.height == 0 )
    {
      RadioSize(rw, &w,&h) ;
      if( rw_req->core.width == 0 )
	rw->core.width = w ;
      if( rw_req->core.height == 0 )
	rw->core.height = h ;
      rw->core.widget_class->core_class.resize(new) ;
    }
}

/*	Function Name: RadioDestroy
 *	Description: Destroy Callback for radio widget.
 *	Arguments: w - the radio widget that is being destroyed.
 *                 junk, grabage - not used.
 *	Returns: none.
 */

/* ARGSUSED */
static void
RadioDestroy(w, junk, garbage)
Widget w;
XtPointer junk, garbage;
{
	/* TODO: get rid of this */
}


/* React to size change from manager.  Label widget will compute some internal
 * stuff, but we need to override.  This code requires knowledge of the
 * internals of the Label widget.
 */

static	void
RadioResize(w)
    Widget w ;
{
    RadioWidget rw = (RadioWidget)w ;

    /* call parent resize proc */
    SuperClass->core_class.resize(w) ;

    /* override label offset */

    switch( rw->label.justify ) {
      case XtJustifyLeft:
	rw->label.label_x += bs(rw) + rw->label.internal_width ;
	break ;
      case XtJustifyRight:
	break ;
      case XtJustifyCenter:
      default:
	rw->label.label_x += (bs(rw) + rw->label.internal_width)/2 ;
	break ;
    }
}


/*
 * Repaint the widget window.
 */

static	void
RadioExpose(w, event, region)
    Widget	w ;
    XEvent	*event ;
    Region	region ;
{
	RadioWidget	rw = (RadioWidget) w ;
	Display		*dpy = XtDisplay(w) ;
	Window		win = XtWindow(w) ;
	GC		gc ;
	Pixmap		left_bitmap ;
	extern WidgetClass labelWidgetClass ;

	/* Note: the Label widget examines the region to decide if anything
	 * needs to be drawn.  I'm not sure that this is worth the effort,
	 * but it bears thinking on.
	 */

	/* Command widget may sometimes override the label GC in order
	 * to draw inverse video.  We don't use inverse video, so we need
	 * to restore the label's normal GC.
	 */
	rw->label.normal_GC = rw->command.normal_GC ;


	/* Let label widget draw the label.  If there was an lbm_x
	 * field, we could let Label draw the bitmap too.  But there
	 * isn't, so we need to temporarily remove the bitmap and
	 * draw it ourself later.
	 */
	left_bitmap = rw->label.left_bitmap ;
	rw->label.left_bitmap = None ;
	labelWidgetClass->core_class.expose(w,event,region) ;
	rw->label.left_bitmap = left_bitmap ;

	/* now manually draw the left bitmap.  TODO: 3-d look, xaw-xpm */
	gc = XtIsSensitive(w) ? rw->label.normal_GC : rw->label.gray_GC ;
	if( left_bitmap != None && rw->label.lbm_width > 0 )
	{
	  /* TODO: handle pixmaps */
	  XCopyPlane(dpy, left_bitmap, win, gc,
	  	0,0, rw->label.lbm_width, rw->label.lbm_height,
		(int) rw->label.internal_width*2 + bs(rw),
		(int) rw->label.internal_height + rw->label.lbm_y,
		(u_long) 1L) ;
	}

	/* Finally, the button itself */
	((RadioWidgetClass)(w->core.widget_class))->radio_class.drawDiamond(w) ;
}




/************************************************************
 *
 * Set specified arguments into widget
 *
 ***********************************************************/


/* ARGSUSED */
static Boolean
RadioSetValues(current, request, new, args, num_args)
    Widget current, request, new;
    ArgList args;
    Cardinal *num_args;
{
    RadioWidget oldrw = (RadioWidget) current;
    RadioWidget reqrw = (RadioWidget) request;
    RadioWidget newrw = (RadioWidget) new;
    int i;
    Boolean was_resized = False, redisplay = False ;

    /* Need to find out if the size of the widget changed.  Set new size
     * if it did and resize is permitted.  One way to determine of the
     * widget changed size would be to scan the args list.  Another way
     * is to compare the old and new widgets and see if any of several
     * size-related fields have been changed.  The Label widget chose the
     * former method, but I choose the latter.
     */

    if( newrw->label.resize &&
	( newrw->core.width != oldrw->core.width ||
	  newrw->core.height != oldrw->core.height ||
	  newrw->core.border_width != oldrw->core.border_width ) )
    {
      RadioSize(newrw, &newrw->core.width, &newrw->core.height) ;
    }

    return FALSE ;
}

static XtGeometryResult
RadioQueryGeometry(w, intended, preferred)
    Widget	w ;
    XtWidgetGeometry *intended, *preferred ;
{
    RadioWidget rw = (RadioWidget) w;

    preferred->request_mode = CWWidth | CWHeight;
    RadioSize(rw, &preferred->width, &preferred->height) ;

    if (  ((intended->request_mode & (CWWidth | CWHeight))
	   	== (CWWidth | CWHeight)) &&
	  intended->width == preferred->width &&
	  intended->height == preferred->height)
	return XtGeometryYes;
    else if (preferred->width == w->core.width &&
	     preferred->height == w->core.height)
	return XtGeometryNo;
    else
	return XtGeometryAlmost;
}





/************************************************************
 *
 *  Action Procedures
 *
 ************************************************************/

/*
 * Draw the highlight border around the widget.  The Command widget
 * did this by drawing through a mask.  We do it by just drawing the
 * border.
 */

static void 
DrawHighlight(w,gc)
    Widget w;
    GC gc ;
{
	RadioWidget	rw = (RadioWidget)w;
	XRectangle	rects[4] ;
	Dimension	ht = rw->command.highlight_thickness ;

	if( ht <= 0 ||
	    ht > rw->core.width/2  ||
	    ht > rw->core.height/2 )
	  return ;

	if( ! XtIsRealized(w) )
	  return ;

	rects[0].x = 0 ; rects[0].y = 0 ;
	rects[0].width = rw->core.width ; rects[0].height = ht ;
	rects[1].x = 0 ; rects[1].y = rw->core.height - ht ;
	rects[1].width = rw->core.width ; rects[1].height = ht ;
	rects[2].x = 0 ; rects[2].y = ht ;
	rects[2].width = ht ; rects[2].height = rw->core.height - ht*2 ;
	rects[3].x = rw->core.width - ht ; rects[3].y = ht ;
	rects[3].width = ht ; rects[3].height = rw->core.height - ht*2 ;
	XFillRectangles( XtDisplay(w), XtWindow(w), gc, rects, 4) ;
}

static	void
RadioHighlight(w,event,params,num_params)
    Widget	w ;
    XEvent	*event ;
    String	*params ;
    Cardinal	*num_params ;
{
    RadioWidget	rw = (RadioWidget)w;
    DrawHighlight(w, rw->command.normal_GC) ;
}


static	void
RadioUnhighlight(w,event,params,num_params)
    Widget	w ;
    XEvent	*event ;
    String	*params ;
    Cardinal	*num_params ;
{
    RadioWidget	rw = (RadioWidget)w;
    DrawHighlight(w, rw->command.inverse_GC) ;
}


/* ARGSUSED */
void 
RadioSet(w,event,params,num_params)
Widget w;
XEvent *event;
String *params;		/* unused */
Cardinal *num_params;	/* unused */
{
    RadioWidget	rw = (RadioWidget)w;
    RadioWidgetClass class = (RadioWidgetClass) w->core.widget_class ;

    if( rw->command.set )
      return ;

    rw->command.set = TRUE ;
    if( XtIsRealized(w) )
      class->radio_class.drawDiamond(w) ;
}


/* ARGSUSED */
void 
RadioUnset(w,event,params,num_params)
Widget w;
XEvent *event;
String *params;		/* unused */
Cardinal *num_params;	/* unused */
{
    RadioWidget	rw = (RadioWidget)w;
    RadioWidgetClass class = (RadioWidgetClass) w->core.widget_class ;

    if( ! rw->command.set )
      return ;

    rw->command.set = FALSE ;
    if( XtIsRealized(w) )
      class->radio_class.drawDiamond(w) ;
}




/************************************************************
 *
 *  Internal Procedures
 *
 ************************************************************/


/* Size of widget.  Width is size of box plus width of border around
 * box plus width of label plus three margins plus the size of the left
 * bitmap, if any.  Height is max(box,bitmap,label) plus two margins.
 */

static	void
RadioSize(rw, w,h)
    RadioWidget	rw ;
    Dimension	*w, *h ;
{
	*w = rw->label.label_width + bs(rw) + LEFT_OFFSET(rw) +
		3 * rw->label.internal_width ;
	*h = Max( rw->label.label_height, bs(rw) ) +
		2 * rw->label.internal_width ;
}


static	void
DrawDiamond(w)
    Widget	w ;
{
	RadioWidget	rw = (RadioWidget) w ;
	Display		*dpy = XtDisplay(w) ;
	Window		win = XtWindow(w) ;
	GC		gc, gci ;

	XPoint		pts[5] ;
	Dimension	del = bsize(rw)/2 ;
	Dimension	s = swid(rw) ;
	int		i ;
	Position	x,y ;		/* diamond center */
	GC		top, bot, ctr ;

	gc = XtIsSensitive(w) ? rw->command.normal_GC : rw->label.gray_GC ;

	gci = rw->command.set ? rw->command.normal_GC : rw->command.inverse_GC ;

	x = rw->label.internal_width + bs(rw)/2 ;
	y = rw->core.height/2 ;

#ifdef	_ThreeDP_h
	if( ! rw->command.set ) {
	  top = rw->threeD.top_shadow_GC ;
	  bot = rw->threeD.bot_shadow_GC ;
	  ctr = gc ;		/* TODO */
	} else {
	  top = rw->threeD.bot_shadow_GC ;
	  bot = rw->threeD.top_shadow_GC ;
	  ctr = gc ;		/* TODO */
	}
#endif

	pts[0].x = x - del ;
	pts[0].y = y ;
	pts[1].x = x ;
	pts[1].y = y - del ;
	pts[2].x = x + del ;
	pts[2].y = y ;
	pts[3].x = x ;
	pts[3].y = y + del ;
	pts[4] = pts[0] ;
	XFillPolygon(dpy,win,gci, pts,4, Convex, CoordModeOrigin) ;

#ifdef	_ThreeDP_h
	for(i=0; i<s; ++i) {
	  XDrawLine(dpy,win,bot, x-i-del,y, x,y+del+i) ;
	  XDrawLine(dpy,win,bot, x+del+i,y, x,y+del+i) ;
	}
	for(i=0; i<s; ++i) {
	  XDrawLine(dpy,win,top, x-del-i,y, x,y-del-i) ;
	  XDrawLine(dpy,win,top, x+del+i,y, x,y-del-i) ;
	}
#else
	XDrawLines(dpy,win,gc, pts,5, CoordModeOrigin) ;
#endif
}
