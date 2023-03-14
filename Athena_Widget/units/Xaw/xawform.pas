unit XawForm;

interface

uses
  x, xlib,
  X11Intrinsic;

const
  libXaw = 'libXaw.so';

// {$include <X11/Intrinsic.h>}
{ Resources:

 Name		     Class		RepType		Default Value
 ----		     -----		-------		-------------
 background	     Background		Pixel		XtDefaultBackground
 border		     BorderColor	Pixel		XtDefaultForeground
 borderWidth	     BorderWidth	Dimension	1
 defaultDistance     Thickness		int		4
 destroyCallback     Callback		Pointer		NULL
 displayList	     DisplayList	XawDisplayList*	NULL
 height		     Height		Dimension	computed at realize
 mappedWhenManaged   MappedWhenManaged	Boolean		True
 sensitive	     Sensitive		Boolean		True
 width		     Width		Dimension	computed at realize
 x		     Position		Position	0
 y		     Position		Position	0

 }
{ Constraint parameters:

 Name		     Class		RepType		Default Value
 ----		     -----		-------		-------------
 bottom		     Edge		XtEdgeType	XtRubber
 fromHoriz	     Widget		Widget		(left edge of form)
 fromVert	     Widget		Widget		(top of form)
 horizDistance	     Thickness		int		defaultDistance
 left		     Edge		XtEdgeType	XtRubber
 resizable	     Boolean		Boolean		False
 right		     Edge		XtEdgeType	XtRubber
 top		     Edge		XtEdgeType	XtRubber
 vertDistance	     Thickness		int		defaultDistance

 }
const
  XtNtop = 'top';  
  XtRWidget = 'Widget';  

const
  XtNdefaultDistance = 'defaultDistance';  
  XtNbottom = 'bottom';  
  XtNleft = 'left';  
  XtNright = 'right';  
  XtNfromHoriz = 'fromHoriz';  
  XtNfromVert = 'fromVert';  
  XtNhorizDistance = 'horizDistance';  
  XtNvertDistance = 'vertDistance';  
  XtNresizable = 'resizable';  
  XtCEdge = 'Edge';  
  XtCWidget = 'Widget';  

type
  PXawEdgeType = ^TXawEdgeType;
  TXawEdgeType =  Longint;

Const
    XawChainTop = 0;
    XawChainBottom = 1;
    XawChainLeft = 2;
    XawChainRight = 3;
    XawRubber = 4;

//  XtEdgeType = XawEdgeType;  
  XtChainTop = XawChainTop;  
  XtChainBottom = XawChainBottom;  
  XtChainLeft = XawChainLeft;  
  XtChainRight = XawChainRight;  
  XtRubber = XawRubber;  
  XtEchainLeft = 'chainLeft';  
  XtEchainRight = 'chainRight';  
  XtEchainTop = 'chainTop';  
  XtEchainBottom = 'chainBottom';  
  XtErubber = 'rubber';  

const
  XawNdisplayList = 'displayList';  

const
  XawCDisplayList = 'DisplayList';  

const
  XawRDisplayList = 'XawDisplayList';  


  var
    formWidgetClass : TWidgetClass;cvar;external libXaw;

procedure XawFormDoLayout(w:TWidget; do_layout:TBool);cdecl;external libXaw;

//type
//  PFormWidgetClass = ^TFormWidgetClass;
//  TFormWidgetClass = PFormClassRec;
//
//  PFormWidget = ^TFormWidget;
//  TFormWidget = PFormRec;

implementation


end.
