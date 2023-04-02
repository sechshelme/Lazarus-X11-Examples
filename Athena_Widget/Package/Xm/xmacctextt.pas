unit XmAccTextT;

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
    XmQTaccessTextual : TXrmQuark;cvar;external libXm;
type
  TXmAccessTextualGetValuesProc = function (para1:TWidget; para2:longint):TXtPointer;cdecl;
  TXmAccessTextualPreferredProc = function (para1:TWidget):longint;cdecl;
  TXmAccessTextualSetValuesProc = procedure (para1:TWidget; para2:TXtPointer; para3:longint);cdecl;

  Const
    XmFORMAT_XmSTRING = 0;
    XmFORMAT_MBYTE = 1;
    XmFORMAT_WCS = 2;
{ Trait structures and typedefs, place typedefs first  }
{ Version 0: initial release.  }
type
  PXmAccessTextualTraitRec = ^TXmAccessTextualTraitRec;
  TXmAccessTextualTraitRec = record
      version : longint;
      getValue : TXmAccessTextualGetValuesProc;
      setValue : TXmAccessTextualSetValuesProc;
      preferredFormat : TXmAccessTextualPreferredProc;
    end;
  TXmAccessTextualTrait = PXmAccessTextualTraitRec;
  PXmAccessTextualTrait = ^TXmAccessTextualTrait;

implementation

end.
