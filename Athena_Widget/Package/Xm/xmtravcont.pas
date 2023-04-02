unit XmTravCont;

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
    XmQTtraversalControl : TXrmQuark;cvar;external libXm;
type

  TXmTraversalRedirectionProc = function (old_focus:TWidget; new_focus:TWidget; focus_policy:dword; direction:TXmTraversalDirection; pass:dword):TWidget;cdecl;
{ Version 0: initial release.  }

  PXmTraversalControlTraitRec = ^TXmTraversalControlTraitRec;
  TXmTraversalControlTraitRec = record
      version : longint;
      redirect : TXmTraversalRedirectionProc;
    end;
  TXmTraversalControlTrait = PXmTraversalControlTraitRec;
  PXmTraversalControlTrait = ^TXmTraversalControlTrait;

implementation

end.
