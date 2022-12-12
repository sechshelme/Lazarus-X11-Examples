
unit Xdmcp;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xdmcp.h
  The following command line parameters were used:
    /usr/include/X11/Xdmcp.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xdmcp.pp
}

    Type
    Pbyte  = ^byte;
    Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XDMCP_H_}
{$define _XDMCP_H_}  
{$include <X11/Xmd.h>}
{$include <X11/Xfuncproto.h>}
(* error 
#define XDM_PROTOCOL_VERSION	1
in define line 25 *)

    const
      XDM_UDP_PORT = 177;      

      XDM_DEFAULT_MCAST_ADDR6 = 'ff02:0:0:0:0:0:0:12b';      
      XDM_MAX_MSGLEN = 8192;      
      XDM_MIN_RTX = 2;      
      XDM_MAX_RTX = 32;      
      XDM_RTX_LIMIT = 7;      
      XDM_KA_RTX_LIMIT = 4;      

      XDM_DEF_DORMANCY = 3*60;      

      XDM_MAX_DORMANCY = (24*60)*60;      

    type
      xdmOpCode = (BROADCAST_QUERY := 1,QUERY,INDIRECT_QUERY,
        FORWARD_QUERY,WILLING,UNWILLING,REQUEST,
        ACCEPT,DECLINE,MANAGE,REFUSE,FAILED,KEEPALIVE,
        ALIVE);
{$if defined(IPv6) && defined(AF_INET6)}
{$endif}

    type
      xdmcp_states = (XDM_QUERY,XDM_BROADCAST,XDM_INDIRECT,
        XDM_COLLECT_QUERY,XDM_COLLECT_BROADCAST_QUERY,
        XDM_COLLECT_INDIRECT_QUERY,XDM_START_CONNECTION,
        XDM_AWAIT_REQUEST_RESPONSE,XDM_AWAIT_MANAGE_RESPONSE,
        XDM_MANAGE,XDM_RUN_SESSION,XDM_OFF,XDM_AWAIT_USER_INPUT,
        XDM_KEEPALIVE,XDM_AWAIT_ALIVE_RESPONSE,
        XDM_MULTICAST,XDM_COLLECT_MULTICAST_QUERY,
        XDM_KEEP_ME_LAST);
{$ifdef NOTDEF}


    const
      XDM_MAX_STR_LEN = 21;      
      XDM_MAX_HOSTS = 20;      

    type
      xdm_host_table = record
          sockaddr : sockaddr_in;
          name : array[0..(XDM_MAX_STR_LEN)-1] of char;
          status : array[0..(XDM_MAX_STR_LEN)-1] of char;
        end;

