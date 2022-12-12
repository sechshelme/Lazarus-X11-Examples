
unit xtestext1;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xtestext1.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xtestext1.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xtestext1.pp
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
    Pdword  = ^dword;
    Plongint  = ^longint;
    PXTestFakeAckEvent  = ^XTestFakeAckEvent;
    PXTestInputActionEvent  = ^XTestInputActionEvent;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XTESTEXT1_H}
{$define _XTESTEXT1_H}

{$include <X11/extensions/xtestext1const.h>}


type
  PXTestInputActionEvent = ^TXTestInputActionEvent;
  TXTestInputActionEvent = record
      _type : longint;
      display : PDisplay;
      window : TWindow;
      actions : array[0..(XTestACTIONS_SIZE)-1] of TCARD8;
    end;



  PXTestFakeAckEvent = ^TXTestFakeAckEvent;
  TXTestFakeAckEvent = record
      _type : longint;
      display : PDisplay;
      window : TWindow;
    end;
(* error 
int XTestFakeInput(register Display *dpy, char *action_list_addr, int action_list_size, int ack_flag);
in declaration at line 86 *)
(* error 
int XTestGetInput(register Display *dpy, int action_handling);
(* error 
int XTestGetInput(register Display *dpy, int action_handling);
 in declarator_list *)
 in declarator_list *)
(* error 
int XTestQueryInputSize(register Display *dpy, unsigned long *size_return);
(* error 
int XTestQueryInputSize(register Display *dpy, unsigned long *size_return);
 in declarator_list *)
 in declarator_list *)

function XTestPressKey(display:PDisplay; device_id:longint; delay:dword; keycode:dword; key_action:dword):longint;cdecl;external;
function XTestPressButton(display:PDisplay; device_id:longint; delay:dword; button_number:dword; button_action:dword):longint;cdecl;external;
function XTestMovePointer(display:PDisplay; device_id:longint; delay:Pdword; x:Plongint; y:Plongint; 
               count:dword):longint;cdecl;external;
function XTestFlush(display:PDisplay):longint;cdecl;external;
(* error 
int XTestStopInput(register Display *dpy);
 in declarator_list *)
(* error 
int XTestReset(register Display *dpy);
 in declarator_list *)
{$endif}

(* error 
#endif /* _XTESTEXT1_H */

implementation


end.
