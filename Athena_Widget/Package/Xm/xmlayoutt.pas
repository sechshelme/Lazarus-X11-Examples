unit XmLayoutT;

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
    XmQTspecifyLayoutDirection : TXrmQuark;cvar;external libXm;
type

  TXmGetLayoutDirectionProc = function (para1:TWidget):TXmDirection;cdecl;
{ Version 0: initial release.  }

  PXmSpecifyLayoutDirectionTraitRec = ^TXmSpecifyLayoutDirectionTraitRec;
  TXmSpecifyLayoutDirectionTraitRec = record
      version : longint;
      get_direction : TXmGetLayoutDirectionProc;
    end;
  TXmSpecifyLayoutDirectionTrait = PXmSpecifyLayoutDirectionTraitRec;
  PXmSpecifyLayoutDirectionTrait = ^TXmSpecifyLayoutDirectionTrait;

implementation

end.