{$endif}


    type
      CARD8Ptr = ^CARD8;

      CARD16Ptr = ^CARD16;

      CARD32Ptr = ^CARD32;

      _ARRAY8 = record
          length : CARD16;
          data : CARD8Ptr;
        end;
      ARRAY8 = _ARRAY8;
      ARRAY8Ptr = ^_ARRAY8;

      _ARRAY16 = record
          length : CARD8;
          data : CARD16Ptr;
        end;
      ARRAY16 = _ARRAY16;
      ARRAY16Ptr = ^_ARRAY16;

      _ARRAY32 = record
          length : CARD8;
          data : CARD32Ptr;
        end;
      ARRAY32 = _ARRAY32;
      ARRAY32Ptr = ^_ARRAY32;

      _ARRAYofARRAY8 = record
          length : CARD8;
          data : ARRAY8Ptr;
        end;
      ARRAYofARRAY8 = _ARRAYofARRAY8;
      ARRAYofARRAY8Ptr = ^_ARRAYofARRAY8;

      _XdmcpHeader = record
          version : CARD16;
          opcode : CARD16;
          length : CARD16;
        end;
      XdmcpHeader = _XdmcpHeader;
      XdmcpHeaderPtr = ^_XdmcpHeader;




      _XdmcpBuffer = record
          data : ^BYTE;
          size : longint;
          pointer : longint;
          count : longint;
        end;
      XdmcpBuffer = _XdmcpBuffer;
      XdmcpBufferPtr = ^_XdmcpBuffer;

      _XdmAuthKey = record
          data : array[0..7] of BYTE;
        end;
      XdmAuthKeyRec = _XdmAuthKey;
      XdmAuthKeyPtr = ^_XdmAuthKey;


      XdmcpNetaddr = ^char;

    function XdmcpWriteARRAY16(buffer:XdmcpBufferPtr; array:ARRAY16Ptr):longint;cdecl;

    function XdmcpWriteARRAY32(buffer:XdmcpBufferPtr; array:ARRAY32Ptr):longint;cdecl;

    function XdmcpWriteARRAY8(buffer:XdmcpBufferPtr; array:ARRAY8Ptr):longint;cdecl;

    function XdmcpWriteARRAYofARRAY8(buffer:XdmcpBufferPtr; array:ARRAYofARRAY8Ptr):longint;cdecl;

    function XdmcpWriteCARD16(buffer:XdmcpBufferPtr; value:dword):longint;cdecl;

    function XdmcpWriteCARD32(buffer:XdmcpBufferPtr; value:dword):longint;cdecl;

    function XdmcpWriteCARD8(buffer:XdmcpBufferPtr; value:dword):longint;cdecl;

    function XdmcpWriteHeader(buffer:XdmcpBufferPtr; header:XdmcpHeaderPtr):longint;cdecl;

    function XdmcpFlush(fd:longint; buffer:XdmcpBufferPtr; to:XdmcpNetaddr; tolen:longint):longint;cdecl;

    function XdmcpReadARRAY16(buffer:XdmcpBufferPtr; array:ARRAY16Ptr):longint;cdecl;

    function XdmcpReadARRAY32(buffer:XdmcpBufferPtr; array:ARRAY32Ptr):longint;cdecl;

    function XdmcpReadARRAY8(buffer:XdmcpBufferPtr; array:ARRAY8Ptr):longint;cdecl;

    function XdmcpReadARRAYofARRAY8(buffer:XdmcpBufferPtr; array:ARRAYofARRAY8Ptr):longint;cdecl;

    function XdmcpReadCARD16(buffer:XdmcpBufferPtr; valuep:CARD16Ptr):longint;cdecl;

    function XdmcpReadCARD32(buffer:XdmcpBufferPtr; valuep:CARD32Ptr):longint;cdecl;

    function XdmcpReadCARD8(buffer:XdmcpBufferPtr; valuep:CARD8Ptr):longint;cdecl;

    function XdmcpReadHeader(buffer:XdmcpBufferPtr; header:XdmcpHeaderPtr):longint;cdecl;

    function XdmcpFill(fd:longint; buffer:XdmcpBufferPtr; from:XdmcpNetaddr; fromlen:Plongint):longint;cdecl;

    function XdmcpReadRemaining(buffer:XdmcpBufferPtr):longint;cdecl;

    procedure XdmcpDisposeARRAY8(array:ARRAY8Ptr);cdecl;

    procedure XdmcpDisposeARRAY16(array:ARRAY16Ptr);cdecl;

    procedure XdmcpDisposeARRAY32(array:ARRAY32Ptr);cdecl;

    procedure XdmcpDisposeARRAYofARRAY8(array:ARRAYofARRAY8Ptr);cdecl;

    function XdmcpCopyARRAY8(src:ARRAY8Ptr; dst:ARRAY8Ptr):longint;cdecl;

    function XdmcpARRAY8Equal(array1:ARRAY8Ptr; array2:ARRAY8Ptr):longint;cdecl;

    procedure XdmcpGenerateKey(key:XdmAuthKeyPtr);cdecl;

    procedure XdmcpIncrementKey(key:XdmAuthKeyPtr);cdecl;

    procedure XdmcpDecrementKey(key:XdmAuthKeyPtr);cdecl;

{$ifdef HASXDMAUTH}
    procedure XdmcpWrap(input:Pbyte; wrapper:Pbyte; output:Pbyte; bytes:longint);cdecl;

    procedure XdmcpUnwrap(input:Pbyte; wrapper:Pbyte; output:Pbyte; bytes:longint);cdecl;

{$endif}
{$ifndef TRUE}

    const
      TRUE = 1;      
      FALSE = 0;      
{$endif}

    function XdmcpCompareKeys(a:XdmAuthKeyPtr; b:XdmAuthKeyPtr):longint;cdecl;

    function XdmcpAllocARRAY16(array:ARRAY16Ptr; length:longint):longint;cdecl;

    function XdmcpAllocARRAY32(array:ARRAY32Ptr; length:longint):longint;cdecl;

    function XdmcpAllocARRAY8(array:ARRAY8Ptr; length:longint):longint;cdecl;

    function XdmcpAllocARRAYofARRAY8(array:ARRAYofARRAY8Ptr; length:longint):longint;cdecl;

    function XdmcpReallocARRAY16(array:ARRAY16Ptr; length:longint):longint;cdecl;

    function XdmcpReallocARRAY32(array:ARRAY32Ptr; length:longint):longint;cdecl;

    function XdmcpReallocARRAY8(array:ARRAY8Ptr; length:longint):longint;cdecl;

    function XdmcpReallocARRAYofARRAY8(array:ARRAYofARRAY8Ptr; length:longint):longint;cdecl;

{$endif}

(* error 
#endif /* _XDMCP_H_ */

implementation


end.
