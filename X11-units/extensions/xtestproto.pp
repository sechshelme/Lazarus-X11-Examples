
unit xtestproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/xtestproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/xtestproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/xtestproto.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XTESTPROTO_H_}
{$define _XTESTPROTO_H_}  
{$include <X11/extensions/xtestconst.h>}

  const
    Window = CARD32;    
    Time = CARD32;    
    Cursor = CARD32;    
    X_XTestGetVersion = 0;    
    X_XTestCompareCursor = 1;    
    X_XTestFakeInput = 2;    
    X_XTestGrabControl = 3;    



  type
    xXTestGetVersionReq = record
        reqType : CARD8;
        xtReqType : CARD8;
        length : CARD16;
        majorVersion : CARD8;
        pad : CARD8;
        minorVersion : CARD16;
      end;

  const
    sz_xXTestGetVersionReq = 8;    


  type
    xXTestGetVersionReply = record
        _type : BYTE;
        majorVersion : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        minorVersion : CARD16;
        pad0 : CARD16;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xXTestGetVersionReply = 32;    



  type
    xXTestCompareCursorReq = record
        reqType : CARD8;
        xtReqType : CARD8;
        length : CARD16;
        window : Window;
        cursor : Cursor;
      end;

  const
    sz_xXTestCompareCursorReq = 12;    


  type
    xXTestCompareCursorReply = record
        _type : BYTE;
        same : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xXTestCompareCursorReply = 32;    




  type
    xXTestFakeInputReq = record
        reqType : CARD8;
        xtReqType : CARD8;
        length : CARD16;
        _type : BYTE;
        detail : BYTE;
        pad0 : CARD16;
        time : Time;
        root : Window;
        pad1 : CARD32;
        pad2 : CARD32;
        rootX : INT16;
        rootY : INT16;
        pad3 : CARD32;
        pad4 : CARD16;
        pad5 : CARD8;
        deviceid : CARD8;
      end;

  const
    sz_xXTestFakeInputReq = 36;    



  type
    xXTestGrabControlReq = record
        reqType : CARD8;
        xtReqType : CARD8;
        length : CARD16;
        impervious : BOOL;
        pad0 : CARD8;
        pad1 : CARD8;
        pad2 : CARD8;
      end;

  const
    sz_xXTestGrabControlReq = 8;    
{$undef Window}
{$undef Time}
{$undef Cursor}
{$endif}


implementation


end.
