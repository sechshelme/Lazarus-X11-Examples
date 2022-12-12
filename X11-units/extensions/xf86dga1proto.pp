
unit xf86dga1proto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/xf86dga1proto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/xf86dga1proto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/xf86dga1proto.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XF86DGAPROTO1_H_}
{$define _XF86DGAPROTO1_H_}  
{$include <X11/extensions/xf86dga1const.h>}



  type
    _XF86DGAQueryVersion = record
        reqType : CARD8;
        dgaReqType : CARD8;
        length : CARD16;
      end;
    xXF86DGAQueryVersionReq = _XF86DGAQueryVersion;

  const
    sz_xXF86DGAQueryVersionReq = 4;    




  type
    xXF86DGAQueryVersionReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        majorVersion : CARD16;
        minorVersion : CARD16;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xXF86DGAQueryVersionReply = 32;    



  type
    _XF86DGAGetVideoLL = record
        reqType : CARD8;
        dgaReqType : CARD8;
        length : CARD16;
        screen : CARD16;
        pad : CARD16;
      end;
    xXF86DGAGetVideoLLReq = _XF86DGAGetVideoLL;

  const
    sz_xXF86DGAGetVideoLLReq = 8;    


  type
    _XF86DGAInstallColormap = record
        reqType : CARD8;
        dgaReqType : CARD8;
        length : CARD16;
        screen : CARD16;
        pad2 : CARD16;
        id : CARD32;
      end;
    xXF86DGAInstallColormapReq = _XF86DGAInstallColormap;

  const
    sz_xXF86DGAInstallColormapReq = 12;    

  type
    xXF86DGAGetVideoLLReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        offset : CARD32;
        width : CARD32;
        bank_size : CARD32;
        ram_size : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xXF86DGAGetVideoLLReply = 32;    



  type
    _XF86DGADirectVideo = record
        reqType : CARD8;
        dgaReqType : CARD8;
        length : CARD16;
        screen : CARD16;
        enable : CARD16;
      end;
    xXF86DGADirectVideoReq = _XF86DGADirectVideo;

  const
    sz_xXF86DGADirectVideoReq = 8;    



  type
    _XF86DGAGetViewPortSize = record
        reqType : CARD8;
        dgaReqType : CARD8;
        length : CARD16;
        screen : CARD16;
        pad : CARD16;
      end;
    xXF86DGAGetViewPortSizeReq = _XF86DGAGetViewPortSize;

  const
    sz_xXF86DGAGetViewPortSizeReq = 8;    

  type
    xXF86DGAGetViewPortSizeReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        width : CARD32;
        height : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xXF86DGAGetViewPortSizeReply = 32;    



  type
    _XF86DGASetViewPort = record
        reqType : CARD8;
        dgaReqType : CARD8;
        length : CARD16;
        screen : CARD16;
        pad : CARD16;
        x : CARD32;
        y : CARD32;
      end;
    xXF86DGASetViewPortReq = _XF86DGASetViewPort;

  const
    sz_xXF86DGASetViewPortReq = 16;    



  type
    _XF86DGAGetVidPage = record
        reqType : CARD8;
        dgaReqType : CARD8;
        length : CARD16;
        screen : CARD16;
        pad : CARD16;
      end;
    xXF86DGAGetVidPageReq = _XF86DGAGetVidPage;

  const
    sz_xXF86DGAGetVidPageReq = 8;    

  type
    xXF86DGAGetVidPageReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        vpage : CARD32;
        pad : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xXF86DGAGetVidPageReply = 32;    



  type
    _XF86DGASetVidPage = record
        reqType : CARD8;
        dgaReqType : CARD8;
        length : CARD16;
        screen : CARD16;
        vpage : CARD16;
      end;
    xXF86DGASetVidPageReq = _XF86DGASetVidPage;

  const
    sz_xXF86DGASetVidPageReq = 8;    



  type
    _XF86DGAQueryDirectVideo = record
        reqType : CARD8;
        dgaReqType : CARD8;
        length : CARD16;
        screen : CARD16;
        pad : CARD16;
      end;
    xXF86DGAQueryDirectVideoReq = _XF86DGAQueryDirectVideo;

  const
    sz_xXF86DGAQueryDirectVideoReq = 8;    

  type
    xXF86DGAQueryDirectVideoReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        flags : CARD32;
        pad : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xXF86DGAQueryDirectVideoReply = 32;    



  type
    _XF86DGAViewPortChanged = record
        reqType : CARD8;
        dgaReqType : CARD8;
        length : CARD16;
        screen : CARD16;
        n : CARD16;
      end;
    xXF86DGAViewPortChangedReq = _XF86DGAViewPortChanged;

  const
    sz_xXF86DGAViewPortChangedReq = 8;    

  type
    xXF86DGAViewPortChangedReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        result : CARD32;
        pad : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xXF86DGAViewPortChangedReply = 32;    
{$endif}


implementation


end.
