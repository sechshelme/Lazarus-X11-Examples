unit XawPaned;

interface

uses
  XTIntrinsic;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

//{$include <X11/Intrinsic.h>}
//{$include <X11/Xmu/Converters.h>}
{ RESOURCES:

 Name		         Class		   RepType	    Default Value
 ----		         -----		   -------	    -------------
 background	         Background	   Pixel	    XtDefaultBackground
 betweenCursor	         Cursor	           Cursor	    **
 border		         BorderColor       Pixel	    XtDefaultForeground
 borderWidth	         BorderWidth       Dimension	    1
 cursor		         Cursor	           Cursor	    None
 destroyCallback         Callback	   Pointer	    NULL
 height		         Height	           Dimension	    0
 gripIndent	         GripIndent	   Position	    16
 gripCursor	         Cursor	           Cursor	    **
 horizontalGripCursol    Cursor	           Cursor	    sb_h_double_arrow
 horizontalBetweencursor Cursor	           Cursor	    sb_up_arrow
 internalBorderColor     BorderColor	   Pixel	    XtDefaultForeground
 internalBorderWidth     BorderWidth	   Position	    1
 leftCursor	         Cursor	           Cursor	    sb_left_arrow
 lowerCursor	         Cursor	           Cursor	    sb_down_arrow
 mappedWhenManaged       MappedWhenManaged Boolean	    True
 orientation             Orientation       XtOrientation    XtorientVertical
 refigureMode	         Boolean	   Boolean	    On
 rightCursor	         Cursor	           Cursor           sb_right_arrow
 sensitive	         Sensitive	   Boolean	    True
 upperCursor	         Cursor	           Cursor	    sb_up_arrow
 verticalBetweenCursor   Cursor	           Cursor           sb_left_arrow
 verticalGripCursor      Cursor	           Cursor           sb_v_double_arrow
 width		         Width	           Dimension	    0
 x		         Position	   Position	    0
 y		         Position	   Position	    0

** These resources now are set to the vertical or horizontal cursor
   depending upon orientation, by default.  If a value is specified here
   then that cursor will be used regardless of orientation.


CONSTRAINT RESOURCES:

 Name		      Class		RepType		Default Value
 ----		      -----		-------		-------------
 allowResize	      Boolean	        Boolean         False
 max		      Max	        Dimension	unlimited
 min		      Min		Dimension	Grip Size
 preferredPaneSize    PreferredPaneSize Dimension	PANED_ASK_CHILD
 resizeToPreferred    Boolean		Boolean		False
 showGrip	      ShowGrip		Boolean		True
 skipAdjust	      Boolean	        Boolean         False

 }

const
  PANED_ASK_CHILD = 0;  
  PANED_GRIP_SIZE = 0;  
  XtNallowResize = 'allowResize';  
  XtNbetweenCursor = 'betweenCursor';  
  XtNverticalBetweenCursor = 'verticalBetweenCursor';  
  XtNhorizontalBetweenCursor = 'horizontalBetweenCursor';  
  XtNgripCursor = 'gripCursor';  
  XtNgripIndent = 'gripIndent';  
  XtNhorizontalGripCursor = 'horizontalGripCursor';  
  XtNinternalBorderColor = 'internalBorderColor';  
  XtNinternalBorderWidth = 'internalBorderWidth';  
  XtNleftCursor = 'leftCursor';  
  XtNlowerCursor = 'lowerCursor';  
  XtNrefigureMode = 'refigureMode';  
  XtNposition = 'position';  
  XtNmin = 'min';  
  XtNmax = 'max';  
  XtNpreferredPaneSize = 'preferredPaneSize';  
  XtNresizeToPreferred = 'resizeToPreferred';  
  XtNrightCursor = 'rightCursor';  
  XtNshowGrip = 'showGrip';  
  XtNskipAdjust = 'skipAdjust';  
  XtNupperCursor = 'upperCursor';  
  XtNverticalGripCursor = 'verticalGripCursor';  
  XtCGripIndent = 'GripIndent';  
  XtCMin = 'Min';  
  XtCMax = 'Max';  
  XtCPreferredPaneSize = 'PreferredPaneSize';  
  XtCShowGrip = 'ShowGrip';  
{ Class record constant  }

  var
    panedWidgetClass : TWidgetClass;cvar;external libXaw;

  //type
  //PPanedWidgetClass = ^TPanedWidgetClass;
  //TPanedWidgetClass = PPanedClassRec;
  //
  //PPanedWidget = ^TPanedWidget;
  //TPanedWidget = PPanedRec;
{
 *  Public Procedures
  }
{
 * Function:
 *	XawPanedSetMinMax
 *
 * Parameters:
 *	widget - widget that is a child of the Paned widget
 *	min    - new min and max size for the pane
 *	max    - ""
 *
 * Description:
 *	Sets the min and max size for a pane.
  }

procedure XawPanedSetMinMax(w:TWidget; min:longint; max:longint);cdecl;external libXaw;
{
 * Function:
 *	XawPanedGetMinMax
 *
 * Parameters:
 *	widget - widget that is a child of the Paned widget
 *	min    - return the current min and max size for the pane
 *	max    - ""
 *
 * Description:
 *	Gets the min and max size for a pane.
  }
procedure XawPanedGetMinMax(w:TWidget; min_return:Plongint; max_return:Plongint);cdecl;external libXaw;
{
 * Function:
 *	XawPanedSetRefigureMode
 *
 * Parameters:
 *	w    - paned widget
 *	mode - if False then inhibit refigure
 *
 * Description:
 *	  Allows a flag to be set the will inhibit  the paned widgets
 *	relayout routine.
  }
procedure XawPanedSetRefigureMode(w:TWidget; mode:TBoolean);cdecl;external libXaw;
{
 * Function:
 *	XawPanedGetNumSub
 *
 * Parameters:
 *	w - paned widget
 *
 * Returns:
 *	Number of panes in the paned widget.
  }
function XawPanedGetNumSub(w:TWidget):longint;cdecl;external libXaw;
{
 * Function:
 *	XawPanedAllowResize
 *
 * Parameters:
 *	widget - child of the paned widget
 *
 * Description:
 *	  Allows a flag to be set that determines if the paned widget will
 *	allow geometry requests from this child
  }
procedure XawPanedAllowResize(w:TWidget; allow_resize:TBoolean);cdecl;external libXaw;

implementation

end.
