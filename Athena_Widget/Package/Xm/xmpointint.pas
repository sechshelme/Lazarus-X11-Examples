unit XmPointInT;

interface

uses
  unixtype,
  x, xlib,
  xresource,
  XTIntrinsic,
  XmXm;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <Xm/Xm.h>}
  var
    XmQTpointIn : TXrmQuark;cvar;external libXm;
type
  TXmPointInProc = function (w:TWidget; x:TPosition; y:TPosition):TBoolean;cdecl;

  PXmPointInTraitRec = ^TXmPointInTraitRec;
  TXmPointInTraitRec = record
      version : longint;
      pointIn : TXmPointInProc;
    end;
  TXmPointInTrait = PXmPointInTraitRec;
  PXmPointInTrait = ^TXmPointInTrait;

implementation

end.
