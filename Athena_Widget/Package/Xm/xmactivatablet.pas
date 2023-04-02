unit XmActivatableT;

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
    XmQTactivatable : TXrmQuark;cvar;external libXm;
{ Trait structures and typedefs, place typedefs first  }
type

  TXmActivatableCallBackProc = procedure (w:TWidget; activCB:TXtCallbackProc; closure:TXtPointer; setunset:TBoolean);cdecl;
{ Version 0: initial release.  }

  PXmActivatableTraitRec = ^TXmActivatableTraitRec;
  TXmActivatableTraitRec = record
      version : longint;
      changeCB : TXmActivatableCallBackProc;
    end;
  TXmActivatableTrait = PXmActivatableTraitRec;
  PXmActivatableTrait = ^TXmActivatableTrait;

implementation

end.
