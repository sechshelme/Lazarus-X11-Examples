
unit shmproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/shmproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/shmproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/shmproto.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _SHMPROTO_H_}
{$define _SHMPROTO_H_}  
{$include <X11/extensions/shm.h>}

  const
    ShmSeg = CARD32;    
    Drawable = CARD32;    
    VisualID = CARD32;    
    GContext = CARD32;    
    Pixmap = CARD32;    
    X_ShmQueryVersion = 0;    
    X_ShmAttach = 1;    
    X_ShmDetach = 2;    
    X_ShmPutImage = 3;    
    X_ShmGetImage = 4;    
    X_ShmCreatePixmap = 5;    
    X_ShmAttachFd = 6;    
    X_ShmCreateSegment = 7;    



  type
    _ShmQueryVersion = record
        reqType : CARD8;
        shmReqType : CARD8;
        length : CARD16;
      end;
    xShmQueryVersionReq = _ShmQueryVersion;

  const
    sz_xShmQueryVersionReq = 4;    




  type
    xShmQueryVersionReply = record
        _type : BYTE;
        sharedPixmaps : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        majorVersion : CARD16;
        minorVersion : CARD16;
        uid : CARD16;
        gid : CARD16;
        pixmapFormat : CARD8;
        pad0 : CARD8;
        pad1 : CARD16;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;

  const
    sz_xShmQueryVersionReply = 32;    



  type
    _ShmAttach = record
        reqType : CARD8;
        shmReqType : CARD8;
        length : CARD16;
        shmseg : ShmSeg;
        shmid : CARD32;
        readOnly : BOOL;
        pad0 : BYTE;
        pad1 : CARD16;
      end;
    xShmAttachReq = _ShmAttach;

  const
    sz_xShmAttachReq = 16;    



  type
    _ShmDetach = record
        reqType : CARD8;
        shmReqType : CARD8;
        length : CARD16;
        shmseg : ShmSeg;
      end;
    xShmDetachReq = _ShmDetach;

  const
    sz_xShmDetachReq = 8;    



  type
    _ShmPutImage = record
        reqType : CARD8;
        shmReqType : CARD8;
        length : CARD16;
        drawable : Drawable;
        gc : GContext;
        totalWidth : CARD16;
        totalHeight : CARD16;
        srcX : CARD16;
        srcY : CARD16;
        srcWidth : CARD16;
        srcHeight : CARD16;
        dstX : INT16;
        dstY : INT16;
        depth : CARD8;
        format : CARD8;
        sendEvent : CARD8;
        bpad : CARD8;
        shmseg : ShmSeg;
        offset : CARD32;
      end;
    xShmPutImageReq = _ShmPutImage;

  const
    sz_xShmPutImageReq = 40;    



  type
    _ShmGetImage = record
        reqType : CARD8;
        shmReqType : CARD8;
        length : CARD16;
        drawable : Drawable;
        x : INT16;
        y : INT16;
        width : CARD16;
        height : CARD16;
        planeMask : CARD32;
        format : CARD8;
        pad0 : CARD8;
        pad1 : CARD8;
        pad2 : CARD8;
        shmseg : ShmSeg;
        offset : CARD32;
      end;
    xShmGetImageReq = _ShmGetImage;

  const
    sz_xShmGetImageReq = 32;    


  type
    _ShmGetImageReply = record
        _type : BYTE;
        depth : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        visual : VisualID;
        size : CARD32;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
      end;
    xShmGetImageReply = _ShmGetImageReply;

  const
    sz_xShmGetImageReply = 32;    



  type
    _ShmCreatePixmap = record
        reqType : CARD8;
        shmReqType : CARD8;
        length : CARD16;
        pid : Pixmap;
        drawable : Drawable;
        width : CARD16;
        height : CARD16;
        depth : CARD8;
        pad0 : CARD8;
        pad1 : CARD8;
        pad2 : CARD8;
        shmseg : ShmSeg;
        offset : CARD32;
      end;
    xShmCreatePixmapReq = _ShmCreatePixmap;

  const
    sz_xShmCreatePixmapReq = 28;    


  type
    _ShmCompletion = record
        _type : BYTE;
        bpad0 : BYTE;
        sequenceNumber : CARD16;
        drawable : Drawable;
        minorEvent : CARD16;
        majorEvent : BYTE;
        bpad1 : BYTE;
        shmseg : ShmSeg;
        offset : CARD32;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
      end;
    xShmCompletionEvent = _ShmCompletion;

  const
    sz_xShmCompletionEvent = 32;    




  type
    _ShmAttachFd = record
        reqType : CARD8;
        shmReqType : CARD8;
        length : CARD16;
        shmseg : ShmSeg;
        readOnly : BOOL;
        pad0 : BYTE;
        pad1 : CARD16;
      end;
    xShmAttachFdReq = _ShmAttachFd;


  const
    sz_xShmAttachFdReq = 12;    



  type
    _ShmCreateSegment = record
        reqType : CARD8;
        shmReqType : CARD8;
        length : CARD16;
        shmseg : ShmSeg;
        size : CARD32;
        readOnly : BOOL;
        pad0 : BYTE;
        pad1 : CARD16;
      end;
    xShmCreateSegmentReq = _ShmCreateSegment;

  const
    sz_xShmCreateSegmentReq = 16;    











  type
    xShmCreateSegmentReply = record
        _type : CARD8;
        nfd : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
        pad7 : CARD32;
      end;


  const
    sz_xShmCreateSegmentReply = 32;    
{$undef ShmSeg}
{$undef Drawable}
{$undef VisualID}
{$undef GContext}
{$undef Pixmap}
{$endif}


implementation


end.
