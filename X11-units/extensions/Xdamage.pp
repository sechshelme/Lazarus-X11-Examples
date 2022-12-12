
unit Xdamage;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/Xdamage.h
  The following command line parameters were used:
    /usr/include/X11/extensions/Xdamage.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/Xdamage.pp
}

  Type
  PDisplay  = ^Display;
  Plongint  = ^longint;
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
    Damage = XID;



    XDamageNotifyEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        drawable : Drawable;
        damage : Damage;
        level : longint;
        more : Bool;
        timestamp : Time;
        area : XRectangle;
        geometry : XRectangle;
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

  function XDamageQueryVersion(dpy:PDisplay; major_version_return:Plongint; minor_version_return:Plongint):Status;

  function XDamageCreate(dpy:PDisplay; drawable:Drawable; level:longint):Damage;

  procedure XDamageDestroy(dpy:PDisplay; damage:Damage);

  procedure XDamageSubtract(dpy:PDisplay; damage:Damage; repair:XserverRegion; parts:XserverRegion);

  procedure XDamageAdd(dpy:PDisplay; drawable:Drawable; region:XserverRegion);

{$endif}

(* error 
#endif /* _XDAMAGE_H_ */

implementation

  function XDamageQueryVersion(dpy:PDisplay; major_version_return:Plongint; minor_version_return:Plongint):Status;
  begin
    { You must implement this function }
  end;
  function XDamageCreate(dpy:PDisplay; drawable:Drawable; level:longint):Damage;
  begin
    { You must implement this function }
  end;
  procedure XDamageDestroy(dpy:PDisplay; damage:Damage);
  begin
    { You must implement this function }
  end;
  procedure XDamageSubtract(dpy:PDisplay; damage:Damage; repair:XserverRegion; parts:XserverRegion);
  begin
    { You must implement this function }
  end;
  procedure XDamageAdd(dpy:PDisplay; drawable:Drawable; region:XserverRegion);
  begin
    { You must implement this function }
  end;

end.
