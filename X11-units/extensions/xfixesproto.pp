
unit xfixesproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/xfixesproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/xfixesproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/xfixesproto.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XFIXESPROTO_H_}
{$define _XFIXESPROTO_H_}  
{$include <X11/Xmd.h>}
{$include <X11/extensions/xfixeswire.h>}
{$include <X11/extensions/shapeconst.h>}

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


  type
    xXFixesReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
      end;


    xXFixesQueryVersionReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
        majorVersion : CARD32;
        minorVersion : CARD32;
      end;

  const
    sz_xXFixesQueryVersionReq = 12;    


  type
    xXFixesQueryVersionReply = record
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
    sz_xXFixesQueryVersionReply = 32;    




  type
    xXFixesChangeSaveSetReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
        mode : BYTE;
        target : BYTE;
        map : BYTE;
        pad1 : BYTE;
        window : Window;
      end;

  const
    sz_xXFixesChangeSaveSetReq = 12;    

  type
    xXFixesSelectSelectionInputReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
        window : Window;
        selection : Atom;
        eventMask : CARD32;
      end;

  const
    sz_xXFixesSelectSelectionInputReq = 16;    

  type
    xXFixesSelectionNotifyEvent = record
        _type : CARD8;
        subtype : CARD8;
        sequenceNumber : CARD16;
        window : Window;
        owner : Window;
        selection : Atom;
        timestamp : Time;
        selectionTimestamp : Time;
        pad2 : CARD32;
        pad3 : CARD32;
      end;

    xXFixesSelectCursorInputReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
        window : Window;
        eventMask : CARD32;
      end;

  const
    sz_xXFixesSelectCursorInputReq = 12;    


  type
    xXFixesCursorNotifyEvent = record
        _type : CARD8;
        subtype : CARD8;
        sequenceNumber : CARD16;
        window : Window;
        cursorSerial : CARD32;
        timestamp : Time;
        name : Atom;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
      end;

    xXFixesGetCursorImageReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
      end;

  const
    sz_xXFixesGetCursorImageReq = 4;    


  type
    xXFixesGetCursorImageReply = record
        _type : BYTE;
        pad1 : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        x : INT16;
        y : INT16;
        width : CARD16;
        height : CARD16;
        xhot : CARD16;
        yhot : CARD16;
        cursorSerial : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
      end;

  const
    sz_xXFixesGetCursorImageReply = 32;    

    Region = CARD32;    


  type
    xXFixesCreateRegionReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
        region : Region;
      end;

  const
    sz_xXFixesCreateRegionReq = 8;    

  type
    xXFixesCreateRegionFromBitmapReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
        region : Region;
        bitmap : Pixmap;
      end;

  const
    sz_xXFixesCreateRegionFromBitmapReq = 12;    

  type
    xXFixesCreateRegionFromWindowReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
        region : Region;
        window : Window;
        kind : CARD8;
        pad1 : CARD8;
        pad2 : CARD16;
      end;

  const
    sz_xXFixesCreateRegionFromWindowReq = 16;    

  type
    xXFixesCreateRegionFromGCReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
        region : Region;
        gc : GContext;
      end;

  const
    sz_xXFixesCreateRegionFromGCReq = 12;    

  type
    xXFixesCreateRegionFromPictureReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
        region : Region;
        picture : Picture;
      end;

  const
    sz_xXFixesCreateRegionFromPictureReq = 12;    

  type
    xXFixesDestroyRegionReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
        region : Region;
      end;

  const
    sz_xXFixesDestroyRegionReq = 8;    


  type
    xXFixesSetRegionReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
        region : Region;
      end;

  const
    sz_xXFixesSetRegionReq = 8;    

  type
    xXFixesCopyRegionReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
        source : Region;
        destination : Region;
      end;

  const
    sz_xXFixesCopyRegionReq = 12;    

  type
    xXFixesCombineRegionReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
        source1 : Region;
        source2 : Region;
        destination : Region;
      end;
    xXFixesUnionRegionReq = xXFixesCombineRegionReq;
    xXFixesIntersectRegionReq = xXFixesCombineRegionReq;
    xXFixesSubtractRegionReq = xXFixesCombineRegionReq;

  const
    sz_xXFixesCombineRegionReq = 16;    
    sz_xXFixesUnionRegionReq = sz_xXFixesCombineRegionReq;    
    sz_xXFixesIntersectRegionReq = sz_xXFixesCombineRegionReq;    
    sz_xXFixesSubtractRegionReq = sz_xXFixesCombineRegionReq;    

  type
    xXFixesInvertRegionReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
        source : Region;
        x : INT16;
        y : INT16;
        width : CARD16;
        height : CARD16;
        destination : Region;
      end;

  const
    sz_xXFixesInvertRegionReq = 20;    

  type
    xXFixesTranslateRegionReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
        region : Region;
        dx : INT16;
        dy : INT16;
      end;

  const
    sz_xXFixesTranslateRegionReq = 12;    

  type
    xXFixesRegionExtentsReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
        source : Region;
        destination : Region;
      end;

  const
    sz_xXFixesRegionExtentsReq = 12;    

  type
    xXFixesFetchRegionReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
        region : Region;
      end;

  const
    sz_xXFixesFetchRegionReq = 8;    


  type
    xXFixesFetchRegionReply = record
        _type : BYTE;
        pad1 : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        x : INT16;
        y : INT16;
        width : CARD16;
        height : CARD16;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xXFixesFetchRegionReply = 32;    

  type
    xXFixesSetGCClipRegionReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
        gc : GContext;
        region : Region;
        xOrigin : INT16;
        yOrigin : INT16;
      end;

  const
    sz_xXFixesSetGCClipRegionReq = 16;    

  type
    xXFixesSetWindowShapeRegionReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
        dest : Window;
        destKind : BYTE;
        pad1 : CARD8;
        pad2 : CARD16;
        xOff : INT16;
        yOff : INT16;
        region : Region;
      end;

  const
    sz_xXFixesSetWindowShapeRegionReq = 20;    

  type
    xXFixesSetPictureClipRegionReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
        picture : Picture;
        region : Region;
        xOrigin : INT16;
        yOrigin : INT16;
      end;

  const
    sz_xXFixesSetPictureClipRegionReq = 16;    

  type
    xXFixesSetCursorNameReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
        cursor : Cursor;
        nbytes : CARD16;
        pad : CARD16;
      end;

  const
    sz_xXFixesSetCursorNameReq = 12;    

  type
    xXFixesGetCursorNameReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
        cursor : Cursor;
      end;

  const
    sz_xXFixesGetCursorNameReq = 8;    


  type
    xXFixesGetCursorNameReply = record
        _type : BYTE;
        pad1 : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        atom : Atom;
        nbytes : CARD16;
        pad2 : CARD16;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xXFixesGetCursorNameReply = 32;    

  type
    xXFixesGetCursorImageAndNameReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
      end;

  const
    sz_xXFixesGetCursorImageAndNameReq = 4;    


  type
    xXFixesGetCursorImageAndNameReply = record
        _type : BYTE;
        pad1 : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        x : INT16;
        y : INT16;
        width : CARD16;
        height : CARD16;
        xhot : CARD16;
        yhot : CARD16;
        cursorSerial : CARD32;
        cursorName : Atom;
        nbytes : CARD16;
        pad : CARD16;
      end;

  const
    sz_xXFixesGetCursorImageAndNameReply = 32;    

  type
    xXFixesChangeCursorReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
        source : Cursor;
        destination : Cursor;
      end;

  const
    sz_xXFixesChangeCursorReq = 12;    

  type
    xXFixesChangeCursorByNameReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
        source : Cursor;
        nbytes : CARD16;
        pad : CARD16;
      end;

  const
    sz_xXFixesChangeCursorByNameReq = 12;    


  type
    xXFixesExpandRegionReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
        source : Region;
        destination : Region;
        left : CARD16;
        right : CARD16;
        top : CARD16;
        bottom : CARD16;
      end;

  const
    sz_xXFixesExpandRegionReq = 20;    


  type
    xXFixesHideCursorReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
        window : Window;
      end;

  function sz_xXFixesHideCursorReq : longint; { return type might be wrong }


  type
    xXFixesShowCursorReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
        window : Window;
      end;

  function sz_xXFixesShowCursorReq : longint; { return type might be wrong }


  const
    Barrier = CARD32;    


  type
    xXFixesCreatePointerBarrierReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
        barrier : Barrier;
        window : Window;
        x1 : INT16;
        y1 : INT16;
        x2 : INT16;
        y2 : INT16;
        directions : CARD32;
        pad : CARD16;
        num_devices : CARD16;
      end;

  const
    sz_xXFixesCreatePointerBarrierReq = 28;    

  type
    xXFixesDestroyPointerBarrierReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
        barrier : Barrier;
      end;

  const
    sz_xXFixesDestroyPointerBarrierReq = 8;    


  type
    xXFixesSetClientDisconnectModeReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
        disconnect_mode : CARD32;
      end;

  const
    sz_xXFixesSetClientDisconnectModeReq = 8;    

  type
    xXFixesGetClientDisconnectModeReq = record
        reqType : CARD8;
        xfixesReqType : CARD8;
        length : CARD16;
      end;

  const
    sz_xXFixesGetClientDisconnectModeReq = 4;    


  type
    xXFixesGetClientDisconnectModeReply = record
        _type : BYTE;
        pad0 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        disconnect_mode : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xXFixesGetClientDisconnectModeReply = 32;    
{$undef Barrier}
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

  function sz_xXFixesHideCursorReq : longint; { return type might be wrong }
    begin
      sz_xXFixesHideCursorReq:=sizeof(xXFixesHideCursorReq);
    end;

  function sz_xXFixesShowCursorReq : longint; { return type might be wrong }
    begin
      sz_xXFixesShowCursorReq:=sizeof(xXFixesShowCursorReq);
    end;


end.
