
unit TextSinkP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/TextSinkP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/TextSinkP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/TextSinkP.pp
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
Pchar  = ^char;
Plongint  = ^longint;
PPosition  = ^Position;
PScreen  = ^Screen;
Psmallint  = ^smallint;
PTextSinkClassPart  = ^TextSinkClassPart;
PTextSinkClassRec  = ^TextSinkClassRec;
PTextSinkExt  = ^TextSinkExt;
PTextSinkExtRec  = ^TextSinkExtRec;
PTextSinkPart  = ^TextSinkPart;
PTextSinkRec  = ^TextSinkRec;
PXawTextPaintList  = ^XawTextPaintList;
PXawTextPaintStruct  = ^XawTextPaintStruct;
PXawTextPosition  = ^XawTextPosition;
PXawTextProperty  = ^XawTextProperty;
PXawTextPropertyList  = ^XawTextPropertyList;
PXFontStruct  = ^XFontStruct;
PXmuArea  = ^XmuArea;
PXRectangle  = ^XRectangle;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawTextSinkP_h}
{$define _XawTextSinkP_h}

{$include <X11/Xaw/TextSink.h>}
{$include <X11/Xaw/TextP.h>	/* This sink works with the Text widget */}
{$include <X11/Xaw/TextSrcP.h>	/* This sink works with the Text Source */}
{$include <X11/Xmu/Xmu.h>}
{$ifndef OLDXAW}


const
  XAW_TPROP_FONT = 1 shl 0;  
  XAW_TPROP_FONTSET = 1 shl 1;  

  XAW_TPROP_FOREGROUND = 1 shl 2;  
  XAW_TPROP_BACKGROUND = 1 shl 3;  
  XAW_TPROP_FPIXMAP = 1 shl 4;  
  XAW_TPROP_BPIXMAP = 1 shl 5;  
  XAW_TPROP_UNDERLINE = 1 shl 6;  
  XAW_TPROP_OVERSTRIKE = 1 shl 7;  
  XAW_TPROP_SUBSCRIPT = 1 shl 8;  
  XAW_TPROP_SUPERSCRIPT = 1 shl 9;  

  XAW_TPROP_FOUNDRY = 1 shl 0;  
  XAW_TPROP_FAMILY = 1 shl 1;  
  XAW_TPROP_WEIGHT = 1 shl 2;  
  XAW_TPROP_SLANT = 1 shl 3;  
  XAW_TPROP_SETWIDTH = 1 shl 4;  
  XAW_TPROP_ADDSTYLE = 1 shl 5;  
  XAW_TPROP_PIXELSIZE = 1 shl 6;  
  XAW_TPROP_POINTSIZE = 1 shl 7;  
  XAW_TPROP_RESX = 1 shl 8;  
  XAW_TPROP_RESY = 1 shl 9;  
  XAW_TPROP_SPACING = 1 shl 10;  
  XAW_TPROP_AVGWIDTH = 1 shl 11;  
  XAW_TPROP_REGISTRY = 1 shl 12;  
  XAW_TPROP_ENCODING = 1 shl 13;  

