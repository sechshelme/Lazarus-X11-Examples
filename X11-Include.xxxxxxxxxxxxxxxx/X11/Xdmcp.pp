
unit Xdmcp;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xdmcp.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xdmcp.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xdmcp.pp
}

    { Pointers to basic pascal types, inserted by h2pas conversion program.}
    Type
      PLongint  = ^Longint;
      PSmallInt = ^SmallInt;
      PByte     = ^Byte;
      PWord     = ^Word;
      PDWord    = ^DWord;
      PDouble   = ^Double;

    Type
    PARRAY16  = ^ARRAY16;
    PARRAY16Ptr  = ^ARRAY16Ptr;
    PARRAY32  = ^ARRAY32;
    PARRAY32Ptr  = ^ARRAY32Ptr;
    PARRAY8  = ^ARRAY8;
    PARRAY8Ptr  = ^ARRAY8Ptr;
    PARRAYofARRAY8  = ^ARRAYofARRAY8;
    PARRAYofARRAY8Ptr  = ^ARRAYofARRAY8Ptr;
    PBYTE  = ^BYTE;
    PCARD16  = ^CARD16;
    PCARD16Ptr  = ^CARD16Ptr;
    PCARD32  = ^CARD32;
    PCARD32Ptr  = ^CARD32Ptr;
    PCARD8  = ^CARD8;
    PCARD8Ptr  = ^CARD8Ptr;
    Pchar  = ^char;
    Plongint  = ^longint;
    Pxdm_host_table  = ^xdm_host_table;
    PXdmAuthKey  = ^XdmAuthKey;
    PXdmAuthKeyPtr  = ^XdmAuthKeyPtr;
    PXdmAuthKeyRec  = ^XdmAuthKeyRec;
    Pxdmcp_states  = ^xdmcp_states;
    PXdmcpBuffer  = ^XdmcpBuffer;
    PXdmcpBufferPtr  = ^XdmcpBufferPtr;
    PXdmcpHeader  = ^XdmcpHeader;
    PXdmcpHeaderPtr  = ^XdmcpHeaderPtr;
    PXdmcpNetaddr  = ^XdmcpNetaddr;
    PxdmOpCode  = ^xdmOpCode;
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
      PxdmOpCode = ^TxdmOpCode;
      TxdmOpCode = (BROADCAST_QUERY := 1,QUERY,INDIRECT_QUERY,
        FORWARD_QUERY,WILLING,UNWILLING,REQUEST,
        ACCEPT,DECLINE,MANAGE,REFUSE,FAILED,KEEPALIVE,
        ALIVE);
{$if defined(IPv6) && defined(AF_INET6)}
{$endif}
    type
      Pxdmcp_states = ^Txdmcp_states;
      Txdmcp_states = (XDM_QUERY,XDM_BROADCAST,XDM_INDIRECT,
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
      Pxdm_host_table = ^Txdm_host_table;
      Txdm_host_table = record
          sockaddr : Tsockaddr_in;
          name : array[0..(XDM_MAX_STR_LEN)-1] of char;
          status : array[0..(XDM_MAX_STR_LEN)-1] of char;
        end;

{$endif}

    type
      PCARD8Ptr = ^TCARD8Ptr;
      TCARD8Ptr = PCARD8;

      PCARD16Ptr = ^TCARD16Ptr;
      TCARD16Ptr = PCARD16;

      PCARD32Ptr = ^TCARD32Ptr;
      TCARD32Ptr = PCARD32;

      PARRAY8 = ^TARRAY8;
      TARRAY8 = record
          length : TCARD16;
          data : TCARD8Ptr;
        end;
      TARRAY8Ptr = PARRAY8;
      PARRAY8Ptr = ^TARRAY8Ptr;

      PARRAY16 = ^TARRAY16;
      TARRAY16 = record
          length : TCARD8;
          data : TCARD16Ptr;
        end;
      TARRAY16Ptr = PARRAY16;
      PARRAY16Ptr = ^TARRAY16Ptr;

      PARRAY32 = ^TARRAY32;
      TARRAY32 = record
          length : TCARD8;
          data : TCARD32Ptr;
        end;
      TARRAY32Ptr = PARRAY32;
      PARRAY32Ptr = ^TARRAY32Ptr;

      PARRAYofARRAY8 = ^TARRAYofARRAY8;
      TARRAYofARRAY8 = record
          length : TCARD8;
          data : TARRAY8Ptr;
        end;
      TARRAYofARRAY8Ptr = PARRAYofARRAY8;
      PARRAYofARRAY8Ptr = ^TARRAYofARRAY8Ptr;

      PXdmcpHeader = ^TXdmcpHeader;
      TXdmcpHeader = record
          version : TCARD16;
          opcode : TCARD16;
          length : TCARD16;
        end;
      TXdmcpHeaderPtr = PXdmcpHeader;
      PXdmcpHeaderPtr = ^TXdmcpHeaderPtr;




      PXdmcpBuffer = ^TXdmcpBuffer;
      TXdmcpBuffer = record
          data : PBYTE;
          size : longint;
          pointer : longint;
          count : longint;
        end;
      TXdmcpBufferPtr = PXdmcpBuffer;
      PXdmcpBufferPtr = ^TXdmcpBufferPtr;

      PXdmAuthKey = ^TXdmAuthKey;
      TXdmAuthKey = record
          data : array[0..7] of TBYTE;
        end;
      TXdmAuthKeyRec = TXdmAuthKey;
      PXdmAuthKeyRec = ^TXdmAuthKeyRec;
      TXdmAuthKeyPtr = PXdmAuthKey;
      PXdmAuthKeyPtr = ^TXdmAuthKeyPtr;


      PXdmcpNetaddr = ^TXdmcpNetaddr;
      TXdmcpNetaddr = Pchar;

function XdmcpWriteARRAY16(buffer:TXdmcpBufferPtr; array:TARRAY16Ptr):longint;cdecl;external;
function XdmcpWriteARRAY32(buffer:TXdmcpBufferPtr; array:TARRAY32Ptr):longint;cdecl;external;
function XdmcpWriteARRAY8(buffer:TXdmcpBufferPtr; array:TARRAY8Ptr):longint;cdecl;external;
function XdmcpWriteARRAYofARRAY8(buffer:TXdmcpBufferPtr; array:TARRAYofARRAY8Ptr):longint;cdecl;external;
function XdmcpWriteCARD16(buffer:TXdmcpBufferPtr; value:dword):longint;cdecl;external;
function XdmcpWriteCARD32(buffer:TXdmcpBufferPtr; value:dword):longint;cdecl;external;
function XdmcpWriteCARD8(buffer:TXdmcpBufferPtr; value:dword):longint;cdecl;external;
function XdmcpWriteHeader(buffer:TXdmcpBufferPtr; header:TXdmcpHeaderPtr):longint;cdecl;external;
function XdmcpFlush(fd:longint; buffer:TXdmcpBufferPtr; to:TXdmcpNetaddr; tolen:longint):longint;cdecl;external;
function XdmcpReadARRAY16(buffer:TXdmcpBufferPtr; array:TARRAY16Ptr):longint;cdecl;external;
function XdmcpReadARRAY32(buffer:TXdmcpBufferPtr; array:TARRAY32Ptr):longint;cdecl;external;
function XdmcpReadARRAY8(buffer:TXdmcpBufferPtr; array:TARRAY8Ptr):longint;cdecl;external;
function XdmcpReadARRAYofARRAY8(buffer:TXdmcpBufferPtr; array:TARRAYofARRAY8Ptr):longint;cdecl;external;
function XdmcpReadCARD16(buffer:TXdmcpBufferPtr; valuep:TCARD16Ptr):longint;cdecl;external;
function XdmcpReadCARD32(buffer:TXdmcpBufferPtr; valuep:TCARD32Ptr):longint;cdecl;external;
function XdmcpReadCARD8(buffer:TXdmcpBufferPtr; valuep:TCARD8Ptr):longint;cdecl;external;
function XdmcpReadHeader(buffer:TXdmcpBufferPtr; header:TXdmcpHeaderPtr):longint;cdecl;external;
function XdmcpFill(fd:longint; buffer:TXdmcpBufferPtr; from:TXdmcpNetaddr; fromlen:Plongint):longint;cdecl;external;
function XdmcpReadRemaining(buffer:TXdmcpBufferPtr):longint;cdecl;external;
procedure XdmcpDisposeARRAY8(array:TARRAY8Ptr);cdecl;external;
procedure XdmcpDisposeARRAY16(array:TARRAY16Ptr);cdecl;external;
procedure XdmcpDisposeARRAY32(array:TARRAY32Ptr);cdecl;external;
procedure XdmcpDisposeARRAYofARRAY8(array:TARRAYofARRAY8Ptr);cdecl;external;
function XdmcpCopyARRAY8(src:TARRAY8Ptr; dst:TARRAY8Ptr):longint;cdecl;external;
function XdmcpARRAY8Equal(array1:TARRAY8Ptr; array2:TARRAY8Ptr):longint;cdecl;external;
procedure XdmcpGenerateKey(key:TXdmAuthKeyPtr);cdecl;external;
procedure XdmcpIncrementKey(key:TXdmAuthKeyPtr);cdecl;external;
procedure XdmcpDecrementKey(key:TXdmAuthKeyPtr);cdecl;external;
{$ifdef HASXDMAUTH}
procedure XdmcpWrap(input:Pbyte; wrapper:Pbyte; output:Pbyte; bytes:longint);cdecl;external;
procedure XdmcpUnwrap(input:Pbyte; wrapper:Pbyte; output:Pbyte; bytes:longint);cdecl;external;
{$endif}
{$ifndef TRUE}

    const
      TRUE = 1;      
      FALSE = 0;      
{$endif}

function XdmcpCompareKeys(a:TXdmAuthKeyPtr; b:TXdmAuthKeyPtr):longint;cdecl;external;
function XdmcpAllocARRAY16(array:TARRAY16Ptr; length:longint):longint;cdecl;external;
function XdmcpAllocARRAY32(array:TARRAY32Ptr; length:longint):longint;cdecl;external;
function XdmcpAllocARRAY8(array:TARRAY8Ptr; length:longint):longint;cdecl;external;
function XdmcpAllocARRAYofARRAY8(array:TARRAYofARRAY8Ptr; length:longint):longint;cdecl;external;
function XdmcpReallocARRAY16(array:TARRAY16Ptr; length:longint):longint;cdecl;external;
function XdmcpReallocARRAY32(array:TARRAY32Ptr; length:longint):longint;cdecl;external;
function XdmcpReallocARRAY8(array:TARRAY8Ptr; length:longint):longint;cdecl;external;
function XdmcpReallocARRAYofARRAY8(array:TARRAYofARRAY8Ptr; length:longint):longint;cdecl;external;
{$endif}

(* error 
#endif /* _XDMCP_H_ */

implementation


end.
