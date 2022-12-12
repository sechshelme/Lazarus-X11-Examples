
unit EditresP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/EditresP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/EditresP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/EditresP.pp
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
    Pbyte  = ^byte;
    Pchar  = ^char;
    Pdword  = ^dword;
    PEditresCommand  = ^EditresCommand;
    PEditResError  = ^EditResError;
    PProtocolStream  = ^ProtocolStream;
    PResIdent  = ^ResIdent;
    PResourceType  = ^ResourceType;
    Psmallint  = ^smallint;
    PWidgetInfo  = ^WidgetInfo;
    Pword  = ^word;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$include <X11/Intrinsic.h>}
{$include <X11/Xfuncproto.h>}


const
  XER_NBBY = 8;  
  BYTE_MASK = 255;  
  HEADER_SIZE = 6;  
  EDITRES_IS_OBJECT = 2;  
  EDITRES_IS_UNREALIZED = 0;  

  EDITRES_FORMAT = 8;  
  EDITRES_SEND_EVENT_FORMAT = 32;  

  EDITRES_NAME = 'Editres';  
  EDITRES_COMMAND_ATOM = 'EditresCommand';  
  EDITRES_COMM_ATOM = 'EditresComm';  
  EDITRES_CLIENT_VALUE = 'EditresClientVal';  
  EDITRES_PROTOCOL_ATOM = 'EditresProtocol';  
type
  PEditresCommand = ^TEditresCommand;
  TEditresCommand = (SendWidgetTree := 0,SetValues := 1,GetResources := 2,
    GetGeometry := 3,FindChild := 4,GetValues := 5
    );

  PResourceType = ^TResourceType;
  TResourceType = (NormalResource := 0,ConstraintResource := 1
    );


  PResIdent = ^TResIdent;
  TResIdent = byte;

  PEditResError = ^TEditResError;
  TEditResError = (PartialSuccess := 0,Failure := 1,ProtocolMismatch := 2
    );

  PWidgetInfo = ^TWidgetInfo;
  TWidgetInfo = record
      num_widgets : word;
      ids : Pdword;
      real_widget : TWidget;
    end;

  PProtocolStream = ^TProtocolStream;
  TProtocolStream = record
      size : dword;
      alloc : dword;
      real_top : Pbyte;
      top : Pbyte;
      current : Pbyte;
    end;

(* error 
void _XEditResPutString8
in declaration at line 339 *)

procedure _XEditResPut8(stream:PProtocolStream; value:dword);cdecl;external;
procedure _XEditResPut16(stream:PProtocolStream; value:dword);cdecl;external;
procedure _XEditResPut32(stream:PProtocolStream; value:dword);cdecl;external;
procedure _XEditResPutWidgetInfo(stream:PProtocolStream; info:PWidgetInfo);cdecl;external;
procedure _XEditResResetStream(stream:PProtocolStream);cdecl;external;
function _XEditResGet8(stream:PProtocolStream; value:Pbyte):TBool;cdecl;external;
function _XEditResGet16(stream:PProtocolStream; value:Pword):TBool;cdecl;external;
function _XEditResGetSigned16(stream:PProtocolStream; value:Psmallint):TBool;cdecl;external;
function _XEditResGet32(stream:PProtocolStream; value:Pdword):TBool;cdecl;external;
function _XEditResGetString8(stream:PProtocolStream; str:PPchar):TBool;cdecl;external;
function _XEditResGetWidgetInfo(stream:PProtocolStream; info:PWidgetInfo):TBool;cdecl;external;
(* error 
_XFUNCPROTOEND

implementation


end.
