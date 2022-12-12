
unit Form;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Form.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Form.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Form.pp
}

    { Pointers to basic pascal types, inserted by h2pas conversion program.}
    Type
      PLongint  = ^Longint;
      PSmallInt = ^SmallInt;
      PByte     = ^Byte;
      PWord     = ^Word;
      PDWord    = ^DWord;
      PDouble   = ^Double;

    Type
    PFormClassRec  = ^FormClassRec;
    PFormRec  = ^FormRec;
    PFormWidget  = ^FormWidget;
    PFormWidgetClass  = ^FormWidgetClass;
    PXawEdgeType  = ^XawEdgeType;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawForm_h}
{$define _XawForm_h}
{$include <X11/Constraint.h>}



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
{$ifndef _XawEdgeType_e}
{$define _XawEdgeType_e}





type
  PXawEdgeType = ^TXawEdgeType;
  TXawEdgeType = (XawChainTop,XawChainBottom,XawChainLeft,
    XawChainRight,XawRubber);
{$endif}



const
  XtEdgeType = XawEdgeType;  
  XtChainTop = XawChainTop;  
  XtChainBottom = XawChainBottom;  
  XtChainLeft = XawChainLeft;  
  XtChainRight = XawChainRight;  
  XtRubber = XawRubber;  
type
  PFormWidgetClass = ^TFormWidgetClass;
  TFormWidgetClass = PFormClassRec;

  PFormWidget = ^TFormWidget;
  TFormWidget = PFormRec;
  var
    formWidgetClass : TWidgetClass;cvar;external;
(* error 
extern void XawFormDoLayout(
{$if NeedFunctionPrototypes}
{$if NeedWidePrototypes}

{$else}

{$endif}
{$endif}
in declaration at line 164 *)
{$endif}

(* error 
#endif /* _XawForm_h */

implementation


end.
