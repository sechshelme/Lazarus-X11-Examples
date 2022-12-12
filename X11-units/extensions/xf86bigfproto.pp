
unit xf86bigfproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/xf86bigfproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/xf86bigfproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/xf86bigfproto.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XF86BIGFPROTO_H_}
{$define _XF86BIGFPROTO_H_}  
{$include <X11/extensions/xf86bigfont.h>}

  const
    XF86BIGFONTNAME = 'XFree86-Bigfont';    

    XF86BIGFONT_MAJOR_VERSION = 1;    
    XF86BIGFONT_MINOR_VERSION = 1;    



  type
    _XF86BigfontQueryVersion = record
        reqType : CARD8;
        xf86bigfontReqType : CARD8;
        length : CARD16;
      end;
    xXF86BigfontQueryVersionReq = _XF86BigfontQueryVersion;

  const
    sz_xXF86BigfontQueryVersionReq = 4;    




  type
    xXF86BigfontQueryVersionReply = record
        _type : BYTE;
        capabilities : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        majorVersion : CARD16;
        minorVersion : CARD16;
        uid : CARD32;
        gid : CARD32;
        signature : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
      end;

  const
    sz_xXF86BigfontQueryVersionReply = 32;    

    XF86Bigfont_CAP_LocalShm = 1;    



  type
    _XF86BigfontQueryFont = record
        reqType : CARD8;
        xf86bigfontReqType : CARD8;
        length : CARD16;
        id : CARD32;
        flags : CARD32;
      end;
    xXF86BigfontQueryFontReq = _XF86BigfontQueryFont;

  const
    sz_xXF86BigfontQueryFontReq = 12;    

{$ifndef WORD64}
{$endif}
{$ifndef WORD64}
{$endif}



  type
    xXF86BigfontQueryFontReply = record
        _type : BYTE;
        pad1 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        minBounds : xCharInfo;
        walign1 : CARD32;
        maxBounds : xCharInfo;
        walign2 : CARD32;
        minCharOrByte2 : CARD16;
        maxCharOrByte2 : CARD16;
        defaultChar : CARD16;
        nFontProps : CARD16;
        drawDirection : CARD8;
        minByte1 : CARD8;
        maxByte1 : CARD8;
        allCharsExist : BOOL;
        fontAscent : INT16;
        fontDescent : INT16;
        nCharInfos : CARD32;
        nUniqCharInfos : CARD32;
        shmid : CARD32;
        shmsegoffset : CARD32;
      end;

  const
    sz_xXF86BigfontQueryFontReply = 72;    

    XF86Bigfont_FLAGS_Shm = 1;    
{$endif}


implementation


end.
