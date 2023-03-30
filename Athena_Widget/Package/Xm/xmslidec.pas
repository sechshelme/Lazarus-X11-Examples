unit XmSlideC;

interface

uses
  unixtype,
  x, xlib,
  XTIntrinsic,
  XmXm;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <X11/Intrinsic.h>}

function XmIsSlideContext(w : TWidget) : TBoolean;

const
  XmNslideFinishCallback = 'slideFinishCallback';  
  XmCSlideFinishCallback = 'SlideFinishCallback';
  XmNslideMotionCallback = 'slideMotionCallback';
  XmCSlideMotionCallback = 'SlideMotionCallback';
  XmNslideWidget = 'slideWidget';
  XmCSlideWidget = 'SlideWidget';
  XmNslideInterval = 'slideInterval';
  XmCSlideInterval = 'SlideInterval';
  XmNslideDestWidth = 'slideDestWidth';
  XmCSlideDestWidth = 'SlideDestWidth';
  XmNslideDestHeight = 'slideDestHeight';
  XmCSlideDestHeight = 'SlideDestHeight';
  XmNslideDestX = 'slideDestX';
  XmCSlideDestX = 'SlideDestX';
  XmNslideDestY = 'slideDestY';
  XmCSlideDestY = 'SlideDestY';

  var
    xmSlideContextWidgetClass : TWidgetClass;cvar;external libXm;

type
  //PXmSlideContextWidget = ^TXmSlideContextWidget;
  //TXmSlideContextWidget = PXmSlideContextRec;
  //
  //PXmSlideContextWidgetClass = ^TXmSlideContextWidgetClass;
  //TXmSlideContextWidgetClass = PXmSlideContextClassRec;

  PXmSlideStruct = ^TXmSlideStruct;
  TXmSlideStruct = record
      w : TWidget;
      dest : TXtWidgetGeometry;
      interval : culong;
      id : TXtIntervalId;
    end;
  TXmSlidePtr = PXmSlideStruct;
  PXmSlidePtr = ^TXmSlidePtr;

procedure XmSlide(slide_info:TXmSlidePtr);cdecl;external libXm;

implementation

function XmIsSlideContext(w: TWidget): TBoolean;
begin
//  XmIsSlideContext:=XtIsSubclass(w,xmSlideContextClass);
  XmIsSlideContext:=XtIsSubclass(w,xmSlideContextWidgetClass);
end;


end.
