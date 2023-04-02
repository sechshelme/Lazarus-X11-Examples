unit XmAtomMgr;

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
//{$include <X11/Xresource.h>}

function XmInternAtom(display:PDisplay; name:TString; only_if_exists:TBoolean):TAtom;cdecl;external libXm;
{ X11r5's XGetAtomName equivalent  }
function XmGetAtomName(display:PDisplay; atom:TAtom):TString;cdecl;external libXm;

implementation

end.