type
  PXawTextProperty = ^TXawTextProperty;
  TXawTextProperty = record
      identifier : TXrmQuark;
      code : TXrmQuark;
      mask : dword;
      font : PXFontStruct;
      fontset : TXFontSet;
      foreground : TPixel;
      background : TPixel;
      foreground_pixmap : TPixmap;
      background_pixmap : TPixmap;
      xlfd : TXrmQuark;
      xlfd_mask : dword;
      foundry : TXrmQuark;
      family : TXrmQuark;
      weight : TXrmQuark;
      slant : TXrmQuark;
      setwidth : TXrmQuark;
      addstyle : TXrmQuark;
      pixel_size : TXrmQuark;
      point_size : TXrmQuark;
      res_x : TXrmQuark;
      res_y : TXrmQuark;
      spacing : TXrmQuark;
      avgwidth : TXrmQuark;
      registry : TXrmQuark;
      encoding : TXrmQuark;
      underline_position : smallint;
      underline_thickness : smallint;
    end;

  PXawTextPropertyList = ^TXawTextPropertyList;
  TXawTextPropertyList = record
      identifier : TXrmQuark;
      screen : PScreen;
      colormap : TColormap;
      depth : longint;
      properties : ^PXawTextProperty;
      num_properties : TCardinal;
      next : PXawTextPropertyList;
    end;



  PXawTextPaintStruct = ^TXawTextPaintStruct;
  TXawTextPaintStruct = record
      next : PXawTextPaintStruct;
      x : longint;
      y : longint;
      width : longint;
      text : Pchar;
      length : TCardinal;
      _property : PXawTextProperty;
      max_ascent : longint;
      max_descent : longint;
      backtabs : PXmuArea;
      highlight : TBoolean;
    end;




  PXawTextPaintList = ^TXawTextPaintList;
  TXawTextPaintList = record
      clip : PXmuArea;
      hightabs : PXmuArea;
      paint : PXawTextPaintStruct;
      bearings : PXawTextPaintStruct;
    end;

  PTextSinkExtRec = ^TTextSinkExtRec;
  TTextSinkExtRec = record
      next_extension : TXtPointer;
      record_type : TXrmQuark;
      version : longint;
      record_size : TCardinal;
      BeginPaint : function (para1:TWidget):TBool;cdecl;
      PreparePaint : procedure (para1:TWidget; para2:longint; para3:longint; para4:TXawTextPosition; para5:TXawTextPosition; 
                    para6:TBool);cdecl;
      DoPaint : procedure (para1:TWidget);cdecl;
      EndPaint : function (para1:TWidget):TBool;cdecl;
    end;
  TTextSinkExt = PTextSinkExtRec;
  PTextSinkExt = ^TTextSinkExt;
{$endif}
type

  TXawSinkDisplayTextProc = procedure (para1:TWidget; para2:longint; para3:longint; para4:TXawTextPosition; para5:TXawTextPosition; 
                para6:TBool);cdecl;

  TXawSinkInsertCursorProc = procedure (para1:TWidget; para2:longint; para3:longint; para4:TXawTextInsertState);cdecl;

  TXawSinkClearToBackgroundProc = procedure (para1:TWidget; para2:longint; para3:longint; para4:dword; para5:dword);cdecl;

  TXawSinkFindPositionProc = procedure (para1:TWidget; para2:TXawTextPosition; para3:longint; para4:longint; para5:TBool; 
                para6:PXawTextPosition; para7:Plongint; para8:Plongint);cdecl;

  TXawSinkFindDistanceProc = procedure (para1:TWidget; para2:TXawTextPosition; para3:longint; para4:TXawTextPosition; para5:Plongint; 
                para6:PXawTextPosition; para7:Plongint);cdecl;

  TXawSinkResolveProc = procedure (para1:TWidget; para2:TXawTextPosition; para3:longint; para4:longint; para5:PXawTextPosition);cdecl;

  TXawSinkMaxLinesProc = function (para1:TWidget; para2:dword):longint;cdecl;

  TXawSinkMaxHeightProc = function (para1:TWidget; para2:longint):longint;cdecl;

  TXawSinkSetTabsProc = procedure (para1:TWidget; para2:longint; para3:Psmallint);cdecl;

  TXawSinkGetCursorBoundsProc = procedure (para1:TWidget; para2:PXRectangle);cdecl;
{$ifndef OLDXAW}
{$endif}
type
  PTextSinkClassPart = ^TTextSinkClassPart;
  TTextSinkClassPart = record
      DisplayText : TXawSinkDisplayTextProc;
      InsertCursor : TXawSinkInsertCursorProc;
      ClearToBackground : TXawSinkClearToBackgroundProc;
      FindPosition : TXawSinkFindPositionProc;
      FindDistance : TXawSinkFindDistanceProc;
      Resolve : TXawSinkResolveProc;
      MaxLines : TXawSinkMaxLinesProc;
      MaxHeight : TXawSinkMaxHeightProc;
      SetTabs : TXawSinkSetTabsProc;
      GetCursorBounds : TXawSinkGetCursorBoundsProc;
      extension : TTextSinkExt;
    end;


  PTextSinkClassRec = ^TTextSinkClassRec;
  TTextSinkClassRec = record
      object_class : TObjectClassPart;
      text_sink_class : TTextSinkClassPart;
    end;
  var
    textSinkClassRec : TTextSinkClassRec;cvar;external;








{$ifndef OLDXAW}


