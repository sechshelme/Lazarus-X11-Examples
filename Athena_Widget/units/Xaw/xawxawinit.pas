unit XawXawInit; // Die Quell-Header heisst Xaw !!

interface

uses
  xlib, x,
  X11Intrinsic,
  XawSimple;

const
  libXaw = 'libXaw.so';

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

//const
//  XawVendor = XVENDORNAMESHORT;  

const
  XawVersion = 7000002;
//type
//  TXawDL = TXawDisplayList;
//{$include <X11/Intrinsic.h>}
//{$include <X11/Xfuncproto.h>}

procedure XawInitializeWidgetSet; cdecl; external libXaw;

procedure XawInitializeDefaultConverters; cdecl; external libXaw;

function XawOpenApplication(app_context_return: PXtAppContext; dpy: PDisplay; screen: PScreen; application_name: TString; application_class: TString; widget_class: TWidgetClass; argc: Plongint; argv: PXtString): TWidget; cdecl; external libXaw;

implementation


end.
