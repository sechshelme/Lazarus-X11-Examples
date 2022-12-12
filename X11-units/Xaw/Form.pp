
unit Form;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/Form.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/Form.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/Form.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawForm_h}
{$define _XawForm_h}  
{$include <X11/Intrinsic.h>}


{$ifndef _XtStringDefs_h_}

  const
    XtNtop = 'top';    
    XtRWidget = 'Widget';    
{$endif}

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
    XawEdgeType = (XawChainTop,XawChainBottom,XawChainLeft,
      XawChainRight,XawRubber);

  const
    XtEdgeType = XawEdgeType;    
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
{$ifndef OLDXAW}
{$ifndef XawNdisplayList}

  const
    XawNdisplayList = 'displayList';    
{$endif}
{$ifndef XawCDisplayList}

  const
    XawCDisplayList = 'DisplayList';    
{$endif}
{$ifndef XawRDisplayList}

  const
    XawRDisplayList = 'XawDisplayList';    
{$endif}
{$endif}

  type
    FormWidgetClass = ^_FormClassRec;

    FormWidget = ^_FormRec;

    var
      formWidgetClass : WidgetClass;cvar;external;
(* error 
void XawFormDoLayout
{$if NeedWidePrototypes}
{$else}
{$endif}
in declaration at line 163 *)
{$endif}

(* error 
#endif /* _XawForm_h */

implementation


end.
