unit XmDropTrans;

interface

uses
  unixtype,
  x, xlib,
  XTIntrinsic,
  XmXm;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

//{$include <Xm/Xm.h>}

const
  XmTRANSFER_FAILURE = 0;  
  XmTRANSFER_SUCCESS = 1;  
  var
    xmDropTransferObjectClass : TWidgetClass;cvar;external libXm;

//type
  //PXmDropTransferObjectClass = ^TXmDropTransferObjectClass;
  //TXmDropTransferObjectClass = PXmDropTransferClassRec;
  //
  //PXmDropTransferObject = ^TXmDropTransferObject;
  //TXmDropTransferObject = PXmDropTransferRec;

function XmIsDropTransfer(w : TWidget) : TBoolean;

{ XmIsDropTransfer  }
type
  PXmDropTransferEntryRec = ^TXmDropTransferEntryRec;
  TXmDropTransferEntryRec = record
      client_data : TXtPointer;
      target : TAtom;
    end;
  TXmDropTransferEntry = PXmDropTransferEntryRec;
  PXmDropTransferEntry = ^TXmDropTransferEntry;
{*******    Public Function Declarations    ******* }

function XmDropTransferStart(refWidget:TWidget; args:TArgList; argCount:TCardinal):TWidget;cdecl;external libXm;
procedure XmDropTransferAdd(widget:TWidget; transfers:TXmDropTransferEntry; num_transfers:TCardinal);cdecl;external libXm;
{*******    End Public Function Declarations    ******* }

implementation

function XmIsDropTransfer(w: TWidget): TBoolean;
begin
  XmIsDropTransfer:=XtIsSubclass(w,xmDropTransferObjectClass);
end;

end.
