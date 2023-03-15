unit XawReports;

interface

uses
  x, xlib,
  X11Intrinsic;

const
  libXaw = 'libXaw.so';

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <X11/Intrinsic.h>}
{
 * XawPannerReport - this structure is used by the reportCallback of the
 * Panner, Porthole, Viewport, and Scrollbar widgets to report its position.
 * All fields must be filled in, although the changed field may be used as
 * a hint as to which fields have been altered since the last report.
  }
{ mask, see below  }
{ location of slider within outer  }
{ size of slider  }
{ size of canvas  }
type
  PXawPannerReport = ^TXawPannerReport;
  TXawPannerReport = record
      changed : dword;
      slider_x : TPosition;
      slider_y : TPosition;
      slider_width : TDimension;
      slider_height : TDimension;
      canvas_width : TDimension;
      canvas_height : TDimension;
    end;

const
  XawPRSliderX = 1 shl 0;  
  XawPRSliderY = 1 shl 1;  
  XawPRSliderWidth = 1 shl 2;  
  XawPRSliderHeight = 1 shl 3;  
  XawPRCanvasWidth = 1 shl 4;  
  XawPRCanvasHeight = 1 shl 5;  
  XawPRAll = 63;
  XtNreportCallback = 'reportCallback';  
  XtCReportCallback = 'reportCallback';  

implementation

end.
