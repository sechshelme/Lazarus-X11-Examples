unit XmDialogSavvyT;

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
    XmQTdialogShellSavvy : TXrmQuark;cvar;external libXm;

{ This trait also requires a resource named "defaultPosition".
   If the child has the trait, the resource will be get and set by 
   the DialogShell ChangeManaged  }
{ Trait structures and typedefs, place typedefs first  }
type

  TXmDialogSavvyMapUnmapProc = procedure (wid:TWidget; map_unmap:TBoolean);cdecl;
{ Version 0: initial release.  }

  PXmDialogSavvyTraitRec = ^TXmDialogSavvyTraitRec;
  TXmDialogSavvyTraitRec = record
      version : longint;
      callMapUnmapCB : TXmDialogSavvyMapUnmapProc;
    end;
  TXmDialogSavvyTrait = PXmDialogSavvyTraitRec;
  PXmDialogSavvyTrait = ^TXmDialogSavvyTrait;

{ This macro is part of the trait and is used for the following situation
   DialogShells always mimic the child position on themselves.
   If the SetValues on a bb child position was 0,
   which is always the _current_ position of the bb in a DialogShell,
   Xt does not see a change and therefore not trigerred a geometry request.
   So BB (or any dialogShellSavvy child) has to catch this case
   and change the position request to use a special value in its
   SetValues method, XmDIALOG_SAVVY_FORCE_ORIGIN, to notify the Dialog that 
   it really wants to move in 0  }

const
  XmDIALOG_SAVVY_FORCE_ORIGIN=TPosition( not (0));

implementation

end.
