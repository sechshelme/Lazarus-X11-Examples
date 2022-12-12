
unit shape;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/shape.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/shape.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/shape.pp
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
    PBool  = ^Bool;
    PDisplay  = ^Display;
    Pdword  = ^dword;
    Plongint  = ^longint;
    PXRectangle  = ^XRectangle;
    PXShapeEvent  = ^XShapeEvent;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _SHAPE_H_}
{$define _SHAPE_H_}
{$include <X11/Xfuncproto.h>}
{$include <X11/extensions/shapeconst.h>}
{$ifndef _SHAPE_SERVER_}
{$include <X11/Xutil.h>}









type
  PXShapeEvent = ^TXShapeEvent;
  TXShapeEvent = record
      _type : longint;
      serial : dword;
      send_event : TBool;
      display : PDisplay;
      window : TWindow;
      kind : longint;
      x : longint;
      y : longint;
      width : dword;
      height : dword;
      time : TTime;
      shaped : TBool;
    end;
(* error 
extern Bool XShapeQueryExtension (

in declaration at line 55 *)


function XShapeQueryVersion(para1:PDisplay; para2:Plongint; para3:Plongint):TStatus;cdecl;external;

procedure XShapeCombineRegion(para1:PDisplay; para2:TWindow; para3:longint; para4:longint; para5:longint; 
                para6:TRegion; para7:longint);cdecl;external;

procedure XShapeCombineRectangles(para1:PDisplay; para2:TWindow; para3:longint; para4:longint; para5:longint; 
                para6:PXRectangle; para7:longint; para8:longint; para9:longint);cdecl;external;

procedure XShapeCombineMask(para1:PDisplay; para2:TWindow; para3:longint; para4:longint; para5:longint; 
                para6:TPixmap; para7:longint);cdecl;external;

procedure XShapeCombineShape(para1:PDisplay; para2:TWindow; para3:longint; para4:longint; para5:longint; 
                para6:TWindow; para7:longint; para8:longint);cdecl;external;

procedure XShapeOffsetShape(para1:PDisplay; para2:TWindow; para3:longint; para4:longint; para5:longint);cdecl;external;

function XShapeQueryExtents(para1:PDisplay; para2:TWindow; para3:PBool; para4:Plongint; para5:Plongint; 
               para6:Pdword; para7:Pdword; para8:PBool; para9:Plongint; para10:Plongint; 
               para11:Pdword; para12:Pdword):TStatus;cdecl;external;

procedure XShapeSelectInput(para1:PDisplay; para2:TWindow; para3:dword);cdecl;external;

function XShapeInputSelected(para1:PDisplay; para2:TWindow):dword;cdecl;external;

function XShapeGetRectangles(para1:PDisplay; para2:TWindow; para3:longint; para4:Plongint; para5:Plongint):PXRectangle;cdecl;external;
{$endif}

{$endif}

(* error 
#endif /* _SHAPE_H_ */

implementation


end.
