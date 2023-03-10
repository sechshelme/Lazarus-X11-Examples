unit XawSmeLine;

interface

uses
  xlib,x,
  X11Intrinsic,
  XawSimple;

const
  libXaw = 'libXaw.so';

//{$include <X11/Xaw/Sme.h>}
//{$include <X11/Xmu/Converters.h>}
{ Resources:

 Name		     Class		RepType		Default Value
 ----		     -----		-------		-------------
 callback            Callback		Pointer		NULL
 destroyCallback     Callback		Pointer		NULL
 height		     Height		Dimension	0
 sensitive	     Sensitive		Boolean		True
 width		     Width		Dimension	0
 x		     Position		Position	0
 y		     Position		Position	0

 }

const
  XtCLineWidth = 'LineWidth';  
  XtCStipple = 'Stipple';  
  XtNlineWidth = 'lineWidth';  
  XtNstipple = 'stipple';  
//type
//  PSmeLineObjectClass = ^TSmeLineObjectClass;
//  TSmeLineObjectClass = PSmeLineClassRec;
//
//  PSmeLineObject = ^TSmeLineObject;
//  TSmeLineObject = PSmeLineRec;
  var
    smeLineObjectClass : TWidgetClass;cvar;external libXaw;

implementation


end.
