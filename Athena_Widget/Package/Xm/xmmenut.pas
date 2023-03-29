unit XmMenuT;

interface

uses
  x, xlib,
  xresource,
  XTIntrinsic;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}
{
 * HISTORY
  }
// {$include <Xm/Xm.h>}

{ Menu System Traits  }
  var
    XmQTmenuSystem : TXrmQuark;cvar;external libXm;
    XmQTmenuSavvy : TXrmQuark;cvar;external libXm;

{ Trait structures and typedefs, place typedefs first  }
{ Used by the disable callback method of the menu savvy trait  }
type
  PXmActivateState = ^TXmActivateState;
  TXmActivateState =  Longint;
  Const
    XmDISABLE_ACTIVATE = 0;
    XmENABLE_ACTIVATE = 1;

{ Menu trait typedefs  }
type

  TXmMenuSystemWidgetProc = function (para1:TWidget):longint;cdecl;
  TXmMenuSystemVerifyProc = function (para1:TWidget; para2:PXEvent):TBoolean;cdecl;
  TXmMenuSystemControlTraversalProc = procedure (para1:TWidget; para2:TBoolean);cdecl;
  TXmMenuSystemCascadeProc = procedure (para1:TWidget; para2:TWidget; para3:PXEvent);cdecl;
  TXmMenuSystemPositionProc = procedure (para1:TWidget; para2:PXEvent);cdecl;
  TXmMenuSystemPopdownProc = function (para1:TWidget; para2:PXEvent):TBoolean;cdecl;
  TXmMenuSystemEntryCallbackProc = procedure (para1:TWidget; para2:TWidget; para3:TXtPointer);cdecl;
  TXmMenuSystemUpdateHistoryProc = function (para1:TWidget; para2:TWidget; para3:TBoolean):TBoolean;cdecl;
  TXmMenuSystemUpdateBindingsProc = procedure (para1:TWidget; para2:longint);cdecl;
  TXmMenuSystemRecordPostFromWidgetProc = procedure (para1:TWidget; para2:TWidget; para3:TBoolean);cdecl;
  TXmMenuSystemDisarmProc = procedure (para1:TWidget);cdecl;
  TXmMenuSystemPopupPostedProc = function (para1:TWidget):TWidget;cdecl;
  TXmMenuSavvyDisableProc = procedure (para1:TWidget; para2:TXmActivateState);cdecl;

  PXmMenuSavvyGetAcceleratorProc = ^TXmMenuSavvyGetAcceleratorProc;
  TXmMenuSavvyGetAcceleratorProc = function (para1:TWidget):Pchar;cdecl;
  TXmMenuSavvyGetMnemonicProc = function (para1:TWidget):TKeySym;cdecl;

  PXmMenuSavvyGetActivateCBNameProc = ^TXmMenuSavvyGetActivateCBNameProc;
  TXmMenuSavvyGetActivateCBNameProc = function :Pchar;cdecl;

  TXmMenuSystemTypeProc = TXmMenuSystemWidgetProc;
  TXmMenuSystemStatusProc = TXmMenuSystemWidgetProc;
  TXmMenuSystemGetPostedFromWidgetProc = TXmMenuSystemDisarmProc;
  TXmMenuSystemArmProc = TXmMenuSystemDisarmProc;
  TXmMenuSystemMenuBarCleanupProc = TXmMenuSystemDisarmProc;
  TXmMenuSystemTearOffArmProc = TXmMenuSystemDisarmProc;
  TXmMenuSystemReparentProc = TXmMenuSystemPositionProc;
  TXmMenuSystemPopdownAllProc = TXmMenuSystemPositionProc;
  TXmMenuSystemChildFocusProc = TXmMenuSystemDisarmProc;
{ Version 0: initial release.  }
{ 0  }
type
  PXmMenuSystemTraitRec = ^TXmMenuSystemTraitRec;
  TXmMenuSystemTraitRec = record
      version : longint;
      _type : TXmMenuSystemTypeProc;
      status : TXmMenuSystemStatusProc;
      cascade : TXmMenuSystemCascadeProc;
      verifyButton : TXmMenuSystemVerifyProc;
      controlTraversal : TXmMenuSystemControlTraversalProc;
      menuBarCleanup : TXmMenuSystemMenuBarCleanupProc;
      popdown : TXmMenuSystemPopdownProc;
      buttonPopdown : TXmMenuSystemPopdownProc;
      reparentToTearOffShell : TXmMenuSystemReparentProc;
      reparentToMenuShell : TXmMenuSystemReparentProc;
      arm : TXmMenuSystemArmProc;
      disarm : TXmMenuSystemDisarmProc;
      tearOffArm : TXmMenuSystemTearOffArmProc;
      entryCallback : TXmMenuSystemEntryCallbackProc;
      updateHistory : TXmMenuSystemUpdateHistoryProc;
      getLastSelectToplevel : TXmMenuSystemGetPostedFromWidgetProc;
      position : TXmMenuSystemPositionProc;
      updateBindings : TXmMenuSystemUpdateBindingsProc;
      recordPostFromWidget : TXmMenuSystemRecordPostFromWidgetProc;
      popdownEveryone : TXmMenuSystemPopdownAllProc;
      childFocus : TXmMenuSystemChildFocusProc;
      getPopupPosted : TXmMenuSystemPopupPostedProc;
    end;
  TXmMenuSystemTrait = PXmMenuSystemTraitRec;
  PXmMenuSystemTrait = ^TXmMenuSystemTrait;

  { XmTmenuSavvyTrait  }
{ Version 0: initial release.  }

  PXmMenuSavvyTraitRec = ^TXmMenuSavvyTraitRec;
  TXmMenuSavvyTraitRec = record
      version : longint;
      disableCallback : TXmMenuSavvyDisableProc;
      getAccelerator : TXmMenuSavvyGetAcceleratorProc;
      getMnemonic : TXmMenuSavvyGetMnemonicProc;
      getActivateCBName : TXmMenuSavvyGetActivateCBNameProc;
    end;

  TXmMenuSavvyTrait = PXmMenuSavvyTraitRec;
  PXmMenuSavvyTrait = ^TXmMenuSavvyTrait;

implementation

end.
