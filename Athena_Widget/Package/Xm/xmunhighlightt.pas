unit XmUnhighlightT;

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
    XmQTspecifyUnhighlight : TXrmQuark;cvar;external libXm;
type

  TXmSpecifyUnhighlightProc = function (wid:TWidget; child:TWidget):TGC;cdecl;
{ Version 0: initial release.  }

  PXmSpecifyUnhighlightTraitRec = ^TXmSpecifyUnhighlightTraitRec;
  TXmSpecifyUnhighlightTraitRec = record
      version : longint;
      getUnhighlightGC : TXmSpecifyUnhighlightProc;
    end;
  TXmSpecifyUnhighlightTrait = PXmSpecifyUnhighlightTraitRec;
  PXmSpecifyUnhighlightTrait = ^TXmSpecifyUnhighlightTrait;

implementation

end.
