unit XTCore;

interface

uses
  x, xlib,
  XTIntrinsic;

const
  libXt = 'libXt.so';

var
  coreWidgetClass : TWidgetClass;cvar;external libXt;
  widgetClass : TWidgetClass;cvar;external libXt;

  //type
  //  PCoreWidgetClass = ^TCoreWidgetClass;
  //  TCoreWidgetClass = PWidgetClassRec;
  //
  //  PCoreWidget = ^TCoreWidget;
  //  TCoreWidget = PWidgetRec;

implementation

end.
