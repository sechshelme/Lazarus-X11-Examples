unit XmXmfuncs;

interface

uses
  x, xlib,
  XTIntrinsic;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <X11/Xosdefs.h>}

{ the old Xfuncs.h, for pre-R6  }

procedure bcopy;cdecl;external libXm;
procedure bzero;cdecl;external libXm;
function bcmp:longint;cdecl;external libXm;

implementation

end.
