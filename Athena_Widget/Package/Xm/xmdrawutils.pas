unit XmDrawUtils;

interface

uses
  unixtype,
  x, xlib,
  XTIntrinsic,
  XmXm;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

//{$include <Xm/Xm.h>}
//{$include <Xm/Ext.h>}

type
  PXmBevelOption = ^TXmBevelOption;
  TXmBevelOption =  Longint;
  Const
    XmBEVEL_BOTTOM = 0;
    XmBEVEL_TOP = 1;
    XmBEVEL_BOTH = 2;

procedure XmDrawBevel(para1:PDisplay; para2:TDrawable; para3:TGC; para4:TGC; para5:longint; para6:longint; para7:dword; para8:TXmBevelOption);cdecl;external libXm;

implementation

end.
