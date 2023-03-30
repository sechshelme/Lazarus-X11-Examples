unit XmXmIm;

interface

uses
  x, xlib,
  XTIntrinsic,
  XmXm;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


//{$include <Xm/Xm.h>}

{*******    Public Function Declarations    ******* }

procedure XmImRegister(w:TWidget; reserved:dword);cdecl;external libXm;
procedure XmImUnregister(w:TWidget);cdecl;external libXm;
procedure XmImSetFocusValues(w:TWidget; args:TArgList; num_args:TCardinal);cdecl;external libXm;
procedure XmImSetValues(w:TWidget; args:TArgList; num_args:TCardinal);cdecl;external libXm;
procedure XmImUnsetFocus(w:TWidget);cdecl;external libXm;
function XmImGetXIM(w:TWidget):TXIM;cdecl;external libXm;
procedure XmImCloseXIM(w:TWidget);cdecl;external libXm;
function XmImMbLookupString(w:TWidget; event:PXKeyPressedEvent; buf:Pchar; nbytes:longint; keysym:PKeySym; status:Plongint):longint;cdecl;external libXm;
procedure XmImVaSetFocusValues(w:TWidget; args:array of const);cdecl;external libXm;
procedure XmImVaSetFocusValues(w:TWidget);cdecl;external libXm;
procedure XmImVaSetValues(w:TWidget; args:array of const);cdecl;external libXm;
procedure XmImVaSetValues(w:TWidget);cdecl;external libXm;
{NeedWidePrototypes }

function XmImGetXIC(w:TWidget; input_policy:TXmInputPolicy; args:TArgList; num_args:TCardinal):TXIC;cdecl;external libXm;
function XmImSetXIC(w:TWidget; input_context:TXIC):TXIC;cdecl;external libXm;
procedure XmImFreeXIC(w:TWidget; input_context:TXIC);cdecl;external libXm;
procedure XmImMbResetIC(w:TWidget; mb:PPchar);cdecl;external libXm;
function XmImGetXICResetState(w:TWidget):TXIMResetState;cdecl;external libXm;
{*******    End Public Function Declarations    ******* }

implementation

end.
