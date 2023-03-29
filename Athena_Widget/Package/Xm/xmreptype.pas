unit XmRepType;

interface

uses
  x, xlib,
  XTIntrinsic;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <Xm/Xm.h>}

const
  XmREP_TYPE_INVALID = $1FFF;  
type
  PXmRepTypeId = ^TXmRepTypeId;
  TXmRepTypeId = word;

  PXmRepTypeEntryRec = ^TXmRepTypeEntryRec;
  TXmRepTypeEntryRec = record
      rep_type_name : TString;
      value_names : PString;
      values : Pbyte;
      num_values : byte;
      reverse_installed : TBoolean;
      rep_type_id : TXmRepTypeId;
    end;
  TXmRepTypeEntry = PXmRepTypeEntryRec;
  PXmRepTypeEntry = ^TXmRepTypeEntry;
  TXmRepTypeListRec = TXmRepTypeEntryRec;
  PXmRepTypeListRec = ^TXmRepTypeListRec;
  TXmRepTypeList = PXmRepTypeEntryRec;
  PXmRepTypeList = ^TXmRepTypeList;
{*******    Public Function Declarations    ******* }

function XmRepTypeRegister(rep_type:TString; value_names:PString; values:Pbyte; num_values:byte):TXmRepTypeId;cdecl;external libXm;
procedure XmRepTypeAddReverse(rep_type_id:TXmRepTypeId);cdecl;external libXm;

{ NeedWidePrototypes  }

function XmRepTypeValidValue(rep_type_id:TXmRepTypeId; test_value:byte; enable_default_warning:TWidget):TBoolean;cdecl;external libXm;
function XmRepTypeGetRegistered:TXmRepTypeList;cdecl;external libXm;
function XmRepTypeGetRecord(rep_type_id:TXmRepTypeId):TXmRepTypeEntry;cdecl;external libXm;
function XmRepTypeGetId(rep_type:TString):TXmRepTypeId;cdecl;external libXm;
function XmRepTypeGetNameList(rep_type_id:TXmRepTypeId; use_uppercase_format:TBoolean):PString;cdecl;external libXm;
procedure XmRepTypeInstallTearOffModelConverter;cdecl;external libXm;
{*******    End Public Function Declarations    ******* }

implementation

end.
