
unit agproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/agproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/agproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/agproto.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _AGPROTO_H_ /* { */}
{$define _AGPROTO_H_}  
{$include <X11/extensions/ag.h>}

  const
    X_XagQueryVersion = 0;    
    X_XagCreate = 1;    
    X_XagDestroy = 2;    
    X_XagGetAttr = 3;    
    X_XagQuery = 4;    
    X_XagCreateAssoc = 5;    
    X_XagDestroyAssoc = 6;    
    XAppGroup = CARD32;    

    Colormap = CARD32;    
    VisualID = CARD32;    
    Window = CARD32;    



  type
    _XagQueryVersion = record
        reqType : CARD8;
        xagReqType : CARD8;
        length : CARD16;
        client_major_version : CARD16;
        client_minor_version : CARD16;
      end;
    xXagQueryVersionReq = _XagQueryVersion;

  const
    sz_xXagQueryVersionReq = 8;    


  type
    xXagQueryVersionReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequence_number : CARD16;
        length : CARD32;
        server_major_version : CARD16;
        server_minor_version : CARD16;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xXagQueryVersionReply = 32;    

(* error 
#define XagSingleScreenMask		1 << 0
in define line 78 *)
(* error 
#define XagDefaultRootMask		1 << XagNdefaultRoot
in define line 79 *)
(* error 
#define XagRootVisualMask		1 << XagNrootVisual
in define line 80 *)
(* error 
#define XagDefaultColormapMask		1 << XagNdefaultColormap
in define line 81 *)
(* error 
#define XagBlackPixelMask		1 << XagNblackPixel
in define line 82 *)
(* error 
#define XagWhitePixelMask		1 << XagNwhitePixel
in define line 83 *)
(* error 
#define XagAppGroupLeaderMask		1 << XagNappGroupLeader
in define line 84 *)




    type
      _XagCreate = record
          reqType : CARD8;
          xagReqType : CARD8;
          length : CARD16;
          app_group : XAppGroup;
          attrib_mask : CARD32;
        end;
      xXagCreateReq = _XagCreate;

    const
      sz_xXagCreateReq = 12;      



    type
      _XagDestroy = record
          reqType : CARD8;
          xagReqType : CARD8;
          length : CARD16;
          app_group : XAppGroup;
        end;
      xXagDestroyReq = _XagDestroy;

    const
      sz_xXagDestroyReq = 8;      



    type
      _XagGetAttr = record
          reqType : CARD8;
          xagReqType : CARD8;
          length : CARD16;
          app_group : XAppGroup;
        end;
      xXagGetAttrReq = _XagGetAttr;

    const
      sz_xXagGetAttrReq = 8;      


    type
      xXagGetAttrReply = record
          _type : BYTE;
          pad1 : BOOL;
          sequence_number : CARD16;
          length : CARD32;
          default_root : Window;
          root_visual : VisualID;
          default_colormap : Colormap;
          black_pixel : CARD32;
          white_pixel : CARD32;
          single_screen : BOOL;
          app_group_leader : BOOL;
          pad2 : CARD16;
        end;

    const
      sz_xXagGetAttrReply = 32;      



    type
      _XagQuery = record
          reqType : CARD8;
          xagReqType : CARD8;
          length : CARD16;
          resource : CARD32;
        end;
      xXagQueryReq = _XagQuery;

    const
      sz_xXagQueryReq = 8;      


    type
      xXagQueryReply = record
          _type : BYTE;
          pad1 : BOOL;
          sequence_number : CARD16;
          length : CARD32;
          app_group : XAppGroup;
          pad2 : CARD32;
          pad3 : CARD32;
          pad4 : CARD32;
          pad5 : CARD32;
          pad6 : CARD32;
        end;

    const
      sz_xXagQueryReply = 32;      




    type
      _XagCreateAssoc = record
          reqType : CARD8;
          xagReqType : CARD8;
          length : CARD16;
          window : Window;
          window_type : CARD16;
          system_window_len : CARD16;
        end;
      xXagCreateAssocReq = _XagCreateAssoc;

    const
      sz_xXagCreateAssocReq = 12;      



    type
      _XagDestroyAssoc = record
          reqType : CARD8;
          xagReqType : CARD8;
          length : CARD16;
          window : Window;
        end;
      xXagDestroyAssocReq = _XagDestroyAssoc;

    const
      sz_xXagDestroyAssocReq = 8;      
{$undef XAppGroup}

{$undef Window}
{$undef Colormap}
{$undef VisualID}
{$endif}


implementation


end.
