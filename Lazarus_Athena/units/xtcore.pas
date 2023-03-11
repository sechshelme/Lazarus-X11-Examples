
unit XTCore;

interface

uses
  x, xlib,
  X11Intrinsic,
  XTCoreP;

type
  PCoreWidgetClass = ^TCoreWidgetClass;
  TCoreWidgetClass = PWidgetClassRec;

  PCoreWidget = ^TCoreWidget;
  TCoreWidget = PWidgetRec;

var
  coreWidgetClass : TWidgetClass;cvar;external libX11;
  widgetClass : TWidgetClass;cvar;external libX11;


implementation

end.
