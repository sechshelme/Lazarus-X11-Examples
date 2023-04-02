unit XmScreen;

interface

uses
  unixtype,
  x, xlib,
  XTIntrinsic,
  XmXm;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <Xm/Xm.h>}

function XmIsScreen(w : TWidget) : TBoolean;

//type
//  PXmScreen = ^TXmScreen;
//  TXmScreen = PXmScreenRec;
//
//  PXmScreenClass = ^TXmScreenClass;
//  TXmScreenClass = PXmScreenClassRec;
  var
    xmScreenClass : TWidgetClass;cvar;external libXm;
{*******    Public Function Declarations    ******* }
type

  TXmScreenColorProc = procedure (screen:PScreen; bg_color:PXColor; fg_color:PXColor; sel_color:PXColor; ts_color:PXColor; bs_color:PXColor);cdecl;
  TXmAllocColorProc = function (display:PDisplay; colormap:TColormap; screen_in_out:PXColor):TStatus;cdecl;

function XmGetXmScreen(screen:PScreen):TWidget;cdecl;external libXm;
{*******    End Public Function Declarations    ******* }

implementation

function XmIsScreen(w: TWidget): TBoolean;
begin
  XmIsScreen:=XtIsSubclass(w,xmScreenClass);
end;

end.
