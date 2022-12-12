
unit damageproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/damageproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/damageproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/damageproto.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _DAMAGEPROTO_H_}
{$define _DAMAGEPROTO_H_}  
{$include <X11/Xmd.h>}
{$include <X11/extensions/xfixesproto.h>}
{$include <X11/extensions/damagewire.h>}

  const
    Window = CARD32;    
    Drawable = CARD32;    
    Font = CARD32;    
    Pixmap = CARD32;    
    Cursor = CARD32;    
    Colormap = CARD32;    
    GContext = CARD32;    
    Atom = CARD32;    
    VisualID = CARD32;    
    Time = CARD32;    
    KeyCode = CARD8;    
    KeySym = CARD32;    
    Picture = CARD32;    
    Region = CARD32;    
    Damage = CARD32;    


  type
    xDamageReq = record
        reqType : CARD8;
        damageReqType : CARD8;
        length : CARD16;
      end;


    xDamageQueryVersionReq = record
        reqType : CARD8;
        damageReqType : CARD8;
        length : CARD16;
        majorVersion : CARD32;
        minorVersion : CARD32;
      end;

  const
    sz_xDamageQueryVersionReq = 12;    


  type
    xDamageQueryVersionReply = record
        _type : BYTE;
        pad1 : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        majorVersion : CARD32;
        minorVersion : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xDamageQueryVersionReply = 32;    

  type
    xDamageCreateReq = record
        reqType : CARD8;
        damageReqType : CARD8;
        length : CARD16;
        damage : Damage;
        drawable : Drawable;
        level : CARD8;
        pad1 : CARD8;
        pad2 : CARD16;
      end;

  const
    sz_xDamageCreateReq = 16;    

  type
    xDamageDestroyReq = record
        reqType : CARD8;
        damageReqType : CARD8;
        length : CARD16;
        damage : Damage;
      end;

  const
    sz_xDamageDestroyReq = 8;    

  type
    xDamageSubtractReq = record
        reqType : CARD8;
        damageReqType : CARD8;
        length : CARD16;
        damage : Damage;
        repair : Region;
        parts : Region;
      end;

  const
    sz_xDamageSubtractReq = 16;    

  type
    xDamageAddReq = record
        reqType : CARD8;
        damageReqType : CARD8;
        length : CARD16;
        drawable : Drawable;
        region : Region;
      end;

  const
    sz_xDamageAddReq = 12;    

    DamageNotifyMore = $80;    

  type
    xDamageNotifyEvent = record
        _type : CARD8;
        level : CARD8;
        sequenceNumber : CARD16;
        drawable : Drawable;
        damage : Damage;
        timestamp : Time;
        area : xRectangle;
        geometry : xRectangle;
      end;
{$undef Damage}
{$undef Region}
{$undef Picture}
{$undef Window}
{$undef Drawable}
{$undef Font}
{$undef Pixmap}
{$undef Cursor}
{$undef Colormap}
{$undef GContext}
{$undef Atom}
{$undef VisualID}
{$undef Time}
{$undef KeyCode}
{$undef KeySym}
{$endif}


implementation


end.
