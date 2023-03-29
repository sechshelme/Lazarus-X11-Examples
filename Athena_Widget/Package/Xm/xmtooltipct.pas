unit XmToolTipCT;

interface

uses
  x,
  xresource,
  XTIntrinsic;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

{*
 *
 * $Id: ToolTipCT.h,v 1.1 2004/11/18 08:54:33 yura Exp $
 *
 * }

 // {$include <Xm/Xm.h>}
var
  XmQTtoolTipConfig : TXrmQuark;cvar;external libXm;

type
  PXmToolTipConfigTraitRec = ^TXmToolTipConfigTraitRec;

  TXmToolTipConfigTraitRec = record
    version: longint;
    _label: TWidget;
    post_delay: longint;
    post_duration: longint;
    timer: TXtIntervalId;
    duration_timer: TXtIntervalId;
    leave_time: TTime;
    slider: TWidget;
    enable: TBoolean;
  end;
  TXmToolTipConfigTrait = PXmToolTipConfigTraitRec;
  PXmToolTipConfigTrait = ^TXmToolTipConfigTrait;

implementation

end.
