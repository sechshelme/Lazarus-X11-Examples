unit XmSpecRendert;

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
    XmQTspecifyRenderTable : TXrmQuark;cvar;external libXm;
{ Trait structures and typedefs, place typedefs first  }
type

  TXmSpecRenderGetTableProc = function (wid:TWidget; _type:TXtEnum):TXmFontList;cdecl;
{ Version 0: initial release.  }

  PXmSpecRenderTraitRec = ^TXmSpecRenderTraitRec;
  TXmSpecRenderTraitRec = record
      version : longint;
      getRenderTable : TXmSpecRenderGetTableProc;
    end;
  TXmSpecRenderTrait = PXmSpecRenderTraitRec;
  PXmSpecRenderTrait = ^TXmSpecRenderTrait;

implementation

end.
