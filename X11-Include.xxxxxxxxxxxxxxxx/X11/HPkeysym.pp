
unit HPkeysym;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/HPkeysym.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/HPkeysym.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/HPkeysym.pp
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _HPKEYSYM_H}
{$define _HPKEYSYM_H}

const
  hpXK_ClearLine = $1000FF6F;  
  hpXK_InsertLine = $1000FF70;  
  hpXK_DeleteLine = $1000FF71;  
  hpXK_InsertChar = $1000FF72;  
  hpXK_DeleteChar = $1000FF73;  
  hpXK_BackTab = $1000FF74;  
  hpXK_KP_BackTab = $1000FF75;  
  hpXK_Modelock1 = $1000FF48;  
  hpXK_Modelock2 = $1000FF49;  
  hpXK_Reset = $1000FF6C;  
  hpXK_System = $1000FF6D;  
  hpXK_User = $1000FF6E;  
  hpXK_mute_acute = $100000A8;  
  hpXK_mute_grave = $100000A9;  
  hpXK_mute_asciicircum = $100000AA;  
  hpXK_mute_diaeresis = $100000AB;  
  hpXK_mute_asciitilde = $100000AC;  
  hpXK_lira = $100000AF;  
  hpXK_guilder = $100000BE;  
  hpXK_Ydiaeresis = $100000EE;  
  hpXK_IO = $100000EE;  
  hpXK_longminus = $100000F6;  
  hpXK_block = $100000FC;  
{$ifndef _OSF_Keysyms}
{$define _OSF_Keysyms}

const
  osfXK_Copy = $1004FF02;  
  osfXK_Cut = $1004FF03;  
  osfXK_Paste = $1004FF04;  
  osfXK_BackTab = $1004FF07;  
  osfXK_BackSpace = $1004FF08;  
  osfXK_Clear = $1004FF0B;  
  osfXK_Escape = $1004FF1B;  
  osfXK_AddMode = $1004FF31;  
  osfXK_PrimaryPaste = $1004FF32;  
  osfXK_QuickPaste = $1004FF33;  
  osfXK_PageLeft = $1004FF40;  
  osfXK_PageUp = $1004FF41;  
  osfXK_PageDown = $1004FF42;  
  osfXK_PageRight = $1004FF43;  
  osfXK_Activate = $1004FF44;  
  osfXK_MenuBar = $1004FF45;  
  osfXK_Left = $1004FF51;  
  osfXK_Up = $1004FF52;  
  osfXK_Right = $1004FF53;  
  osfXK_Down = $1004FF54;  
  osfXK_EndLine = $1004FF57;  
  osfXK_BeginLine = $1004FF58;  
  osfXK_EndData = $1004FF59;  
  osfXK_BeginData = $1004FF5A;  
  osfXK_PrevMenu = $1004FF5B;  
  osfXK_NextMenu = $1004FF5C;  
  osfXK_PrevField = $1004FF5D;  
  osfXK_NextField = $1004FF5E;  
  osfXK_Select = $1004FF60;  
  osfXK_Insert = $1004FF63;  
  osfXK_Undo = $1004FF65;  
  osfXK_Menu = $1004FF67;  
  osfXK_Cancel = $1004FF69;  
  osfXK_Help = $1004FF6A;  
  osfXK_SelectAll = $1004FF71;  
  osfXK_DeselectAll = $1004FF72;  
  osfXK_Reselect = $1004FF73;  
  osfXK_Extend = $1004FF74;  
  osfXK_Restore = $1004FF78;  
  osfXK_Delete = $1004FFFF;  
{$endif}



const
  XK_Reset = $1000FF6C;  
  XK_System = $1000FF6D;  
  XK_User = $1000FF6E;  
  XK_ClearLine = $1000FF6F;  
  XK_InsertLine = $1000FF70;  
  XK_DeleteLine = $1000FF71;  
  XK_InsertChar = $1000FF72;  
  XK_DeleteChar = $1000FF73;  
  XK_BackTab = $1000FF74;  
  XK_KP_BackTab = $1000FF75;  
  XK_Ext16bit_L = $1000FF76;  
  XK_Ext16bit_R = $1000FF77;  
  XK_mute_acute = $100000a8;  
  XK_mute_grave = $100000a9;  
  XK_mute_asciicircum = $100000aa;  
  XK_mute_diaeresis = $100000ab;  
  XK_mute_asciitilde = $100000ac;  
  XK_lira = $100000af;  
  XK_guilder = $100000be;  
{$ifndef XK_Ydiaeresis}

const
  XK_Ydiaeresis = $100000ee;  
{$endif}

const
  XK_IO = $100000ee;  
  XK_longminus = $100000f6;  
  XK_block = $100000fc;  
{$endif}


implementation


end.