{$endif}
type
  PTextSinkPart = ^TTextSinkPart;
  TTextSinkPart = record
      foreground : TPixel;
      background : TPixel;
      tabs : PPosition;
      char_tabs : Psmallint;
      tab_count : longint;
      cursor_color : TPixel;
      properties : PXawTextPropertyList;
      paint : PXawTextPaintList;
      pad : array[0..1] of TXtPointer;
    end;


  PTextSinkRec = ^TTextSinkRec;
  TTextSinkRec = record
      object : TObjectPart;
      text_sink : TTextSinkPart;
    end;

{$ifndef OLDXAW}

function XawTextSinkConvertPropertyList(name:TString; spec:TString; screen:PScreen; Colormap:TColormap; depth:longint):PXawTextPropertyList;cdecl;external;
function XawTextSinkGetProperty(w:TWidget; _property:TXrmQuark):PXawTextProperty;cdecl;external;
function XawTextSinkCopyProperty(w:TWidget; _property:TXrmQuark):PXawTextProperty;cdecl;external;
function XawTextSinkAddProperty(w:TWidget; _property:PXawTextProperty):PXawTextProperty;cdecl;external;
function XawTextSinkCombineProperty(w:TWidget; result_in_out:PXawTextProperty; _property:PXawTextProperty; override:TBool):PXawTextProperty;cdecl;external;
function XawTextSinkBeginPaint(w:TWidget):TBool;cdecl;external;
procedure XawTextSinkPreparePaint(w:TWidget; y:longint; line:longint; from:TXawTextPosition; to:TXawTextPosition; 
            highlight:TBool);cdecl;external;
procedure XawTextSinkDoPaint(w:TWidget);cdecl;external;
function XawTextSinkEndPaint(w:TWidget):TBool;cdecl;external;
{$endif}

function XtInheritDisplayText : TXawSinkDisplayTextProc;  

function XtInheritInsertCursor : TXawSinkInsertCursorProc;  

function XtInheritClearToBackground : TXawSinkClearToBackgroundProc;  

function XtInheritFindPosition : TXawSinkFindPositionProc;  

function XtInheritFindDistance : TXawSinkFindDistanceProc;  

function XtInheritResolve : TXawSinkResolveProc;  

function XtInheritMaxLines : TXawSinkMaxLinesProc;  

function XtInheritMaxHeight : TXawSinkMaxHeightProc;  

function XtInheritSetTabs : TXawSinkSetTabsProc;  

function XtInheritGetCursorBounds : TXawSinkGetCursorBoundsProc;  

{$endif}


implementation

function XtInheritDisplayText : TXawSinkDisplayTextProc;
  begin
    XtInheritDisplayText:=TXawSinkDisplayTextProc(_XtInherit);
  end;

function XtInheritInsertCursor : TXawSinkInsertCursorProc;
  begin
    XtInheritInsertCursor:=TXawSinkInsertCursorProc(_XtInherit);
  end;

function XtInheritClearToBackground : TXawSinkClearToBackgroundProc;
  begin
    XtInheritClearToBackground:=TXawSinkClearToBackgroundProc(_XtInherit);
  end;

function XtInheritFindPosition : TXawSinkFindPositionProc;
  begin
    XtInheritFindPosition:=TXawSinkFindPositionProc(_XtInherit);
  end;

function XtInheritFindDistance : TXawSinkFindDistanceProc;
  begin
    XtInheritFindDistance:=TXawSinkFindDistanceProc(_XtInherit);
  end;

function XtInheritResolve : TXawSinkResolveProc;
  begin
    XtInheritResolve:=TXawSinkResolveProc(_XtInherit);
  end;

function XtInheritMaxLines : TXawSinkMaxLinesProc;
  begin
    XtInheritMaxLines:=TXawSinkMaxLinesProc(_XtInherit);
  end;

function XtInheritMaxHeight : TXawSinkMaxHeightProc;
  begin
    XtInheritMaxHeight:=TXawSinkMaxHeightProc(_XtInherit);
  end;

function XtInheritSetTabs : TXawSinkSetTabsProc;
  begin
    XtInheritSetTabs:=TXawSinkSetTabsProc(_XtInherit);
  end;

function XtInheritGetCursorBounds : TXawSinkGetCursorBoundsProc;
  begin
    XtInheritGetCursorBounds:=TXawSinkGetCursorBoundsProc(_XtInherit);
  end;


end.
