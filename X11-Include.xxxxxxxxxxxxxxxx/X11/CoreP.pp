
unit CoreP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/CoreP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/CoreP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/CoreP.pp
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
PCoreClassPart  = ^CoreClassPart;
PCoreClassRec  = ^CoreClassRec;
PCorePart  = ^CorePart;
PCoreRec  = ^CoreRec;
PScreen  = ^Screen;
PWidgetClassRec  = ^WidgetClassRec;
PWidgetRec  = ^WidgetRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef XtCoreP_h}
{$define XtCoreP_h}
{$include <X11/Core.h>}
(* error 
externalref int _XtInheritTranslations;
 in declarator_list *)

function XtInheritTranslations : TString;  

function XtInheritRealize : TXtRealizeProc;  

function XtInheritResize : TXtWidgetProc;  

function XtInheritExpose : TXtExposeProc;  

function XtInheritSetValuesAlmost : TXtAlmostProc;  

function XtInheritAcceptFocus : TXtAcceptFocusProc;  

function XtInheritQueryGeometry : TXtGeometryHandler;  

function XtInheritDisplayAccelerator : TXtStringProc;  































type
  PCorePart = ^TCorePart;
  TCorePart = record
      self : TWidget;
      widget_class : TWidgetClass;
      parent : TWidget;
      xrm_name : TXrmName;
      being_destroyed : TBoolean;
      destroy_callbacks : TXtCallbackList;
      constraints : TXtPointer;
      x : TPosition;
      y : TPosition;
      width : TDimension;
      height : TDimension;
      border_width : TDimension;
      managed : TBoolean;
      sensitive : TBoolean;
      ancestor_sensitive : TBoolean;
      event_table : TXtEventTable;
      tm : TXtTMRec;
      accelerators : TXtTranslations;
      border_pixel : TPixel;
      border_pixmap : TPixmap;
      popup_list : TWidgetList;
      num_popups : TCardinal;
      name : TString;
      screen : PScreen;
      colormap : TColormap;
      window : TWindow;
      depth : TCardinal;
      background_pixel : TPixel;
      background_pixmap : TPixmap;
      visible : TBoolean;
      mapped_when_managed : TBoolean;
    end;

  PWidgetRec = ^TWidgetRec;
  TWidgetRec = record
      core : TCorePart;
    end;
  TCoreRec = TWidgetRec;
  PCoreRec = ^TCoreRec;


































  PCoreClassPart = ^TCoreClassPart;
  TCoreClassPart = record
      superclass : TWidgetClass;
      class_name : TString;
      widget_size : TCardinal;
      class_initialize : TXtProc;
      class_part_initialize : TXtWidgetClassProc;
      class_inited : TXtEnum;
      initialize : TXtInitProc;
      initialize_hook : TXtArgsProc;
      realize : TXtRealizeProc;
      actions : TXtActionList;
      num_actions : TCardinal;
      resources : TXtResourceList;
      num_resources : TCardinal;
      xrm_class : TXrmClass;
      compress_motion : TBoolean;
      compress_exposure : TXtEnum;
      compress_enterleave : TBoolean;
      visible_interest : TBoolean;
      destroy : TXtWidgetProc;
      resize : TXtWidgetProc;
      expose : TXtExposeProc;
      set_values : TXtSetValuesFunc;
      set_values_hook : TXtArgsFunc;
      set_values_almost : TXtAlmostProc;
      get_values_hook : TXtArgsProc;
      accept_focus : TXtAcceptFocusProc;
      version : TXtVersionType;
      callback_private : TXtPointer;
      tm_table : TString;
      query_geometry : TXtGeometryHandler;
      display_accelerator : TXtStringProc;
      extension : TXtPointer;
    end;

  PWidgetClassRec = ^TWidgetClassRec;
  TWidgetClassRec = record
      core_class : TCoreClassPart;
    end;
  TCoreClassRec = TWidgetClassRec;
  PCoreClassRec = ^TCoreClassRec;
(* error 
externalref WidgetClassRec widgetClassRec;
 in declarator_list *)

const
  coreClassRec = widgetClassRec;  
{$endif}


(* error 
/* DON'T ADD STUFF AFTER THIS #endif */

implementation

function XtInheritTranslations : TString;
  begin
    XtInheritTranslations:=TString(@(_XtInheritTranslations));
  end;

function XtInheritRealize : TXtRealizeProc;
  begin
    XtInheritRealize:=TXtRealizeProc(_XtInherit);
  end;

function XtInheritResize : TXtWidgetProc;
  begin
    XtInheritResize:=TXtWidgetProc(_XtInherit);
  end;

function XtInheritExpose : TXtExposeProc;
  begin
    XtInheritExpose:=TXtExposeProc(_XtInherit);
  end;

function XtInheritSetValuesAlmost : TXtAlmostProc;
  begin
    XtInheritSetValuesAlmost:=TXtAlmostProc(_XtInherit);
  end;

function XtInheritAcceptFocus : TXtAcceptFocusProc;
  begin
    XtInheritAcceptFocus:=TXtAcceptFocusProc(_XtInherit);
  end;

function XtInheritQueryGeometry : TXtGeometryHandler;
  begin
    XtInheritQueryGeometry:=TXtGeometryHandler(_XtInherit);
  end;

function XtInheritDisplayAccelerator : TXtStringProc;
  begin
    XtInheritDisplayAccelerator:=TXtStringProc(_XtInherit);
  end;


end.
