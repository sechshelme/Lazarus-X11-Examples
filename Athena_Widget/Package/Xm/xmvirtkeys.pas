unit XmVirtKeys;

interface

uses
  x, xlib,
  XTIntrinsic;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

//{$include <Xm/Xm.h>}

const
  osfXK_Activate = $1004FF44;  
  osfXK_AddMode = $1004FF31;  
  osfXK_BackSpace = $1004FF08;  
  osfXK_BackTab = $1004FF07;  
  osfXK_BeginData = $1004FF5A;  
  osfXK_BeginLine = $1004FF58;  
  osfXK_Cancel = $1004FF69;  
  osfXK_Clear = $1004FF0B;  
  osfXK_Copy = $1004FF02;  
  osfXK_Cut = $1004FF03;  
  osfXK_Delete = $1004FFFF;  
  osfXK_DeselectAll = $1004FF72;  
  osfXK_Down = $1004FF54;  
  osfXK_EndData = $1004FF59;  
  osfXK_EndLine = $1004FF57;  
  osfXK_Escape = $1004FF1B;  
  osfXK_Extend = $1004FF74;  
  osfXK_Help = $1004FF6A;  
  osfXK_Insert = $1004FF63;  
  osfXK_Left = $1004FF51;  
  osfXK_LeftLine = $1004FFF8;  
  osfXK_Menu = $1004FF67;  
  osfXK_MenuBar = $1004FF45;  
  osfXK_Next = $1004FF56;  
  osfXK_NextField = $1004FF5E;  
  osfXK_NextMenu = $1004FF5C;  
  osfXK_NextMinor = $1004FFF5;  
  osfXK_PageDown = $1004FF42;  
  osfXK_PageLeft = $1004FF40;  
  osfXK_PageRight = $1004FF43;  
  osfXK_PageUp = $1004FF41;  
  osfXK_Paste = $1004FF04;  
  osfXK_PrevField = $1004FF5D;  
  osfXK_PrevMenu = $1004FF5B;  
  osfXK_PrimaryPaste = $1004FF32;  
  osfXK_Prior = $1004FF55;  
  osfXK_PriorMinor = $1004FFF6;  
  osfXK_QuickPaste = $1004FF33;  
  osfXK_Reselect = $1004FF73;  
  osfXK_Restore = $1004FF78;  
  osfXK_Right = $1004FF53;  
  osfXK_RightLine = $1004FFF7;  
  osfXK_Select = $1004FF60;  
  osfXK_SelectAll = $1004FF71;  
  osfXK_SwitchDirection = $1004FF7E;  
  osfXK_Undo = $1004FF65;  
  osfXK_Up = $1004FF52;  
{*******    Public Function Declarations    ******* }

{ NeedWidePrototypes  }

procedure XmTranslateKey(dpy:PDisplay; keycode:TKeyCode; modifiers:TModifiers; modifiers_return:PModifiers; keysym_return:PKeySym);cdecl;external libXm;
{*******    End Public Function Declarations    ******* }

implementation

end.
