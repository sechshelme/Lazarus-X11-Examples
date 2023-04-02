unit XmJoinSideT;

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

//{$include <Xm/Xm.h>}

  var
    XmQTjoinSide : TXrmQuark;cvar;external libXm;
type
  TXmJoinSideSetValueProc = procedure (tab:TWidget; join_side:byte; join_thickness:TDimension);cdecl;
  TXmJoinSideGetValueProc = function (tab:TWidget; join_thickness:PDimension):byte;cdecl;
{ Version 0: initial release.  }

  PXmJoinSideTraitRec = ^TXmJoinSideTraitRec;
  TXmJoinSideTraitRec = record
      version : longint;
      setValue : TXmJoinSideSetValueProc;
      getValue : TXmJoinSideGetValueProc;
    end;
  TXmJoinSideTrait = PXmJoinSideTraitRec;
  PXmJoinSideTrait = ^TXmJoinSideTrait;
  Const
    XmLEFT = 1;
    XmRIGHT = 2;
    XmTOP = 3;
    XmBOTTOM = 4;

implementation

end.
