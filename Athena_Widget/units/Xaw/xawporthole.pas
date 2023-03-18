unit XawPorthole;

interface

uses
  XTIntrinsic;

const
  libXaw = 'libXaw.so';

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

//{$include <X11/Intrinsic.h>}
//{$include <X11/Xaw/Reports.h>}

{****************************************************************************
 *
 * Porthole Widget (subclass of Composite)
 *
 * This widget is similar to a viewport without scrollbars.  Child movement
 * is done by external panners or scrollbars.
 *
 * Parameters:
 *
 *  Name		Class		Type		Default
 *  ----		-----		----		-------
 *
 *  background		Background	Pixel		XtDefaultBackground
 *  border	        BorderColor	Pixel		XtDefaultForeground
 *  borderWidth		BorderWidth	Dimension	1
 *  height		Height		Dimension	0
 *  reportCallback	ReportCallback	Pointer		NULL
 *  width		Width		Dimension	0
 *  x			Position	Position	0
 *  y			Position	Position	0
 *
 **************************************************************************** }
  var
    portholeWidgetClass : TWidgetClass;cvar;external libXaw;

  //type
  //PPortholeWidgetClass = ^TPortholeWidgetClass;
  //TPortholeWidgetClass = PPortholeClassRec;
  //
  //PPortholeWidget = ^TPortholeWidget;
  //TPortholeWidget = PPortholeRec;

implementation

end.
