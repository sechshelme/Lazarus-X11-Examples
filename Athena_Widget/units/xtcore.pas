
unit XTCore;

interface

uses
  x, xlib,
  X11Intrinsic;

const
  libXt = 'libXt.so';


//type
//  PCoreWidgetClass = ^TCoreWidgetClass;
//  TCoreWidgetClass = PWidgetClassRec;
//
//  PCoreWidget = ^TCoreWidget;
//  TCoreWidget = PWidgetRec;

var
  coreWidgetClass : TWidgetClass;cvar;external libXt;
  widgetClass : TWidgetClass;cvar;external libXt;

implementation

end.
