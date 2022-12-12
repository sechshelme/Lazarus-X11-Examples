
unit Xdamage;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xdamage.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xdamage.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xdamage.pp
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
PDamage  = ^Damage;
PDisplay  = ^Display;
Plongint  = ^longint;
PXDamageNotifyEvent  = ^XDamageNotifyEvent;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XDAMAGE_H_}
{$define _XDAMAGE_H_}
{$include <X11/extensions/damagewire.h>}
{$include <X11/extensions/Xfixes.h>}
{$include <X11/Xfuncproto.h>}
{$define XDAMAGE_1_1_INTERFACE}
type
  PDamage = ^TDamage;
  TDamage = TXID;



  PXDamageNotifyEvent = ^TXDamageNotifyEvent;
  TXDamageNotifyEvent = record
      _type : longint;
      serial : dword;
      send_event : TBool;
      display : PDisplay;
      drawable : TDrawable;
      damage : TDamage;
      level : longint;
      more : TBool;
      timestamp : TTime;
      area : TXRectangle;
      geometry : TXRectangle;
    end;
(* error 
Bool XDamageQueryExtension (Display *dpy,
(* error 
                            int *event_base_return,
(* error 
                            int *error_base_return);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

function XDamageQueryVersion(dpy:PDisplay; major_version_return:Plongint; minor_version_return:Plongint):TStatus;cdecl;external;
function XDamageCreate(dpy:PDisplay; drawable:TDrawable; level:longint):TDamage;cdecl;external;
procedure XDamageDestroy(dpy:PDisplay; damage:TDamage);cdecl;external;
procedure XDamageSubtract(dpy:PDisplay; damage:TDamage; repair:TXserverRegion; parts:TXserverRegion);cdecl;external;
procedure XDamageAdd(dpy:PDisplay; drawable:TDrawable; region:TXserverRegion);cdecl;external;
{$endif}

(* error 
#endif /* _XDAMAGE_H_ */

implementation


end.
