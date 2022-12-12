
unit scrnsaver;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/scrnsaver.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/scrnsaver.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/scrnsaver.pp
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
    PAtom  = ^Atom;
    PDisplay  = ^Display;
    Plongint  = ^longint;
    PVisual  = ^Visual;
    PXID  = ^XID;
    PXScreenSaverInfo  = ^XScreenSaverInfo;
    PXScreenSaverNotifyEvent  = ^XScreenSaverNotifyEvent;
    PXSetWindowAttributes  = ^XSetWindowAttributes;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _SCRNSAVER_H_}
{$define _SCRNSAVER_H_}
{$include <X11/Xfuncproto.h>}
{$include <X11/Xlib.h>}
{$include <X11/extensions/saver.h>}










type
  PXScreenSaverNotifyEvent = ^TXScreenSaverNotifyEvent;
  TXScreenSaverNotifyEvent = record
      _type : longint;
      serial : dword;
      send_event : TBool;
      display : PDisplay;
      window : TWindow;
      root : TWindow;
      state : longint;
      kind : longint;
      forced : TBool;
      time : TTime;
    end;







  PXScreenSaverInfo = ^TXScreenSaverInfo;
  TXScreenSaverInfo = record
      window : TWindow;
      state : longint;
      kind : longint;
      til_or_since : dword;
      idle : dword;
      eventMask : dword;
    end;
(* error 
extern Bool XScreenSaverQueryExtension (

in declaration at line 64 *)


function XScreenSaverQueryVersion(para1:PDisplay; para2:Plongint; para3:Plongint):TStatus;cdecl;external;
function XScreenSaverAllocInfo:PXScreenSaverInfo;cdecl;external;

function XScreenSaverQueryInfo(para1:PDisplay; para2:TDrawable; para3:PXScreenSaverInfo):TStatus;cdecl;external;

procedure XScreenSaverSelectInput(para1:PDisplay; para2:TDrawable; para3:dword);cdecl;external;

procedure XScreenSaverSetAttributes(para1:PDisplay; para2:TDrawable; para3:longint; para4:longint; para5:dword; 
                para6:dword; para7:dword; para8:longint; para9:dword; para10:PVisual; 
                para11:dword; para12:PXSetWindowAttributes);cdecl;external;

procedure XScreenSaverUnsetAttributes(para1:PDisplay; para2:TDrawable);cdecl;external;

function XScreenSaverRegister(para1:PDisplay; para2:longint; para3:TXID; para4:TAtom):TStatus;cdecl;external;

function XScreenSaverUnregister(para1:PDisplay; para2:longint):TStatus;cdecl;external;

function XScreenSaverGetRegistered(para1:PDisplay; para2:longint; para3:PXID; para4:PAtom):TStatus;cdecl;external;

procedure XScreenSaverSuspend(para1:PDisplay; para2:TBool);cdecl;external;
{$endif}

(* error 
#endif /* _SCRNSAVER_H_ */

implementation


end.
