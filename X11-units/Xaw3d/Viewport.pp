
unit Viewport;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/Viewport.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/Viewport.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/Viewport.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawViewport_h}
{$define _XawViewport_h}  
{$include <X11/Xaw3d/Form.h>}
{$include <X11/Xaw3d/Reports.h>}


{$ifndef _XtStringDefs_h_}

  const
    XtNforceBars = 'forceBars';    
    XtNallowHoriz = 'allowHoriz';    
    XtNallowVert = 'allowVert';    
    XtNuseBottom = 'useBottom';    
    XtNuseRight = 'useRight';    
{$endif}

    var
      viewportWidgetClass : WidgetClass;cvar;external;

  type
    ViewportWidgetClass = ^_ViewportClassRec;

    ViewportWidget = ^_ViewportRec;
(* error 
extern void XawViewportSetLocation (
{$if NeedFunctionPrototypes}
{$if NeedWidePrototypes}

{$else}

{$endif}
{$endif}
in declaration at line 107 *)
{$if NeedFunctionPrototypes}
{$if NeedWidePrototypes}

{$else}

{$endif}
{$endif}

    procedure XawViewportSetCoordinates(_para1:Widget; _para2:longint; Position:longint; _para4:Position);cdecl;

{$endif}

(* error 
#endif /* _XawViewport_h */

implementation


end.
