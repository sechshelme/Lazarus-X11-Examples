
unit shape;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/shape.h
  The following command line parameters were used:
    /usr/include/X11/extensions/shape.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/shape.pp
}

    Type
    PBool  = ^Bool;
    PDisplay  = ^Display;
    Pdword  = ^dword;
    Plongint  = ^longint;
    PXRectangle  = ^XRectangle;
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
    XShapeEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        window : Window;
        kind : longint;
        x : longint;
        y : longint;
        width : dword;
        height : dword;
        time : Time;
        shaped : Bool;
      end;
(* error 
extern Bool XShapeQueryExtension (

in declaration at line 55 *)


    function XShapeQueryVersion(_para1:PDisplay; _para2:Plongint; _para3:Plongint):Status;cdecl;


    procedure XShapeCombineRegion(_para1:PDisplay; _para2:Window; _para3:longint; _para4:longint; _para5:longint; 
                _para6:Region; _para7:longint);cdecl;


    procedure XShapeCombineRectangles(_para1:PDisplay; _para2:Window; _para3:longint; _para4:longint; _para5:longint; 
                _para6:PXRectangle; _para7:longint; _para8:longint; _para9:longint);cdecl;


    procedure XShapeCombineMask(_para1:PDisplay; _para2:Window; _para3:longint; _para4:longint; _para5:longint; 
                _para6:Pixmap; _para7:longint);cdecl;


    procedure XShapeCombineShape(_para1:PDisplay; _para2:Window; _para3:longint; _para4:longint; _para5:longint; 
                _para6:Window; _para7:longint; _para8:longint);cdecl;


    procedure XShapeOffsetShape(_para1:PDisplay; _para2:Window; _para3:longint; _para4:longint; _para5:longint);cdecl;


    function XShapeQueryExtents(_para1:PDisplay; _para2:Window; _para3:PBool; _para4:Plongint; _para5:Plongint; 
               _para6:Pdword; _para7:Pdword; _para8:PBool; _para9:Plongint; _para10:Plongint; 
               _para11:Pdword; _para12:Pdword):Status;cdecl;


    procedure XShapeSelectInput(_para1:PDisplay; _para2:Window; _para3:dword);cdecl;


    function XShapeInputSelected(_para1:PDisplay; _para2:Window):dword;cdecl;


    function XShapeGetRectangles(_para1:PDisplay; _para2:Window; _para3:longint; _para4:Plongint; _para5:Plongint):^XRectangle;cdecl;

{$endif}

{$endif}

(* error 
#endif /* _SHAPE_H_ */

implementation


end.
