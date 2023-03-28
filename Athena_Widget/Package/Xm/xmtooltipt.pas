unit XmToolTipT;

interface

uses
  xresource,
  XTIntrinsic,
  XmXm;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

{*
 *
 * $Id: ToolTipT.h,v 1.1 2004/11/18 08:54:33 yura Exp $
 *
 * }
// {$include <Xm/Xm.h>}
  var
    XmQTtoolTip : TXrmQuark;cvar;external libXm;
{ Trait structures and typedefs, place typedefs first  }
type
  PXmToolTipTraitRec = ^TXmToolTipTraitRec;
  TXmToolTipTraitRec = record
      version : longint;
      tool_tip_string : TXmString;
    end;
  TXmToolTipTrait = PXmToolTipTraitRec;
  PXmToolTipTrait = ^TXmToolTipTrait;

implementation

end.
