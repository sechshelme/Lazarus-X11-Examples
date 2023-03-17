unit ShellI;

interface

uses
  x, xlib,
  XTIntrinsic;

const
  libXt = 'libXt.so';

Type
PPosition  = ^TPosition;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <X11/Xfuncproto.h>}

procedure _XtShellGetCoordinates(widget:TWidget; x:PPosition; y:PPosition);cdecl;external libXt;

implementation

end.
