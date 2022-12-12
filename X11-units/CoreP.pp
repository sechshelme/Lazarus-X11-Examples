
unit CoreP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/CoreP.h
  The following command line parameters were used:
    /usr/include/X11/CoreP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/CoreP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef XtCoreP_h}
{$define XtCoreP_h}  
{$include <X11/Core.h>}
(* error 
externalref int _XtInheritTranslations;
 in declarator_list *)

  function XtInheritTranslations : String;    

  function XtInheritRealize : XtRealizeProc;    

  function XtInheritResize : XtWidgetProc;    

  function XtInheritExpose : XtExposeProc;    

  function XtInheritSetValuesAlmost : XtAlmostProc;    

  function XtInheritAcceptFocus : XtAcceptFocusProc;    

  function XtInheritQueryGeometry : XtGeometryHandler;    

  function XtInheritDisplayAccelerator : XtStringProc;    
































  type
    _CorePart = record
        self : Widget;
        widget_class : WidgetClass;
        parent : Widget;
        xrm_name : XrmName;
        being_destroyed : Boolean;
        destroy_callbacks : XtCallbackList;
        constraints : XtPointer;
        x : Position;
        y : Position;
        width : Dimension;
        height : Dimension;
        border_width : Dimension;
        managed : Boolean;
        sensitive : Boolean;
        ancestor_sensitive : Boolean;
        event_table : XtEventTable;
        tm : XtTMRec;
        accelerators : XtTranslations;
        border_pixel : Pixel;
        border_pixmap : Pixmap;
        popup_list : WidgetList;
        num_popups : Cardinal;
        name : String;
        screen : ^Screen;
        colormap : Colormap;
        window : Window;
        depth : Cardinal;
        background_pixel : Pixel;
        background_pixmap : Pixmap;
        visible : Boolean;
        mapped_when_managed : Boolean;
      end;
    CorePart = _CorePart;

    _WidgetRec = record
        core : CorePart;
      end;
    WidgetRec = _WidgetRec;
    CoreRec = _WidgetRec;


































    _CoreClassPart = record
        superclass : WidgetClass;
        class_name : String;
        widget_size : Cardinal;
        class_initialize : XtProc;
        class_part_initialize : XtWidgetClassProc;
        class_inited : XtEnum;
        initialize : XtInitProc;
        initialize_hook : XtArgsProc;
        realize : XtRealizeProc;
        actions : XtActionList;
        num_actions : Cardinal;
        resources : XtResourceList;
        num_resources : Cardinal;
        xrm_class : XrmClass;
        compress_motion : Boolean;
        compress_exposure : XtEnum;
        compress_enterleave : Boolean;
        visible_interest : Boolean;
        destroy : XtWidgetProc;
        resize : XtWidgetProc;
        expose : XtExposeProc;
        set_values : XtSetValuesFunc;
        set_values_hook : XtArgsFunc;
        set_values_almost : XtAlmostProc;
        get_values_hook : XtArgsProc;
        accept_focus : XtAcceptFocusProc;
        version : XtVersionType;
        callback_private : XtPointer;
        tm_table : String;
        query_geometry : XtGeometryHandler;
        display_accelerator : XtStringProc;
        extension : XtPointer;
      end;
    CoreClassPart = _CoreClassPart;

    _WidgetClassRec = record
        core_class : CoreClassPart;
      end;
    WidgetClassRec = _WidgetClassRec;
    CoreClassRec = _WidgetClassRec;
(* error 
externalref WidgetClassRec widgetClassRec;
 in declarator_list *)

  const
    coreClassRec = widgetClassRec;    
{$endif}


(* error 
/* DON'T ADD STUFF AFTER THIS #endif */

implementation

  function XtInheritTranslations : String;
    begin
      XtInheritTranslations:=String(@(_XtInheritTranslations));
    end;

  function XtInheritRealize : XtRealizeProc;
    begin
      XtInheritRealize:=XtRealizeProc(_XtInherit);
    end;

  function XtInheritResize : XtWidgetProc;
    begin
      XtInheritResize:=XtWidgetProc(_XtInherit);
    end;

  function XtInheritExpose : XtExposeProc;
    begin
      XtInheritExpose:=XtExposeProc(_XtInherit);
    end;

  function XtInheritSetValuesAlmost : XtAlmostProc;
    begin
      XtInheritSetValuesAlmost:=XtAlmostProc(_XtInherit);
    end;

  function XtInheritAcceptFocus : XtAcceptFocusProc;
    begin
      XtInheritAcceptFocus:=XtAcceptFocusProc(_XtInherit);
    end;

  function XtInheritQueryGeometry : XtGeometryHandler;
    begin
      XtInheritQueryGeometry:=XtGeometryHandler(_XtInherit);
    end;

  function XtInheritDisplayAccelerator : XtStringProc;
    begin
      XtInheritDisplayAccelerator:=XtStringProc(_XtInherit);
    end;


end.
