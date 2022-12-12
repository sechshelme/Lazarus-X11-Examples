
unit Reports;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Reports.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Reports.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Reports.pp
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

Type
PXawPannerReport  = ^XawPannerReport;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _Xaw_Reports_h}
{$define _Xaw_Reports_h}





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
{$endif}


implementation


end.
