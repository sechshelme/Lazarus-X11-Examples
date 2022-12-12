
unit compositeproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/compositeproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/compositeproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/compositeproto.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _COMPOSITEPROTO_H_}
{$define _COMPOSITEPROTO_H_}  
{$include <X11/Xmd.h>}
{$include <X11/extensions/composite.h>}

  const
    Window = CARD32;    
    Region = CARD32;    
    Pixmap = CARD32;    


  type
    xCompositeQueryVersionReq = record
        reqType : CARD8;
        compositeReqType : CARD8;
        length : CARD16;
        majorVersion : CARD32;
        minorVersion : CARD32;
      end;

  const
    sz_xCompositeQueryVersionReq = 12;    


  type
    xCompositeQueryVersionReply = record
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
    sz_xCompositeQueryVersionReply = 32;    

  type
    xCompositeRedirectWindowReq = record
        reqType : CARD8;
        compositeReqType : CARD8;
        length : CARD16;
        window : Window;
        update : CARD8;
        pad1 : CARD8;
        pad2 : CARD16;
      end;

  const
    sz_xCompositeRedirectWindowReq = 12;    

  type
    xCompositeRedirectSubwindowsReq = record
        reqType : CARD8;
        compositeReqType : CARD8;
        length : CARD16;
        window : Window;
        update : CARD8;
        pad1 : CARD8;
        pad2 : CARD16;
      end;

  const
    sz_xCompositeRedirectSubwindowsReq = 12;    

  type
    xCompositeUnredirectWindowReq = record
        reqType : CARD8;
        compositeReqType : CARD8;
        length : CARD16;
        window : Window;
        update : CARD8;
        pad1 : CARD8;
        pad2 : CARD16;
      end;

  const
    sz_xCompositeUnredirectWindowReq = 12;    

  type
    xCompositeUnredirectSubwindowsReq = record
        reqType : CARD8;
        compositeReqType : CARD8;
        length : CARD16;
        window : Window;
        update : CARD8;
        pad1 : CARD8;
        pad2 : CARD16;
      end;

  const
    sz_xCompositeUnredirectSubwindowsReq = 12;    

  type
    xCompositeCreateRegionFromBorderClipReq = record
        reqType : CARD8;
        compositeReqType : CARD8;
        length : CARD16;
        region : Region;
        window : Window;
      end;

  const
    sz_xCompositeCreateRegionFromBorderClipReq = 12;    


  type
    xCompositeNameWindowPixmapReq = record
        reqType : CARD8;
        compositeReqType : CARD8;
        length : CARD16;
        window : Window;
        pixmap : Pixmap;
      end;

  const
    sz_xCompositeNameWindowPixmapReq = 12;    


  type
    xCompositeGetOverlayWindowReq = record
        reqType : CARD8;
        compositeReqType : CARD8;
        length : CARD16;
        window : Window;
      end;

  function sz_xCompositeGetOverlayWindowReq : longint; { return type might be wrong }



  type
    xCompositeGetOverlayWindowReply = record
        _type : BYTE;
        pad1 : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        overlayWin : Window;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  function sz_xCompositeGetOverlayWindowReply : longint; { return type might be wrong }


  type
    xCompositeReleaseOverlayWindowReq = record
        reqType : CARD8;
        compositeReqType : CARD8;
        length : CARD16;
        window : Window;
      end;

  function sz_xCompositeReleaseOverlayWindowReq : longint; { return type might be wrong }

{$undef Window}
{$undef Region}
{$undef Pixmap}
{$endif}


implementation

  function sz_xCompositeGetOverlayWindowReq : longint; { return type might be wrong }
    begin
      sz_xCompositeGetOverlayWindowReq:=sizeof(xCompositeGetOverlayWindowReq);
    end;

  function sz_xCompositeGetOverlayWindowReply : longint; { return type might be wrong }
    begin
      sz_xCompositeGetOverlayWindowReply:=sizeof(xCompositeGetOverlayWindowReply);
    end;

  function sz_xCompositeReleaseOverlayWindowReq : longint; { return type might be wrong }
    begin
      sz_xCompositeReleaseOverlayWindowReq:=sizeof(xCompositeReleaseOverlayWindowReq);
    end;


end.
