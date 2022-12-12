
unit EVIproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/EVIproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/EVIproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/EVIproto.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _EVIPROTO_H_}
{$define _EVIPROTO_H_}  
{$include <X11/extensions/EVI.h>}

  const
    X_EVIQueryVersion = 0;    
    X_EVIGetVisualInfo = 1;    
    VisualID = CARD32;    

  type
    VisualID32 = CARD32;

  const
    sz_VisualID32 = 4;    

  type
    _xExtendedVisualInfo = record
        core_visual_id : VisualID;
        screen : INT8;
        level : INT8;
        transparency_type : CARD8;
        pad0 : CARD8;
        transparency_value : CARD32;
        min_hw_colormaps : CARD8;
        max_hw_colormaps : CARD8;
        num_colormap_conflicts : CARD16;
      end;
    xExtendedVisualInfo = _xExtendedVisualInfo;

  const
    sz_xExtendedVisualInfo = 16;    



  type
    _XEVIQueryVersion = record
        reqType : CARD8;
        xeviReqType : CARD8;
        length : CARD16;
      end;
    xEVIQueryVersionReq = _XEVIQueryVersion;

  const
    sz_xEVIQueryVersionReq = 4;    




  type
    xEVIQueryVersionReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        majorVersion : CARD16;
        minorVersion : CARD16;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;

  const
    sz_xEVIQueryVersionReply = 32;    



  type
    _XEVIGetVisualInfoReq = record
        reqType : CARD8;
        xeviReqType : CARD8;
        length : CARD16;
        n_visual : CARD32;
      end;
    xEVIGetVisualInfoReq = _XEVIGetVisualInfoReq;

  const
    sz_xEVIGetVisualInfoReq = 8;    


  type
    _XEVIGetVisualInfoReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        n_info : CARD32;
        n_conflicts : CARD32;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
      end;
    xEVIGetVisualInfoReply = _XEVIGetVisualInfoReply;

  const
    sz_xEVIGetVisualInfoReply = 32;    
{$undef VisualID}
{$endif}


implementation


end.
