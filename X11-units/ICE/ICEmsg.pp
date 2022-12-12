
unit ICEmsg;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/ICE/ICEmsg.h
  The following command line parameters were used:
    /usr/include/X11/ICE/ICEmsg.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/ICE/ICEmsg.pp
}

    Type
    Pchar  = ^char;
    PIcePointer  = ^IcePointer;
    Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _ICEMSG_H_}
{$define _ICEMSG_H_}  
{$include <X11/Xfuncproto.h>}
{$include <X11/ICE/ICEconn.h>}

(* error 
extern Status _IceRead (

in declaration at line 46 *)


    procedure _IceReadSkip(_para1:IceConn; _para2:dword);cdecl;


    procedure _IceWrite(_para1:IceConn; _para2:dword; _para3:Pchar);cdecl;


    procedure _IceErrorBadMinor(_para1:IceConn; _para2:longint; _para3:longint; _para4:longint);cdecl;


    procedure _IceErrorBadState(_para1:IceConn; _para2:longint; _para3:longint; _para4:longint);cdecl;


    procedure _IceErrorBadLength(_para1:IceConn; _para2:longint; _para3:longint; _para4:longint);cdecl;


    procedure _IceErrorBadValue(_para1:IceConn; _para2:longint; _para3:longint; _para4:longint; _para5:longint; 
                _para6:IcePointer);cdecl;


    function _IcePoMagicCookie1Proc(_para1:IceConn; _para2:PIcePointer; _para3:Bool; _para4:Bool; _para5:longint; 
               _para6:IcePointer; _para7:Plongint; _para8:PIcePointer; _para9:PPchar):IcePoAuthStatus;cdecl;


    function _IcePaMagicCookie1Proc(_para1:IceConn; _para2:PIcePointer; _para3:Bool; _para4:longint; _para5:IcePointer; 
               _para6:Plongint; _para7:PIcePointer; _para8:PPchar):IcePaAuthStatus;cdecl;


    function IceValidIO(_iceConn : longint) : longint;    


(* error 
        IceFlush (_iceConn); \
in declaration at line 127 *)
(* error 
        IceFlush (_iceConn); \
(* error 
    _pMsg = (_msgType *) _iceConn->outbufptr; \
in declaration at line 128 *)
(* error 
    _pMsg = (_msgType *) _iceConn->outbufptr; \
(* error 
    _pMsg->majorOpcode = _major; \
in declaration at line 129 *)
(* error 
    _pMsg->majorOpcode = _major; \
(* error 
    _pMsg->minorOpcode = _minor; \
in declaration at line 130 *)
(* error 
    _pMsg->minorOpcode = _minor; \
(* error 
    _pMsg->length = (_headerSize - SIZEOF (iceMsg)) >> 3; \
in declaration at line 131 *)
(* error 
    _pMsg->length = (_headerSize - SIZEOF (iceMsg)) >> 3; \
(* error 
    _iceConn->outbufptr += _headerSize; \
in declaration at line 132 *)
(* error 
    _iceConn->outbufptr += _headerSize; \
(* error 
    _iceConn->send_sequence++
in declaration at line 138 *)
(* error 
        IceFlush (_iceConn); \
(* error 
    _pMsg = (_msgType *) _iceConn->outbufptr; \
in declaration at line 139 *)
(* error 
    _pMsg = (_msgType *) _iceConn->outbufptr; \
(* error 
    if ((_iceConn->outbufptr + \
in declaration at line 142 *)
(* error 
        _pData = (char *) _pMsg + _headerSize; \
(* error 
    else \
in declaration at line 144 *)
(* error 
        _pData = NULL; \
(* error 
    _pMsg->majorOpcode = _major; \
in declaration at line 145 *)
(* error 
    _pMsg->majorOpcode = _major; \
(* error 
    _pMsg->minorOpcode = _minor; \
in declaration at line 146 *)
(* error 
    _pMsg->minorOpcode = _minor; \
(* error 
    _pMsg->length = ((_headerSize - SIZEOF (iceMsg)) >> 3) + (_extra); \
in declaration at line 147 *)
(* error 
    _pMsg->length = ((_headerSize - SIZEOF (iceMsg)) >> 3) + (_extra); \
(* error 
    _iceConn->outbufptr += (_headerSize + ((_extra) << 3)); \
in declaration at line 148 *)
(* error 
    _iceConn->outbufptr += (_headerSize + ((_extra) << 3)); \
(* error 
    _iceConn->send_sequence++
in declaration at line 153 *)
(* error 
    iceMsg *_pMsg; \
(* error 
    IceGetHeader (_iceConn, _major, _minor, SIZEOF (iceMsg), iceMsg, _pMsg); \
in declaration at line 154 *)
(* error 
    IceGetHeader (_iceConn, _major, _minor, SIZEOF (iceMsg), iceMsg, _pMsg); \
(* error 
}
in declaration at line 159 *)
(* error 
    iceErrorMsg	*_pMsg; \
(* error 
\
in declaration at line 162 *)
(* error 
	SIZEOF (iceErrorMsg), iceErrorMsg, _pMsg); \
(* error 
    _pMsg->length += (_dataLength); \
in declaration at line 163 *)
(* error 
    _pMsg->length += (_dataLength); \
(* error 
    _pMsg->offendingMinorOpcode = (CARD8) _offendingMinorOpcode; \
in declaration at line 164 *)
(* error 
    _pMsg->offendingMinorOpcode = (CARD8) _offendingMinorOpcode; \
(* error 
    _pMsg->severity = (CARD8) _severity; \
in declaration at line 165 *)
(* error 
    _pMsg->severity = (CARD8) _severity; \
(* error 
    _pMsg->offendingSequenceNum = (CARD32) _offendingSequenceNum; \
in declaration at line 166 *)
(* error 
    _pMsg->offendingSequenceNum = (CARD32) _offendingSequenceNum; \
(* error 
    _pMsg->errorClass = (CARD16) _errorClass; \
in declaration at line 167 *)
(* error 
    _pMsg->errorClass = (CARD16) _errorClass; \
(* error 
}

in declaration at line 179 *)
(* error 
	IceFlush (_iceConn); \
(* error 
        _IceWrite (_iceConn, (unsigned long) (_bytes), _data); \
in declaration at line 180 *)
(* error 
        _IceWrite (_iceConn, (unsigned long) (_bytes), _data); \
(* error 
    } \
in declaration at line 184 *)
(* error 
        memcpy (_iceConn->outbufptr, _data, _bytes); \
(* error 
        _iceConn->outbufptr += (_bytes); \
in declaration at line 185 *)
(* error 
        _iceConn->outbufptr += (_bytes); \
(* error 
    } \
in define line 190 *)
    function IceWriteData32(_iceConn,_bytes,_data : longint) : longint;    


(* error 
{ \
in declaration at line 205 *)
(* error 
	IceFlush (_iceConn); \
(* error 
    _IceWrite (_iceConn, (unsigned long) (_bytes), _data); \
in declaration at line 206 *)
(* error 
    _IceWrite (_iceConn, (unsigned long) (_bytes), _data); \
(* error 
}

in declaration at line 217 *)
(* error 
    char _dummy[7] = { 0 }; \
(* error 
    IceWriteData (_iceConn, (_bytes), _dummy); \
in declaration at line 218 *)
(* error 
    IceWriteData (_iceConn, (_bytes), _dummy); \
(* error 
}

in declaration at line 228 *)
(* error 
    unsigned long _bytes; \
(* error 
    IceReadMessageHeader (_iceConn, _headerSize, _msgType, _pMsg); \
in declaration at line 229 *)
(* error 
    IceReadMessageHeader (_iceConn, _headerSize, _msgType, _pMsg); \
(* error 
    _bytes = (_pMsg->length << 3) - (_headerSize - SIZEOF (iceMsg)); \
in declaration at line 230 *)
(* error 
    _bytes = (_pMsg->length << 3) - (_headerSize - SIZEOF (iceMsg)); \
(* error 
    if ((_iceConn->inbufmax - _iceConn->inbufptr) >= _bytes) \
in declaration at line 233 *)
(* error 
	_IceRead (_iceConn, _bytes, _iceConn->inbufptr); \
(* error 
	_pData = _iceConn->inbufptr; \
in declaration at line 234 *)
(* error 
	_pData = _iceConn->inbufptr; \
(* error 
	_iceConn->inbufptr += _bytes; \
in declaration at line 235 *)
(* error 
	_iceConn->inbufptr += _bytes; \
(* error 
    } \
in declaration at line 239 *)
(* error 
	_pData = malloc (_bytes); \
(* error 
        if (_pData) \
in declaration at line 241 *)
(* error 
	    _IceRead (_iceConn, _bytes, _pData); \
(* error 
        else \
in declaration at line 243 *)
(* error 
	    _IceReadSkip (_iceConn, _bytes); \
(* error 
    } \
in declaration at line 250 *)
(* error 
    _pMsg = (_msgType *) (_iceConn->inbuf);
in declaration at line 254 *)
(* error 
{ \
in declaration at line 260 *)
(* error 
	_iceConn->inbufptr); \
(* error 
    _pMsg = (_msgType *) (_iceConn->inbuf); \
in declaration at line 261 *)
(* error 
    _pMsg = (_msgType *) (_iceConn->inbuf); \
(* error 
    _iceConn->inbufptr += (_headerSize - SIZEOF (iceMsg)); \
in declaration at line 262 *)
(* error 
    _iceConn->inbufptr += (_headerSize - SIZEOF (iceMsg)); \
(* error 
}
in declaration at line 266 *)
(* error 
    _IceRead (_iceConn, (unsigned long) (_bytes), (char *) _pData); \
(* error 
#define IceReadData16(_iceConn, _swap, _bytes, _pData) \
in declaration at line 270 *)
(* error 
    _IceRead (_iceConn, (unsigned long) (_bytes), (char *) _pData); \
(* error 
}
in declaration at line 275 *)
(* error 
    _IceRead (_iceConn, (unsigned long) (_bytes), (char *) _pData); \
(* error 
}

in declaration at line 286 *)
(* error 
    char _dummy[7]; \
(* error 
    _IceRead (_iceConn, (unsigned long) (_bytes), _dummy); \
in declaration at line 287 *)
(* error 
    _IceRead (_iceConn, (unsigned long) (_bytes), _dummy); \
(* error 
}
{$endif}


implementation

    function IceValidIO(_iceConn : longint) : longint;
    begin
      IceValidIO:=_iceConn^.io_ok;
    end;

    function IceWriteData32(_iceConn,_bytes,_data : longint) : longint;
    begin
      IceWriteData32:=IceWriteData(_iceConn,_bytes,pchar(_data));
    end;


end.
