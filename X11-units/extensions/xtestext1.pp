
unit xtestext1;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/xtestext1.h
  The following command line parameters were used:
    /usr/include/X11/extensions/xtestext1.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/xtestext1.pp
}

    Type
    PDisplay  = ^Display;
    Pdword  = ^dword;
    Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XTESTEXT1_H}
{$define _XTESTEXT1_H}  

{$include <X11/extensions/xtestext1const.h>}



  type
    XTestInputActionEvent = record
        _type : longint;
        display : ^Display;
        window : Window;
        actions : array[0..(XTestACTIONS_SIZE)-1] of CARD8;
      end;



    XTestFakeAckEvent = record
        _type : longint;
        display : ^Display;
        window : Window;
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

    function XTestPressKey(display:PDisplay; device_id:longint; delay:dword; keycode:dword; key_action:dword):longint;

    function XTestPressButton(display:PDisplay; device_id:longint; delay:dword; button_number:dword; button_action:dword):longint;

    function XTestMovePointer(display:PDisplay; device_id:longint; delay:Pdword; x:Plongint; y:Plongint; 
               count:dword):longint;

    function XTestFlush(display:PDisplay):longint;

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

    function XTestPressKey(display:PDisplay; device_id:longint; delay:dword; keycode:dword; key_action:dword):longint;
    begin
      { You must implement this function }
    end;
    function XTestPressButton(display:PDisplay; device_id:longint; delay:dword; button_number:dword; button_action:dword):longint;
    begin
      { You must implement this function }
    end;
    function XTestMovePointer(display:PDisplay; device_id:longint; delay:Pdword; x:Plongint; y:Plongint; 
               count:dword):longint;
    begin
      { You must implement this function }
    end;
    function XTestFlush(display:PDisplay):longint;
    begin
      { You must implement this function }
    end;

end.
