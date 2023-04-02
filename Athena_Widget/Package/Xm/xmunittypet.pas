unit XmUnitTypeT;

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
    XmQTspecifyUnitType : TXrmQuark;cvar;external libXm ;
type

  TXmSpecUnitTypeGetProc = function (wid:TWidget):byte;cdecl;
{ Version 0: initial release.  }

  PXmSpecUnitTypeTraitRec = ^TXmSpecUnitTypeTraitRec;
  TXmSpecUnitTypeTraitRec = record
      version : longint;
      getUnitType : TXmSpecUnitTypeGetProc;
    end;
  TXmSpecUnitTypeTrait = PXmSpecUnitTypeTraitRec;
  PXmSpecUnitTypeTrait = ^TXmSpecUnitTypeTrait;

implementation

end.
