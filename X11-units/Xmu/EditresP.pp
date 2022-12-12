
unit EditresP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xmu/EditresP.h
  The following command line parameters were used:
    /usr/include/X11/Xmu/EditresP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xmu/EditresP.pp
}

    Type
    Pbyte  = ^byte;
    Pchar  = ^char;
    Pdword  = ^dword;
    PProtocolStream  = ^ProtocolStream;
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
    EditresCommand = (SendWidgetTree := 0,SetValues := 1,
      GetResources := 2,GetGeometry := 3,
      FindChild := 4,GetValues := 5);

    ResourceType = (NormalResource := 0,ConstraintResource := 1
      );


    ResIdent = byte;

    EditResError = (PartialSuccess := 0,Failure := 1,ProtocolMismatch := 2
      );

    _WidgetInfo = record
        num_widgets : word;
        ids : ^dword;
        real_widget : Widget;
      end;
    WidgetInfo = _WidgetInfo;

    _ProtocolStream = record
        size : dword;
        alloc : dword;
        real_top : ^byte;
        top : ^byte;
        current : ^byte;
      end;
    ProtocolStream = _ProtocolStream;

(* error 
void _XEditResPutString8
in declaration at line 339 *)

    procedure _XEditResPut8(stream:PProtocolStream; value:dword);

    procedure _XEditResPut16(stream:PProtocolStream; value:dword);

    procedure _XEditResPut32(stream:PProtocolStream; value:dword);

    procedure _XEditResPutWidgetInfo(stream:PProtocolStream; info:PWidgetInfo);

    procedure _XEditResResetStream(stream:PProtocolStream);

    function _XEditResGet8(stream:PProtocolStream; value:Pbyte):Bool;

    function _XEditResGet16(stream:PProtocolStream; value:Pword):Bool;

    function _XEditResGetSigned16(stream:PProtocolStream; value:Psmallint):Bool;

    function _XEditResGet32(stream:PProtocolStream; value:Pdword):Bool;

    function _XEditResGetString8(stream:PProtocolStream; str:PPchar):Bool;

    function _XEditResGetWidgetInfo(stream:PProtocolStream; info:PWidgetInfo):Bool;

(* error 
_XFUNCPROTOEND

implementation

    procedure _XEditResPut8(stream:PProtocolStream; value:dword);
    begin
      { You must implement this function }
    end;
    procedure _XEditResPut16(stream:PProtocolStream; value:dword);
    begin
      { You must implement this function }
    end;
    procedure _XEditResPut32(stream:PProtocolStream; value:dword);
    begin
      { You must implement this function }
    end;
    procedure _XEditResPutWidgetInfo(stream:PProtocolStream; info:PWidgetInfo);
    begin
      { You must implement this function }
    end;
    procedure _XEditResResetStream(stream:PProtocolStream);
    begin
      { You must implement this function }
    end;
    function _XEditResGet8(stream:PProtocolStream; value:Pbyte):Bool;
    begin
      { You must implement this function }
    end;
    function _XEditResGet16(stream:PProtocolStream; value:Pword):Bool;
    begin
      { You must implement this function }
    end;
    function _XEditResGetSigned16(stream:PProtocolStream; value:Psmallint):Bool;
    begin
      { You must implement this function }
    end;
    function _XEditResGet32(stream:PProtocolStream; value:Pdword):Bool;
    begin
      { You must implement this function }
    end;
    function _XEditResGetString8(stream:PProtocolStream; str:PPchar):Bool;
    begin
      { You must implement this function }
    end;
    function _XEditResGetWidgetInfo(stream:PProtocolStream; info:PWidgetInfo):Bool;
    begin
      { You must implement this function }
    end;

end.
