
unit dbeproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/dbeproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/dbeproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/dbeproto.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef DBE_PROTO_H}
{$define DBE_PROTO_H}  
{$include <X11/extensions/dbe.h>}


  const
    X_DbeGetVersion = 0;    
    X_DbeAllocateBackBufferName = 1;    
    X_DbeDeallocateBackBufferName = 2;    
    X_DbeSwapBuffers = 3;    
    X_DbeBeginIdiom = 4;    
    X_DbeEndIdiom = 5;    
    X_DbeGetVisualInfo = 6;    
    X_DbeGetBackBufferAttributes = 7;    

  type
    xDbeSwapAction = CARD8;

    xDbeBackBuffer = CARD32;






    xDbeSwapInfo = record
        window : CARD32;
        swapAction : xDbeSwapAction;
        pad1 : CARD8;
        pad2 : CARD16;
      end;




    xDbeVisInfo = record
        visualID : CARD32;
        depth : CARD8;
        perfLevel : CARD8;
        pad1 : CARD16;
      end;

  const
    sz_xDbeVisInfo = 8;    


  type
    xDbeScreenVisInfo = record
        n : CARD32;
      end;



    xDbeBufferAttributes = record
        window : CARD32;
      end;








    xDbeGetVersionReq = record
        reqType : CARD8;
        dbeReqType : CARD8;
        length : CARD16;
        majorVersion : CARD8;
        minorVersion : CARD8;
        unused : CARD16;
      end;

  const
    sz_xDbeGetVersionReq = 8;    








  type
    xDbeGetVersionReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        majorVersion : CARD8;
        minorVersion : CARD8;
        pad1 : CARD16;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xDbeGetVersionReply = 32;    








  type
    xDbeAllocateBackBufferNameReq = record
        reqType : CARD8;
        dbeReqType : CARD8;
        length : CARD16;
        window : CARD32;
        buffer : xDbeBackBuffer;
        swapAction : xDbeSwapAction;
        pad1 : CARD8;
        pad2 : CARD16;
      end;

  const
    sz_xDbeAllocateBackBufferNameReq = 16;    





  type
    xDbeDeallocateBackBufferNameReq = record
        reqType : CARD8;
        dbeReqType : CARD8;
        length : CARD16;
        buffer : xDbeBackBuffer;
      end;

  const
    sz_xDbeDeallocateBackBufferNameReq = 8;    





  type
    xDbeSwapBuffersReq = record
        reqType : CARD8;
        dbeReqType : CARD8;
        length : CARD16;
        n : CARD32;
      end;


  const
    sz_xDbeSwapBuffersReq = 8;    




  type
    xDbeBeginIdiomReq = record
        reqType : CARD8;
        dbeReqType : CARD8;
        length : CARD16;
      end;

  const
    sz_xDbeBeginIdiomReq = 4;    




  type
    xDbeEndIdiomReq = record
        reqType : CARD8;
        dbeReqType : CARD8;
        length : CARD16;
      end;

  const
    sz_xDbeEndIdiomReq = 4;    





  type
    xDbeGetVisualInfoReq = record
        reqType : CARD8;
        dbeReqType : CARD8;
        length : CARD16;
        n : CARD32;
      end;


  const
    sz_xDbeGetVisualInfoReq = 8;    







  type
    xDbeGetVisualInfoReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        m : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;


  const
    sz_xDbeGetVisualInfoReply = 32;    





  type
    xDbeGetBackBufferAttributesReq = record
        reqType : CARD8;
        dbeReqType : CARD8;
        length : CARD16;
        buffer : xDbeBackBuffer;
      end;

  const
    sz_xDbeGetBackBufferAttributesReq = 8;    







  type
    xDbeGetBackBufferAttributesReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        attributes : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xDbeGetBackBufferAttributesReply = 32;    
{$endif}


implementation


end.
