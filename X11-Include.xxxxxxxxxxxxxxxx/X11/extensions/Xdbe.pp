
unit Xdbe;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xdbe.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xdbe.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xdbe.pp
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
    PDrawable  = ^Drawable;
    Plongint  = ^longint;
    PXdbeBackBuffer  = ^XdbeBackBuffer;
    PXdbeBackBufferAttributes  = ^XdbeBackBufferAttributes;
    PXdbeBufferError  = ^XdbeBufferError;
    PXdbeScreenVisualInfo  = ^XdbeScreenVisualInfo;
    PXdbeSwapAction  = ^XdbeSwapAction;
    PXdbeSwapInfo  = ^XdbeSwapInfo;
    PXdbeVisualInfo  = ^XdbeVisualInfo;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef XDBE_H}
{$define XDBE_H}
{$include <X11/Xfuncproto.h>}
{$include <X11/extensions/dbe.h>}



type
  PXdbeVisualInfo = ^TXdbeVisualInfo;
  TXdbeVisualInfo = record
      visual : TVisualID;
      depth : longint;
      perflevel : longint;
    end;



  PXdbeScreenVisualInfo = ^TXdbeScreenVisualInfo;
  TXdbeScreenVisualInfo = record
      count : longint;
      visinfo : PXdbeVisualInfo;
    end;

  PXdbeBackBuffer = ^TXdbeBackBuffer;
  TXdbeBackBuffer = TDrawable;

  PXdbeSwapAction = ^TXdbeSwapAction;
  TXdbeSwapAction = byte;



  PXdbeSwapInfo = ^TXdbeSwapInfo;
  TXdbeSwapInfo = record
      swap_window : TWindow;
      swap_action : TXdbeSwapAction;
    end;


  PXdbeBackBufferAttributes = ^TXdbeBackBufferAttributes;
  TXdbeBackBufferAttributes = record
      window : TWindow;
    end;







  PXdbeBufferError = ^TXdbeBufferError;
  TXdbeBufferError = record
      _type : longint;
      display : PDisplay;
      buffer : TXdbeBackBuffer;
      serial : dword;
      error_code : byte;
      request_code : byte;
      minor_code : byte;
    end;

(* error 
extern Status XdbeQueryExtension(

in declaration at line 93 *)


function XdbeAllocateBackBufferName(para1:PDisplay; para2:TWindow; para3:TXdbeSwapAction):TXdbeBackBuffer;cdecl;external;

function XdbeDeallocateBackBufferName(para1:PDisplay; para2:TXdbeBackBuffer):TStatus;cdecl;external;

function XdbeSwapBuffers(para1:PDisplay; para2:PXdbeSwapInfo; para3:longint):TStatus;cdecl;external;

function XdbeBeginIdiom(para1:PDisplay):TStatus;cdecl;external;

function XdbeEndIdiom(para1:PDisplay):TStatus;cdecl;external;

function XdbeGetVisualInfo(para1:PDisplay; para2:PDrawable; para3:Plongint):PXdbeScreenVisualInfo;cdecl;external;

procedure XdbeFreeVisualInfo(para1:PXdbeScreenVisualInfo);cdecl;external;

function XdbeGetBackBufferAttributes(para1:PDisplay; para2:TXdbeBackBuffer):PXdbeBackBufferAttributes;cdecl;external;
{$endif}

(* error 


implementation


end.
