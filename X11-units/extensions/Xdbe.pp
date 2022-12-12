
unit Xdbe;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/Xdbe.h
  The following command line parameters were used:
    /usr/include/X11/extensions/Xdbe.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/Xdbe.pp
}

    Type
    PDisplay  = ^Display;
    PDrawable  = ^Drawable;
    Plongint  = ^longint;
    PXdbeScreenVisualInfo  = ^XdbeScreenVisualInfo;
    PXdbeSwapInfo  = ^XdbeSwapInfo;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef XDBE_H}
{$define XDBE_H}  
{$include <X11/Xfuncproto.h>}
{$include <X11/extensions/dbe.h>}




  type
    XdbeVisualInfo = record
        visual : VisualID;
        depth : longint;
        perflevel : longint;
      end;



    XdbeScreenVisualInfo = record
        count : longint;
        visinfo : ^XdbeVisualInfo;
      end;

    XdbeBackBuffer = Drawable;

    XdbeSwapAction = byte;



    XdbeSwapInfo = record
        swap_window : Window;
        swap_action : XdbeSwapAction;
      end;


    XdbeBackBufferAttributes = record
        window : Window;
      end;







    XdbeBufferError = record
        _type : longint;
        display : ^Display;
        buffer : XdbeBackBuffer;
        serial : dword;
        error_code : byte;
        request_code : byte;
        minor_code : byte;
      end;

(* error 
extern Status XdbeQueryExtension(

in declaration at line 93 *)


    function XdbeAllocateBackBufferName(_para1:PDisplay; _para2:Window; _para3:XdbeSwapAction):XdbeBackBuffer;cdecl;


    function XdbeDeallocateBackBufferName(_para1:PDisplay; _para2:XdbeBackBuffer):Status;cdecl;


    function XdbeSwapBuffers(_para1:PDisplay; _para2:PXdbeSwapInfo; _para3:longint):Status;cdecl;


    function XdbeBeginIdiom(_para1:PDisplay):Status;cdecl;


    function XdbeEndIdiom(_para1:PDisplay):Status;cdecl;


    function XdbeGetVisualInfo(_para1:PDisplay; _para2:PDrawable; _para3:Plongint):^XdbeScreenVisualInfo;cdecl;


    procedure XdbeFreeVisualInfo(_para1:PXdbeScreenVisualInfo);cdecl;


    function XdbeGetBackBufferAttributes(_para1:PDisplay; _para2:XdbeBackBuffer):^XdbeBackBufferAttributes;cdecl;

{$endif}

(* error 


implementation


end.
