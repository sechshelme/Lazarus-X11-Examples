
unit geproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/geproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/geproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/geproto.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _GEPROTO_H_}
{$define _GEPROTO_H_}  
{$include<X11/Xproto.h>}
{$include<X11/X.h>}
{$include<X11/extensions/ge.h>}


  const
    X_GEGetExtensionVersion = 1;    



  type
    xGEReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
      end;




    xGEQueryVersionReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        majorVersion : CARD16;
        minorVersion : CARD16;
      end;

  const
    sz_xGEQueryVersionReq = 8;    



  type
    xGEQueryVersionReply = record
        repType : CARD8;
        RepType : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        majorVersion : CARD16;
        minorVersion : CARD16;
        pad00 : CARD32;
        pad01 : CARD32;
        pad02 : CARD32;
        pad03 : CARD32;
        pad04 : CARD32;
      end;

  const
    sz_xGEQueryVersionReply = 32;    
{$endif}


implementation


end.
