
unit Xaw3dP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Xaw3dP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Xaw3dP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Xaw3dP.pp
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

function grayPixel(para1:dword; para2:PDisplay; para3:PScreen):dword;cdecl;external;
{$else}

function grayPixel(p,dpy,scn : longint) : longint;

{$endif}
{$ifdef XAW_MULTIPLANE_PIXMAPS}
{$if NeedFunctionPrototypes}
{$endif}

function stipplePixmap(para1:TWidget; para2:TPixmap; para3:TColormap; para4:TPixel; para5:dword):TPixmap;cdecl;external;
{$endif}
{$endif}


implementation

function XtX(w : longint) : longint;
begin
  XtX:=(TRectObj(w))^.(rectangle.x);
end;

function XtY(w : longint) : longint;
begin
  XtY:=(TRectObj(w))^.(rectangle.y);
end;

function XtWidth(w : longint) : longint;
begin
  XtWidth:=(TRectObj(w))^.(rectangle.width);
end;

function XtHeight(w : longint) : longint;
begin
  XtHeight:=(TRectObj(w))^.(rectangle.height);
end;

function XtBorderWidth(w : longint) : longint;
begin
  XtBorderWidth:=(TRectObj(w))^.(rectangle.border_width);
end;

function grayPixel(p,dpy,scn : longint) : longint;
begin
  grayPixel:=p;
end;


end.
