
unit Viewport;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/Viewport.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/Viewport.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/Viewport.pp
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
    PViewportClassRec  = ^ViewportClassRec;
    PViewportRec  = ^ViewportRec;
    PViewportWidget  = ^ViewportWidget;
    PViewportWidgetClass  = ^ViewportWidgetClass;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawViewport_h}
{$define _XawViewport_h}
{$include <X11/Xaw/Form.h>}
{$include <X11/Xaw/Reports.h>}

{$ifndef _XtStringDefs_h_}

const
  XtNforceBars = 'forceBars';  
  XtNallowHoriz = 'allowHoriz';  
  XtNallowVert = 'allowVert';  
  XtNuseBottom = 'useBottom';  
  XtNuseRight = 'useRight';  
{$endif}
  var
    viewportWidgetClass : TWidgetClass;cvar;external;
type
  PViewportWidgetClass = ^TViewportWidgetClass;
  TViewportWidgetClass = PViewportClassRec;

  PViewportWidget = ^TViewportWidget;
  TViewportWidget = PViewportRec;
(* error 
void XawViewportSetLocation
{$if NeedWidePrototypes}
{$else}
{$endif}
in declaration at line 102 *)
{$if NeedWidePrototypes}
{$else}
(* error 
 Position		x,
(* error 
 Position		y
{$endif}
 in declarator_list *)
 in declarator_list *)
{$endif}

(* error 
#endif /* _XawViewport_h */

implementation


end.
