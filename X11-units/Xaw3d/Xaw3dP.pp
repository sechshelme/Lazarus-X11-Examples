
unit Xaw3dP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/Xaw3dP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/Xaw3dP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/Xaw3dP.pp
}

  Type
  PDisplay  = ^Display;
  PScreen  = ^Screen;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _Xaw3dP_h}
{$define _Xaw3dP_h}  
{$include <X11/IntrinsicP.h>}

{$define XAW_INTERNATIONALIZATION}  
{$undef XAW_MULTIPLANE_PIXMAPS}
{$define XAW_GRAY_BLKWHT_STIPPLES}  
{$define XAW_ARROW_SCROLLBARS}  
{$ifndef XtX}

  function XtX(w : longint) : longint;  

{$endif}
{$ifndef XtY}

  function XtY(w : longint) : longint;  

{$endif}
{$ifndef XtWidth}

  function XtWidth(w : longint) : longint;  

{$endif}
{$ifndef XtHeight}

  function XtHeight(w : longint) : longint;  

{$endif}
{$ifndef XtBorderWidth}

  function XtBorderWidth(w : longint) : longint;  

{$endif}
{$ifdef XAW_GRAY_BLKWHT_STIPPLES}
{$if NeedFunctionPrototypes}
{$endif}

  function grayPixel(_para1:dword; _para2:PDisplay; _para3:PScreen):dword;cdecl;

{$else}

  function grayPixel(p,dpy,scn : longint) : longint;  

{$endif}
{$ifdef XAW_MULTIPLANE_PIXMAPS}
{$if NeedFunctionPrototypes}
{$endif}

  function stipplePixmap(_para1:Widget; _para2:Pixmap; _para3:Colormap; _para4:Pixel; _para5:dword):Pixmap;cdecl;

{$endif}
{$endif}


implementation

  function XtX(w : longint) : longint;
  begin
    XtX:=(RectObj(w))^.(rectangle.x);
  end;

  function XtY(w : longint) : longint;
  begin
    XtY:=(RectObj(w))^.(rectangle.y);
  end;

  function XtWidth(w : longint) : longint;
  begin
    XtWidth:=(RectObj(w))^.(rectangle.width);
  end;

  function XtHeight(w : longint) : longint;
  begin
    XtHeight:=(RectObj(w))^.(rectangle.height);
  end;

  function XtBorderWidth(w : longint) : longint;
  begin
    XtBorderWidth:=(RectObj(w))^.(rectangle.border_width);
  end;

  function grayPixel(p,dpy,scn : longint) : longint;
  begin
    grayPixel:=p;
  end;


end.
