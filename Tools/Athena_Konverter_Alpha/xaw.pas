unit GTK4;

interface

uses
  cairo, pango;
// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/AsciiSinkP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/AsciiSinkP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/AsciiSinkP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawAsciiSinkP_h}
//// {$define _XawAsciiSinkP_h}

//// {$include <X11/Xaw/TextSinkP.h>}
//// {$include <X11/Xaw/AsciiSink.h>}

type
  T_AsciiSinkClassPart = record
      extension : TXtPointer;
    end;
  TAsciiSinkClassPart = T_AsciiSinkClassPart;


  T_AsciiSinkClassRec = record
      object_class : TObjectClassPart;
      text_sink_class : TTextSinkClassPart;
      ascii_sink_class : TAsciiSinkClassPart;
    end;
  TAsciiSinkClassRec = T_AsciiSinkClassRec;
  var
    asciiSinkClassRec : TAsciiSinkClassRec;cvar;external;





//// {$ifndef OLDXAW}

//// {$endif}
type
  TAsciiSinkPart = record
      font : ^TXFontStruct;
      echo : TBoolean;
      display_nonprinting : TBoolean;
      normgc : TGC;
      invgc : TGC;
      xorgc : TGC;
      cursor_position : TXawTextPosition;
      laststate : TXawTextInsertState;
      cursor_x : smallint;
      cursor_y : smallint;
      pad : array[0..3] of TXtPointer;
    end;


  T_AsciiSinkRec = record
      object : TObjectPart;
      text_sink : TTextSinkPart;
      ascii_sink : TAsciiSinkPart;
    end;
  TAsciiSinkRec = T_AsciiSinkRec;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/AllWidgets.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/AllWidgets.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/AllWidgets.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawAllWidgets_h}
//// {$define _XawAllWidgets_h}
//// {$include <X11/Xmu/WidgetNode.h>}

  var
    XawWidgetArray : ^TXmuWidgetNode;cvar;external;
    XawWidgetCount : longint;cvar;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/FormP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/FormP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/FormP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef _XawFormP_h}
//// {$define _XawFormP_h}
//// {$include <X11/Xfuncproto.h>}
//// {$include <X11/Xaw/Form.h>}
//// {$include <X11/Xaw/XawInit.h>}
//// (* error 
//// #define XtREdgeType "EdgeType"
in define line 60 *)
    type
      TLayoutState = (LayoutPending,LayoutInProgress,LayoutDone
        );
//// (* error 
//// ((Boolean (*)(FormWidget, unsigned int, unsigned int, Bool))_XtInherit)
in define line 69 *)
//// {$ifndef OLDXAW}
//// {$endif}
    type
      TFormClassPart = record
          layout : function (_para1:TFormWidget; _para2:dword; _para3:dword; _para4:TBool):TBoolean;cdecl;
          extension : TXtPointer;
        end;

      T_FormClassRec = record
          core_class : TCoreClassPart;
          composite_class : TCompositeClassPart;
          constraint_class : TConstraintClassPart;
          form_class : TFormClassPart;
        end;
      TFormClassRec = T_FormClassRec;
      var
        formClassRec : TFormClassRec;cvar;external;









//// {$ifndef OLDXAW}

//// {$endif}
    type
      T_FormPart = record
          default_spacing : longint;
          old_width : TDimension;
          old_height : TDimension;
          no_refigure : longint;
          needs_relayout : TBoolean;
          resize_in_layout : TBoolean;
          preferred_width : TDimension;
          preferred_height : TDimension;
          resize_is_no_op : TBoolean;
          display_list : ^TXawDisplayList;
          pad : array[0..3] of TXtPointer;
        end;
      TFormPart = T_FormPart;

      T_FormRec = record
          core : TCorePart;
          composite : TCompositePart;
          constraint : TConstraintPart;
          form : TFormPart;
        end;
      TFormRec = T_FormRec;










//// {$ifndef OLDXAW}

//// {$endif}
    type
      T_FormConstraintsPart = record
          top : TXtEdgeType;
          bottom : TXtEdgeType;
          left : TXtEdgeType;
          right : TXtEdgeType;
          dx : longint;
          dy : longint;
          horiz_base : TWidget;
          vert_base : TWidget;
          allow_resize : TBoolean;
          virtual_width : smallint;
          virtual_height : smallint;
          new_x : TPosition;
          new_y : TPosition;
          layout_state : TLayoutState;
          deferred_resize : TBoolean;
          virtual_x : smallint;
          virtual_y : smallint;
          pad : array[0..1] of TXtPointer;
        end;
      TFormConstraintsPart = T_FormConstraintsPart;

      T_FormConstraintsRec = record
          form : TFormConstraintsPart;
        end;
      TFormConstraintsRec = T_FormConstraintsRec;
      TFormConstraints = ^T_FormConstraintsRec;
//// {$endif}

//// (* error 
//// #endif /* _XawFormP_h */

// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/SmeLine.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/SmeLine.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/SmeLine.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef _SmeLine_h}
//// {$define _SmeLine_h}
//// {$include <X11/Xaw/Sme.h>}
//// {$include <X11/Xmu/Converters.h>}


const
  XtCLineWidth = 'LineWidth';  
  XtCStipple = 'Stipple';  
  XtNlineWidth = 'lineWidth';  
  XtNstipple = 'stipple';  
type
  TSmeLineObjectClass = ^T_SmeLineClassRec;

  TSmeLineObject = ^T_SmeLineRec;
  var
    smeLineObjectClass : TWidgetClass;cvar;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/DialogP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/DialogP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/DialogP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _DialogP_h}
//// {$define _DialogP_h}
//// {$include <X11/Xaw/Dialog.h>}
//// {$include <X11/Xaw/FormP.h>}
type
  TDialogClassPart = record
      extension : TXtPointer;
    end;

  T_DialogClassRec = record
      core_class : TCoreClassPart;
      composite_class : TCompositeClassPart;
      constraint_class : TConstraintClassPart;
      form_class : TFormClassPart;
      dialog_class : TDialogClassPart;
    end;
  TDialogClassRec = T_DialogClassRec;
  var
    dialogClassRec : TDialogClassRec;cvar;external;








//// {$ifndef OLDXAW}

//// {$endif}
type
  T_DialogPart = record
      _label : TString;
      value : TString;
      icon : TPixmap;
      iconW : TWidget;
      labelW : TWidget;
      valueW : TWidget;
      pad : array[0..3] of TXtPointer;
    end;
  TDialogPart = T_DialogPart;

  T_DialogRec = record
      core : TCorePart;
      composite : TCompositePart;
      constraint : TConstraintPart;
      form : TFormPart;
      dialog : TDialogPart;
    end;
  TDialogRec = T_DialogRec;

  TDialogConstraintsPart = record
      extension : TXtPointer;
    end;

  T_DialogConstraintsRec = record
      form : TFormConstraintsPart;
      dialog : TDialogConstraintsPart;
    end;
  TDialogConstraintsRec = T_DialogConstraintsRec;
  TDialogConstraints = ^T_DialogConstraintsRec;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/Panner.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/Panner.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/Panner.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawPanner_h}
//// {$define _XawPanner_h}
//// {$include <X11/Intrinsic.h>}
//// {$include <X11/Xaw/Reports.h>}

//// {$ifndef _XtStringDefs_h_}

const
  XtNresize = 'resize';  
  XtCResize = 'Resize';  
//// {$endif}

const
  XtNallowOff = 'allowOff';  
  XtCAllowOff = 'AllowOff';  
  XtNbackgroundStipple = 'backgroundStipple';  
  XtCBackgroundStipple = 'BackgroundStipple';  
  XtNdefaultScale = 'defaultScale';  
  XtCDefaultScale = 'DefaultScale';  
  XtNcanvasWidth = 'canvasWidth';  
  XtCCanvasWidth = 'CanvasWidth';  
  XtNcanvasHeight = 'canvasHeight';  
  XtCCanvasHeight = 'CanvasHeight';  
  XtNinternalSpace = 'internalSpace';  
  XtCInternalSpace = 'InternalSpace';  
  XtNlineWidth = 'lineWidth';  
  XtCLineWidth = 'LineWidth';  
  XtNrubberBand = 'rubberBand';  
  XtCRubberBand = 'RubberBand';  
  XtNshadowThickness = 'shadowThickness';  
  XtCShadowThickness = 'ShadowThickness';  
  XtNshadowColor = 'shadowColor';  
  XtCShadowColor = 'ShadowColor';  
  XtNsliderX = 'sliderX';  
  XtCSliderX = 'SliderX';  
  XtNsliderY = 'sliderY';  
  XtCSliderY = 'SliderY';  
  XtNsliderWidth = 'sliderWidth';  
  XtCSliderWidth = 'SliderWidth';  
  XtNsliderHeight = 'sliderHeight';  
  XtCSliderHeight = 'SliderHeight';  
  var
    pannerWidgetClass : TWidgetClass;cvar;external;
type
  TPannerWidgetClass = ^T_PannerClassRec;

  TPannerWidget = ^T_PannerRec;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/SmeBSB.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/SmeBSB.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/SmeBSB.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef _SmeBSB_h}
//// {$define _SmeBSB_h}
//// {$include <X11/Xmu/Converters.h>}
//// {$include <X11/Xaw/Sme.h>}

type
  TSmeBSBObjectClass = ^T_SmeBSBClassRec;

  TSmeBSBObject = ^T_SmeBSBRec;
  var
    smeBSBObjectClass : TWidgetClass;cvar;external;

const
  XtNleftBitmap = 'leftBitmap';  
  XtNleftMargin = 'leftMargin';  
  XtNrightBitmap = 'rightBitmap';  
  XtNrightMargin = 'rightMargin';  
  XtNvertSpace = 'vertSpace';  
  XtNmenuName = 'menuName';  
  XtCMenuName = 'MenuName';  
//// {$ifndef XtNfontSet}

const
  XtNfontSet = 'fontSet';  
//// {$endif}
//// {$ifndef XtCFontSet}

const
  XtCFontSet = 'FontSet';  
//// {$endif}

const
  XtCLeftBitmap = 'LeftBitmap';  
  XtCHorizontalMargins = 'HorizontalMargins';  
  XtCRightBitmap = 'RightBitmap';  
  XtCVertSpace = 'VertSpace';  
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/Sme.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/Sme.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/Sme.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef _Sme_h}
//// {$define _Sme_h}
//// {$include <X11/Intrinsic.h>}
//// {$include <X11/RectObj.h>}

//// {$ifndef XtCInternational}

const
  XtCInternational = 'International';  
//// {$endif}
//// {$ifndef XtNinternational}

const
  XtNinternational = 'international';  
//// {$endif}
type
  TSmeObjectClass = ^T_SmeClassRec;

  TSmeObject = ^T_SmeRec;
  var
    smeObjectClass : TWidgetClass;cvar;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/Cardinals.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/Cardinals.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/Cardinals.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _Cardinals_h}
//// {$define _Cardinals_h}

function ZERO : TCardinal;  

function ONE : TCardinal;  

function TWO : TCardinal;  

function THREE : TCardinal;  

function FOUR : TCardinal;  

function FIVE : TCardinal;  

function SIX : TCardinal;  

function SEVEN : TCardinal;  

function EIGHT : TCardinal;  

function NINE : TCardinal;  

function TEN : TCardinal;  

//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/Toggle.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/Toggle.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/Toggle.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef _XawToggle_h}
//// {$define _XawToggle_h}
//// {$include <X11/Xaw/Command.h>}



const
  XtCWidget = 'Widget';  
  XtCState = 'State';  
  XtCRadioGroup = 'RadioGroup';  
  XtCRadioData = 'RadioData';  
//// {$ifndef _XtStringDefs_h_}

const
  XtRWidget = 'Widget';  
//// {$endif}

const
  XtNstate = 'state';  
  XtNradioGroup = 'radioGroup';  
  XtNradioData = 'radioData';  
  var
    toggleWidgetClass : TWidgetClass;cvar;external;
type
  TToggleWidgetClass = ^T_ToggleClassRec;

  TToggleWidget = ^T_ToggleRec;


//// (* error 
//// void XawToggleChangeRadioGroup
in declaration at line 124 *)


function XawToggleGetCurrent(radio_group:TWidget):TXtPointer;cdecl;external;

procedure XawToggleSetCurrent(radio_group:TWidget; radio_data:TXtPointer);cdecl;external;

procedure XawToggleUnsetCurrent(radio_group:TWidget);cdecl;external;
//// {$endif}

//// (* error 
//// #endif /* _XawToggle_h */

// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/TipP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/TipP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/TipP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawTipP_h}
//// {$define _XawTipP_h}
//// {$include <X11/Xaw/Tip.h>}
//// {$include <X11/CoreP.h>}
//// {$include <X11/Xaw/XawInit.h>}
type
  TTipClassPart = record
      extension : TXtPointer;
    end;

  T_TipClassRec = record
      core_class : TCoreClassPart;
      tip_class : TTipClassPart;
    end;
  TTipClassRec = T_TipClassRec;
  var
    tipClassRec : TTipClassRec;cvar;external;


type
  T_TipPart = record
      foreground : TPixel;
      font : ^TXFontStruct;
      fontset : TXFontSet;
      top_margin : TDimension;
      bottom_margin : TDimension;
      left_margin : TDimension;
      right_margin : TDimension;
      backing_store : longint;
      timeout : longint;
      display_list : ^TXawDisplayList;
      gc : TGC;
      timer : TXtIntervalId;
      _label : TString;
      international : TBoolean;
      encoding : byte;
      pad : array[0..3] of TXtPointer;
    end;
  TTipPart = T_TipPart;

  T_TipRec = record
      core : TCorePart;
      tip : TTipPart;
    end;
  TTipRec = T_TipRec;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/Simple.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/Simple.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/Simple.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _Simple_h}
//// {$define _Simple_h}
//// {$include <X11/Xmu/Converters.h>}


const
  XtNcursor = 'cursor';  
  XtNcursorName = 'cursorName';  
  XtNinsensitiveBorder = 'insensitiveBorder';  
  XtCInsensitive = 'Insensitive';  
//// {$ifndef XtCInternational}

const
  XtCInternational = 'International';  
//// {$endif}
//// {$ifndef XtNinternational}

const
  XtNinternational = 'international';  
//// {$endif}
//// {$ifndef OLDXAW}
//// {$ifndef XawNdisplayList}

const
  XawNdisplayList = 'displayList';  
//// {$endif}
//// {$ifndef XawCDisplayList}

const
  XawCDisplayList = 'DisplayList';  
//// {$endif}
//// {$ifndef XawRDisplayList}

const
  XawRDisplayList = 'XawDisplayList';  
//// {$endif}

const
  XtNtip = 'tip';  
  XtCTip = 'Tip';  
//// {$endif}

type
  TSimpleWidgetClass = ^T_SimpleClassRec;

  TSimpleWidget = ^T_SimpleRec;
  var
    simpleWidgetClass : TWidgetClass;cvar;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/SimpleMenP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/SimpleMenP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/SimpleMenP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef _SimpleMenuP_h}
//// {$define _SimpleMenuP_h}
//// {$include <X11/Xaw/SimpleMenu.h>}
//// {$include <X11/Xaw/SmeP.h>}
//// {$include <X11/ShellP.h>}
//// {$include <X11/Xaw/XawInit.h>}

type
  TSimpleMenuClassPart = record
      extension : TXtPointer;
    end;

  T_SimpleMenuClassRec = record
      core_class : TCoreClassPart;
      composite_class : TCompositeClassPart;
      shell_class : TShellClassPart;
      override_shell_class : TOverrideShellClassPart;
      simpleMenu_class : TSimpleMenuClassPart;
    end;
  TSimpleMenuClassRec = T_SimpleMenuClassRec;
  var
    simpleMenuClassRec : TSimpleMenuClassRec;cvar;external;















//// {$ifndef OLDXAW}

//// {$endif}
type
  T_SimpleMenuPart = record
      label_string : TString;
      _label : TSmeObject;
      label_class : TWidgetClass;
      top_margin : TDimension;
      bottom_margin : TDimension;
      row_height : TDimension;
      cursor : TCursor;
      popup_entry : TSmeObject;
      menu_on_screen : TBoolean;
      backing_store : longint;
      recursive_set_values : TBoolean;
      menu_width : TBoolean;
      menu_height : TBoolean;
      entry_set : TSmeObject;
      left_margin : TDimension;
      right_margin : TDimension;
      display_list : ^TXawDisplayList;
      sub_menu : TWidget;
      state : byte;
      pad : array[0..3] of TXtPointer;
    end;
  TSimpleMenuPart = T_SimpleMenuPart;

  T_SimpleMenuRec = record
      core : TCorePart;
      composite : TCompositePart;
      shell : TShellPart;
      override : TOverrideShellPart;
      simple_menu : TSimpleMenuPart;
    end;
  TSimpleMenuRec = T_SimpleMenuRec;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/AsciiTextP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/AsciiTextP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/AsciiTextP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef _AsciiTextP_h}
//// {$define _AsciiTextP_h}
//// {$include <X11/Xaw/TextP.h>}
//// {$include <X11/Xaw/AsciiText.h>}
//// {$include <X11/Xaw/AsciiSrc.h>}
//// {$include <X11/Xaw/MultiSrc.h>}
type
  TAsciiClassPart = record
      extension : TXtPointer;
    end;

  T_AsciiTextClassRec = record
      core_class : TCoreClassPart;
      simple_class : TSimpleClassPart;
      text_class : TTextClassPart;
      ascii_class : TAsciiClassPart;
    end;
  TAsciiTextClassRec = T_AsciiTextClassRec;
  var
    asciiTextClassRec : TAsciiTextClassRec;cvar;external;
//// {$ifndef OLDXAW}

//// {$endif}
type
  TAsciiPart = record
      resource : longint;
      pad : array[0..3] of TXtPointer;
    end;

  T_AsciiRec = record
      core : TCorePart;
      simple : TSimplePart;
      text : TTextPart;
      ascii : TAsciiPart;
    end;
  TAsciiRec = T_AsciiRec;

//// {$ifdef ASCII_STRING}

  TAsciiStringClassPart = record
      extension : TXtPointer;
    end;

  T_AsciiStringClassRec = record
      core_class : TCoreClassPart;
      simple_class : TSimpleClassPart;
      text_class : TTextClassPart;
      ascii_class : TAsciiClassPart;
      string_class : TAsciiStringClassPart;
    end;
  TAsciiStringClassRec = T_AsciiStringClassRec;
  var
    asciiStringClassRec : TAsciiStringClassRec;cvar;external;
//// {$ifndef OLDXAW}

//// {$endif}
type
  TAsciiStringPart = record
      resource : longint;
      pad : array[0..3] of TXtPointer;
    end;

  T_AsciiStringRec = record
      core : TCorePart;
      simple : TSimplePart;
      text : TTextPart;
      ascii : TAsciiPart;
      ascii_str : TAsciiStringPart;
    end;
  TAsciiStringRec = T_AsciiStringRec;
//// {$endif}

//// {$ifdef ASCII_DISK}

type
  TAsciiDiskClassPart = record
      extension : TXtPointer;
    end;

  T_AsciiDiskClassRec = record
      core_class : TCoreClassPart;
      simple_class : TSimpleClassPart;
      text_class : TTextClassPart;
      ascii_class : TAsciiClassPart;
      disk_class : TAsciiDiskClassPart;
    end;
  TAsciiDiskClassRec = T_AsciiDiskClassRec;
  var
    asciiDiskClassRec : TAsciiDiskClassRec;cvar;external;
//// {$ifndef OLDXAW}

//// {$endif}
type
  TAsciiDiskPart = record
      resource : char;
      pad : array[0..3] of TXtPointer;
    end;

  T_AsciiDiskRec = record
      core : TCorePart;
      simple : TSimplePart;
      text : TTextPart;
      ascii : TAsciiPart;
      ascii_disk : TAsciiDiskPart;
    end;
  TAsciiDiskRec = T_AsciiDiskRec;
//// {$endif}

//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/StripChart.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/StripChart.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/StripChart.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawStripChart_h}
//// {$define _XawStripChart_h}
//// {$include <X11/Intrinsic.h>}



const
  DEFAULT_JUMP = -(1);  
//// {$ifndef _XtStringDefs_h_}

const
  XtNhighlight = 'highlight';  
  XtNupdate = 'update';  
//// {$endif}

const
  XtCJumpScroll = 'JumpScroll';  
  XtCScale = 'Scale';  
  XtNgetValue = 'getValue';  
  XtNjumpScroll = 'jumpScroll';  
  XtNminScale = 'minScale';  
  XtNscale = 'scale';  
  XtNvmunix = 'vmunix';  
type
  TStripChartWidget = ^T_StripChartRec;

  TStripChartWidgetClass = ^T_StripChartClassRec;
  var
    stripChartWidgetClass : TWidgetClass;cvar;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/TextSrcP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/TextSrcP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/TextSrcP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

    Type
    PAtom  = ^Atom;
    Pchar  = ^char;
    PDisplay  = ^Display;
    Pdword  = ^dword;
    Plongint  = ^longint;
    Pwchar_t  = ^wchar_t;
    PXawTextAnchor  = ^XawTextAnchor;
    PXawTextBlock  = ^XawTextBlock;
    PXawTextEntity  = ^XawTextEntity;
    PXtPointer  = ^XtPointer;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawTextSrcP_h}
//// {$define _XawTextSrcP_h}

//// {$include <X11/Xfuncproto.h>}
//// {$include <X11/Xaw/TextSrc.h>}
//// {$include <X11/Xaw/TextP.h>	/* This source works with the Text widget */}
//// {$ifndef OLDXAW}
//// (* error 
//// struct _XawTextAnchor {
in declaration at line 63 *)
      var
        entities : ^TXawTextEntity;cvar;public;
//// (* error 
//// };
in declaration at line 65 *)

    const
      XAW_TENTF_HIDE = $0001;      
      XAW_TENTF_READ = $0002;      
      XAW_TENTF_REPLACE = $0004;      

    type
      T_XawTextEntity = record
          _type : smallint;
          flags : smallint;
          next : ^TXawTextEntity;
          data : TXtPointer;
          offset : TXawTextPosition;
          length : TCardinal;
          _property : TXrmQuark;
        end;

//// {$endif}
//// {$if 0	/* no longer used */}

    type
      TTextSrcExtRec = record
          next_extension : TXtPointer;
          record_type : TXrmQuark;
          version : longint;
          record_size : TCardinal;
          Input : function :longint;cdecl;
        end;
      TTextSrcExt = ^TTextSrcExtRec;
//// {$endif}
    type

      T_XawSrcReadProc = function (_para1:TWidget; _para2:TXawTextPosition; _para3:PTXawTextBlock; _para4:longint):TXawTextPosition;cdecl;

      T_XawSrcReplaceProc = function (_para1:TWidget; _para2:TXawTextPosition; _para3:TXawTextPosition; _para4:PTXawTextBlock):longint;cdecl;

      T_XawSrcScanProc = function (_para1:TWidget; _para2:TXawTextPosition; _para3:TXawTextScanType; _para4:TXawTextScanDirection; _para5:longint; 
                   _para6:TBool):TXawTextPosition;cdecl;

      T_XawSrcSearchProc = function (_para1:TWidget; _para2:TXawTextPosition; _para3:TXawTextScanDirection; _para4:PTXawTextBlock):TXawTextPosition;cdecl;

      T_XawSrcSetSelectionProc = procedure (_para1:TWidget; _para2:TXawTextPosition; _para3:TXawTextPosition; _para4:TAtom);cdecl;

      T_XawSrcConvertSelectionProc = function (_para1:TWidget; _para2:PTAtom; _para3:PTAtom; _para4:PTAtom; _para5:PTXtPointer; 
                   _para6:Pdword; _para7:Plongint):TBoolean;cdecl;
//// {$ifndef OLDXAW}
//// {$endif}
    type
      T_TextSrcClassPart = record
          Read : T_XawSrcReadProc;
          Replace : T_XawSrcReplaceProc;
          Scan : T_XawSrcScanProc;
          Search : T_XawSrcSearchProc;
          SetSelection : T_XawSrcSetSelectionProc;
          ConvertSelection : T_XawSrcConvertSelectionProc;
          extension : TXtPointer;
        end;
      TTextSrcClassPart = T_TextSrcClassPart;


      T_TextSrcClassRec = record
          object_class : TObjectClassPart;
          textSrc_class : TTextSrcClassPart;
        end;
      TTextSrcClassRec = T_TextSrcClassRec;
      var
        textSrcClassRec : TTextSrcClassRec;cvar;external;
//// {$ifndef OLDXAW}
    type
      T_XawTextUndo = TXawTextUndo;
//// {$endif}



//// {$ifndef OLDXAW}





//// {$endif}
    type
      TTextSrcPart = record
          edit_mode : TXawTextEditType;
          text_format : TXrmQuark;
          callback : TXtCallbackList;
          changed : TBoolean;
          enable_undo : TBoolean;
          undo_state : TBoolean;
          undo : ^TXawTextUndo;
          text : TWidgetList;
          num_text : TCardinal;
          property_callback : TXtCallbackList;
          anchors : ^^TXawTextAnchor;
          num_anchors : longint;
          pad : array[0..0] of TXtPointer;
        end;


      T_TextSrcRec = record
          object : TObjectPart;
          textSrc : TTextSrcPart;
        end;
      TTextSrcRec = T_TextSrcRec;


function _XawTextWCToMB(display:PTDisplay; wstr:PTwchar_t; len_in_out:Plongint):^char;cdecl;external;
function _XawTextMBToWC(display:PTDisplay; str:Pchar; len_in_out:Plongint):^Twchar_t;cdecl;external;
//// {$ifndef OLDXAW}

function XawTextSourceAddAnchor(source:TWidget; position:TXawTextPosition):^TXawTextAnchor;cdecl;external;
function XawTextSourceFindAnchor(source:TWidget; position:TXawTextPosition):^TXawTextAnchor;cdecl;external;
function XawTextSourceNextAnchor(source:TWidget; anchor:PTXawTextAnchor):^TXawTextAnchor;cdecl;external;
function XawTextSourcePrevAnchor(source:TWidget; anchor:PTXawTextAnchor):^TXawTextAnchor;cdecl;external;
function XawTextSourceRemoveAnchor(source:TWidget; anchor:PTXawTextAnchor):^TXawTextAnchor;cdecl;external;
function XawTextSourceAnchorAndEntity(w:TWidget; position:TXawTextPosition; anchor_return:PPTXawTextAnchor; entity_return:PPTXawTextEntity):TBool;cdecl;external;
function XawTextSourceAddEntity(source:TWidget; _type:longint; flags:longint; data:TXtPointer; position:TXawTextPosition; 
               length:TCardinal; _property:TXrmQuark):^TXawTextEntity;cdecl;external;
procedure XawTextSourceClearEntities(w:TWidget; left:TXawTextPosition; right:TXawTextPosition);cdecl;external;
//// {$endif}
//// {$if 0	/* no longer used */}
    type

      T_XawTextPositionFunc = function :TXawTextPosition;cdecl;
//// {$endif}

    function XtInheritInput : T_XawTextPositionFunc;      

    function XtInheritRead : T_XawSrcReadProc;      

    function XtInheritReplace : T_XawSrcReplaceProc;      

    function XtInheritScan : T_XawSrcScanProc;      

    function XtInheritSearch : T_XawSrcSearchProc;      

    function XtInheritSetSelection : T_XawSrcSetSelectionProc;      

    function XtInheritConvertSelection : T_XawSrcConvertSelectionProc;      

//// {$if 0}

    const
      XtTextSrcExtVersion = 1;      
      XtTextSrcExtTypeString = 'XT_TEXTSRC_EXT';      
//// {$endif}
//// {$endif}

//// (* error 
//// #endif /* _XawTextSrcP_h */

// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/MultiSrc.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/MultiSrc.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/MultiSrc.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}





//// {$ifndef _XawMultiSrc_h}
//// {$define _XawMultiSrc_h}
//// {$include <X11/Xaw/TextSrc.h>}

  var
    multiSrcObjectClass : TWidgetClass;cvar;external;
type
  TMultiSrcObjectClass = ^T_MultiSrcClassRec;

  TMultiSrcObject = ^T_MultiSrcRec;

const
  MultiSourceObjectClass = MultiSrcObjectClass;  
  MultiSourceObject = MultiSrcObject;  
  XtCDataCompression = 'DataCompression';  
  XtCPieceSize = 'PieceSize';  
  XtCType = 'Type';  
  XtCUseStringInPlace = 'UseStringInPlace';  
  XtNdataCompression = 'dataCompression';  
  XtNpieceSize = 'pieceSize';  
  XtNtype = 'type';  
  XtNuseStringInPlace = 'useStringInPlace';  
  XtRMultiType = 'MultiType';  
  XtEstring = 'string';  
  XtEfile = 'file';  

//// (* error 
//// void XawMultiSourceFreeString
in declaration at line 115 *)

function _XawMultiSave(w:TWidget):TBool;cdecl;external;
//// (* error 
////  _Xconst char		*name
 in declarator_list *)
//// {$endif}

//// (* error 
//// #endif /* _XawMultiSrc_h  */

// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/BoxP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/BoxP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/BoxP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawBoxP_h}
//// {$define _XawBoxP_h}

//// {$include <X11/Xaw/Box.h>}
//// {$include <X11/Xmu/Converters.h>}
//// {$include <X11/Xaw/XawInit.h>}

type
  TBoxClassPart = record
      extension : TXtPointer;
    end;


  T_BoxClassRec = record
      core_class : TCoreClassPart;
      composite_class : TCompositeClassPart;
      box_class : TBoxClassPart;
    end;
  TBoxClassRec = T_BoxClassRec;
  var
    boxClassRec : TBoxClassRec;cvar;external;



//// {$ifndef OLDXAW}

//// {$endif}
type
  TBoxPart = record
      h_space : TDimension;
      v_space : TDimension;
      orientation : TXtOrientation;
      preferred_width : TDimension;
      preferred_height : TDimension;
      last_query_width : TDimension;
      last_query_height : TDimension;
      last_query_mode : TXtGeometryMask;
      display_list : ^TXawDisplayList;
      pad : array[0..3] of TXtPointer;
    end;


  T_BoxRec = record
      core : TCorePart;
      composite : TCompositePart;
      box : TBoxPart;
    end;
  TBoxRec = T_BoxRec;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/ViewportP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/ViewportP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/ViewportP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef _ViewportP_h}
//// {$define _ViewportP_h}
//// {$include <X11/Xaw/Viewport.h>}
//// {$include <X11/Xaw/FormP.h>}
type
  TViewportClassPart = record
      extension : TXtPointer;
    end;

  T_ViewportClassRec = record
      core_class : TCoreClassPart;
      composite_class : TCompositeClassPart;
      constraint_class : TConstraintClassPart;
      form_class : TFormClassPart;
      viewport_class : TViewportClassPart;
    end;
  TViewportClassRec = T_ViewportClassRec;
  var
    viewportClassRec : TViewportClassRec;cvar;external;










//// {$ifndef OLDXAW}

//// {$endif}
type
  T_ViewportPart = record
      forcebars : TBoolean;
      allowhoriz : TBoolean;
      allowvert : TBoolean;
      usebottom : TBoolean;
      useright : TBoolean;
      report_callbacks : TXtCallbackList;
      clip : TWidget;
      child : TWidget;
      horiz_bar : TWidget;
      vert_bar : TWidget;
      pad : array[0..3] of TXtPointer;
    end;
  TViewportPart = T_ViewportPart;

  T_ViewportRec = record
      core : TCorePart;
      composite : TCompositePart;
      constraint : TConstraintPart;
      form : TFormPart;
      viewport : TViewportPart;
    end;
  TViewportRec = T_ViewportRec;


  TViewportConstraintsPart = record
      reparented : TBool;
    end;

  T_ViewportConstraintsRec = record
      form : TFormConstraintsPart;
      viewport : TViewportConstraintsPart;
    end;
  TViewportConstraintsRec = T_ViewportConstraintsRec;
  TViewportConstraints = ^T_ViewportConstraintsRec;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/MultiSink.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/MultiSink.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/MultiSink.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef _XawMultiSink_h}
//// {$define _XawMultiSink_h}

//// {$include <X11/Xaw/TextSink.h>}


const
  XtCOutput = 'Output';  
  XtNdisplayNonprinting = 'displayNonprinting';  
  XtNecho = 'echo';  
//// {$ifndef XtNfontSet		/*Sheeran, Omron KK, 93/03/04*/}

const
  XtNfontSet = 'fontSet';  
//// {$endif}
//// {$ifndef XtCFontSet		/*Sheeran, Omron KK, 93/03/04*/}

const
  XtCFontSet = 'FontSet';  
//// {$endif}

  var
    multiSinkObjectClass : TWidgetClass;cvar;external;
type
  TMultiSinkObjectClass = ^T_MultiSinkClassRec;

  TMultiSinkObject = ^T_MultiSinkRec;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/TemplateP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/TemplateP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/TemplateP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _TemplateP_h}
//// {$define _TemplateP_h}
//// {$include <X11/Xaw/Template.h>}

//// {$include <X11/CoreP.h>}


const
  XtRTemplateResource = 'TemplateResource';  
type
  TTemplateClassPart = record
      extension : TXtPointer;
    end;

  T_TemplateClassRec = record
      core_class : TCoreClassPart;
      template_class : TTemplateClassPart;
    end;
  TTemplateClassRec = T_TemplateClassRec;
  var
    templateClassRec : TTemplateClassRec;cvar;external;


type
  TTemplatePart = record
      resource : ^char;
      private : ^char;
    end;
//// {$if defined(__cplusplus) || defined(c_plusplus)}
//// {$else}
//// {$endif}
type
  T_TemplateRec = record
      core : TCorePart;
      c_template : TTemplatePart;
      template : TTemplatePart;
    end;
  TTemplateRec = T_TemplateRec;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/AsciiSrcP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/AsciiSrcP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/AsciiSrcP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef _XawAsciiSrcP_h}
//// {$define _XawAsciiSrcP_h}
//// {$include <X11/Xaw/TextSrcP.h>}
//// {$include <X11/Xaw/AsciiSrc.h>}
//// {$ifdef L_tmpnam}

const
  TMPSIZ = L_tmpnam;  
//// {$else}
//// {$ifdef PATH_MAX}

const
  TMPSIZ = PATH_MAX;  
//// {$else}


const
  TMPSIZ = 1024;  
//// {$endif}
//// {$endif}




type
  T_Piece = record
      text : ^char;
      used : TXawTextPosition;
      prev : ^T_Piece;
      next : ^T_Piece;
    end;
  TPiece = T_Piece;

  T_AsciiSrcClassPart = record
      extension : TXtPointer;
    end;
  TAsciiSrcClassPart = T_AsciiSrcClassPart;


  T_AsciiSrcClassRec = record
      object_class : TObjectClassPart;
      text_src_class : TTextSrcClassPart;
      ascii_src_class : TAsciiSrcClassPart;
    end;
  TAsciiSrcClassRec = T_AsciiSrcClassRec;
  var
    asciiSrcClassRec : TAsciiSrcClassRec;cvar;external;






//// {$ifdef OLDXAW}
//// {$endif}


//// {$ifdef ASCII_DISK}

//// {$endif}



//// {$ifdef OLDXAW}
//// {$endif}



//// {$ifndef OLDXAW}

//// {$endif}
type
  T_AsciiSrcPart = record
      _string : ^char;
      _type : TXawAsciiType;
      piece_size : TXawTextPosition;
      data_compression : TBoolean;
      callback : TXtCallbackList;
      use_string_in_place : TBoolean;
      ascii_length : longint;
      filename : TString;
      is_tempfile : TBoolean;
      changes : TBoolean;
      allocated_string : TBoolean;
      length : TXawTextPosition;
      first_piece : ^TPiece;
      pad : array[0..3] of TXtPointer;
    end;
  TAsciiSrcPart = T_AsciiSrcPart;


  T_AsciiSrcRec = record
      object : TObjectPart;
      text_src : TTextSrcPart;
      ascii_src : TAsciiSrcPart;
    end;
  TAsciiSrcRec = T_AsciiSrcRec;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/Command.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/Command.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/Command.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawCommand_h}
//// {$define _XawCommand_h}
//// {$include <X11/Xaw/Label.h>}


const
  XtNhighlightThickness = 'highlightThickness';  
  XtNshapeStyle = 'shapeStyle';  
  XtCShapeStyle = 'ShapeStyle';  
  XtRShapeStyle = 'ShapeStyle';  
  XtNcornerRoundPercent = 'cornerRoundPercent';  
  XtCCornerRoundPercent = 'CornerRoundPercent';  
  XawShapeRectangle = XmuShapeRectangle;  
  XawShapeOval = XmuShapeOval;  
  XawShapeEllipse = XmuShapeEllipse;  
  XawShapeRoundedRectangle = XmuShapeRoundedRectangle;  
  var
    commandWidgetClass : TWidgetClass;cvar;external;
type
  TCommandWidgetClass = ^T_CommandClassRec;

  TCommandWidget = ^T_CommandRec;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/Viewport.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/Viewport.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/Viewport.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawViewport_h}
//// {$define _XawViewport_h}
//// {$include <X11/Xaw/Form.h>}
//// {$include <X11/Xaw/Reports.h>}

//// {$ifndef _XtStringDefs_h_}

const
  XtNforceBars = 'forceBars';  
  XtNallowHoriz = 'allowHoriz';  
  XtNallowVert = 'allowVert';  
  XtNuseBottom = 'useBottom';  
  XtNuseRight = 'useRight';  
//// {$endif}
  var
    viewportWidgetClass : TWidgetClass;cvar;external;
type
  TViewportWidgetClass = ^T_ViewportClassRec;

  TViewportWidget = ^T_ViewportRec;
//// (* error 
//// void XawViewportSetLocation
//// {$if NeedWidePrototypes}
//// {$else}
//// {$endif}
in declaration at line 102 *)
//// {$if NeedWidePrototypes}
//// {$else}
//// (* error 
////  Position		x,
//// (* error 
////  Position		y
//// {$endif}
 in declarator_list *)
 in declarator_list *)
//// {$endif}

//// (* error 
//// #endif /* _XawViewport_h */

// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/MenuButtoP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/MenuButtoP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/MenuButtoP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef _XawMenuButtonP_h}
//// {$define _XawMenuButtonP_h}
//// {$include <X11/Xaw/MenuButton.h>}
//// {$include <X11/Xaw/CommandP.h>}

type
  T_MenuButtonClass = record
      extension : TXtPointer;
    end;
  TMenuButtonClassPart = T_MenuButtonClass;


  T_MenuButtonClassRec = record
      core_class : TCoreClassPart;
      simple_class : TSimpleClassPart;
      label_class : TLabelClassPart;
      command_class : TCommandClassPart;
      menuButton_class : TMenuButtonClassPart;
    end;
  TMenuButtonClassRec = T_MenuButtonClassRec;
  var
    menuButtonClassRec : TMenuButtonClassRec;cvar;external;


//// {$ifndef OLDXAW}

//// {$endif}
type
  TMenuButtonPart = record
      menu_name : ^char;
      pad : array[0..3] of TXtPointer;
    end;


  T_MenuButtonRec = record
      core : TCorePart;
      simple : TSimplePart;
      _label : TLabelPart;
      command : TCommandPart;
      menu_button : TMenuButtonPart;
    end;
  TMenuButtonRec = T_MenuButtonRec;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/TextSinkP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/TextSinkP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/TextSinkP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Plongint  = ^longint;
PScreen  = ^Screen;
Psmallint  = ^smallint;
PXawTextPosition  = ^XawTextPosition;
PXawTextProperty  = ^XawTextProperty;
PXRectangle  = ^XRectangle;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawTextSinkP_h}
//// {$define _XawTextSinkP_h}

//// {$include <X11/Xaw/TextSink.h>}
//// {$include <X11/Xaw/TextP.h>	/* This sink works with the Text widget */}
//// {$include <X11/Xaw/TextSrcP.h>	/* This sink works with the Text Source */}
//// {$include <X11/Xmu/Xmu.h>}
//// {$ifndef OLDXAW}


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
  T_XawTextProperty = record
      identifier : TXrmQuark;
      code : TXrmQuark;
      mask : dword;
      font : ^TXFontStruct;
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

  T_XawTextPropertyList = record
      identifier : TXrmQuark;
      screen : ^TScreen;
      colormap : TColormap;
      depth : longint;
      properties : ^^TXawTextProperty;
      num_properties : TCardinal;
      next : ^TXawTextPropertyList;
    end;

  T_XawTextPaintStruct = TXawTextPaintStruct;


  T_XawTextPaintStruct = record
      next : ^TXawTextPaintStruct;
      x : longint;
      y : longint;
      width : longint;
      text : ^char;
      length : TCardinal;
      _property : ^TXawTextProperty;
      max_ascent : longint;
      max_descent : longint;
      backtabs : ^TXmuArea;
      highlight : TBoolean;
    end;




  TXawTextPaintList = record
      clip : ^TXmuArea;
      hightabs : ^TXmuArea;
      paint : ^TXawTextPaintStruct;
      bearings : ^TXawTextPaintStruct;
    end;

  TTextSinkExtRec = record
      next_extension : TXtPointer;
      record_type : TXrmQuark;
      version : longint;
      record_size : TCardinal;
      BeginPaint : function (_para1:TWidget):TBool;cdecl;
      PreparePaint : procedure (_para1:TWidget; _para2:longint; _para3:longint; _para4:TXawTextPosition; _para5:TXawTextPosition; 
                    _para6:TBool);cdecl;
      DoPaint : procedure (_para1:TWidget);cdecl;
      EndPaint : function (_para1:TWidget):TBool;cdecl;
    end;
  TTextSinkExt = ^TTextSinkExtRec;
//// {$endif}
type

  T_XawSinkDisplayTextProc = procedure (_para1:TWidget; _para2:longint; _para3:longint; _para4:TXawTextPosition; _para5:TXawTextPosition; 
                _para6:TBool);cdecl;

  T_XawSinkInsertCursorProc = procedure (_para1:TWidget; _para2:longint; _para3:longint; _para4:TXawTextInsertState);cdecl;

  T_XawSinkClearToBackgroundProc = procedure (_para1:TWidget; _para2:longint; _para3:longint; _para4:dword; _para5:dword);cdecl;

  T_XawSinkFindPositionProc = procedure (_para1:TWidget; _para2:TXawTextPosition; _para3:longint; _para4:longint; _para5:TBool; 
                _para6:PTXawTextPosition; _para7:Plongint; _para8:Plongint);cdecl;

  T_XawSinkFindDistanceProc = procedure (_para1:TWidget; _para2:TXawTextPosition; _para3:longint; _para4:TXawTextPosition; _para5:Plongint; 
                _para6:PTXawTextPosition; _para7:Plongint);cdecl;

  T_XawSinkResolveProc = procedure (_para1:TWidget; _para2:TXawTextPosition; _para3:longint; _para4:longint; _para5:PTXawTextPosition);cdecl;

  T_XawSinkMaxLinesProc = function (_para1:TWidget; _para2:dword):longint;cdecl;

  T_XawSinkMaxHeightProc = function (_para1:TWidget; _para2:longint):longint;cdecl;

  T_XawSinkSetTabsProc = procedure (_para1:TWidget; _para2:longint; _para3:Psmallint);cdecl;

  T_XawSinkGetCursorBoundsProc = procedure (_para1:TWidget; _para2:PTXRectangle);cdecl;
//// {$ifndef OLDXAW}
//// {$endif}
type
  T_TextSinkClassPart = record
      DisplayText : T_XawSinkDisplayTextProc;
      InsertCursor : T_XawSinkInsertCursorProc;
      ClearToBackground : T_XawSinkClearToBackgroundProc;
      FindPosition : T_XawSinkFindPositionProc;
      FindDistance : T_XawSinkFindDistanceProc;
      Resolve : T_XawSinkResolveProc;
      MaxLines : T_XawSinkMaxLinesProc;
      MaxHeight : T_XawSinkMaxHeightProc;
      SetTabs : T_XawSinkSetTabsProc;
      GetCursorBounds : T_XawSinkGetCursorBoundsProc;
      extension : TTextSinkExt;
    end;
  TTextSinkClassPart = T_TextSinkClassPart;


  T_TextSinkClassRec = record
      object_class : TObjectClassPart;
      text_sink_class : TTextSinkClassPart;
    end;
  TTextSinkClassRec = T_TextSinkClassRec;
  var
    textSinkClassRec : TTextSinkClassRec;cvar;external;








//// {$ifndef OLDXAW}


//// {$endif}
type
  TTextSinkPart = record
      foreground : TPixel;
      background : TPixel;
      tabs : ^TPosition;
      char_tabs : ^smallint;
      tab_count : longint;
      cursor_color : TPixel;
      properties : ^TXawTextPropertyList;
      paint : ^TXawTextPaintList;
      pad : array[0..1] of TXtPointer;
    end;


  T_TextSinkRec = record
      object : TObjectPart;
      text_sink : TTextSinkPart;
    end;
  TTextSinkRec = T_TextSinkRec;

//// {$ifndef OLDXAW}

function XawTextSinkConvertPropertyList(name:TString; spec:TString; screen:PTScreen; Colormap:TColormap; depth:longint):^TXawTextPropertyList;cdecl;external;
function XawTextSinkGetProperty(w:TWidget; _property:TXrmQuark):^TXawTextProperty;cdecl;external;
function XawTextSinkCopyProperty(w:TWidget; _property:TXrmQuark):^TXawTextProperty;cdecl;external;
function XawTextSinkAddProperty(w:TWidget; _property:PTXawTextProperty):^TXawTextProperty;cdecl;external;
function XawTextSinkCombineProperty(w:TWidget; result_in_out:PTXawTextProperty; _property:PTXawTextProperty; override:TBool):^TXawTextProperty;cdecl;external;
function XawTextSinkBeginPaint(w:TWidget):TBool;cdecl;external;
procedure XawTextSinkPreparePaint(w:TWidget; y:longint; line:longint; from:TXawTextPosition; to:TXawTextPosition; 
            highlight:TBool);cdecl;external;
procedure XawTextSinkDoPaint(w:TWidget);cdecl;external;
function XawTextSinkEndPaint(w:TWidget):TBool;cdecl;external;
//// {$endif}

function XtInheritDisplayText : T_XawSinkDisplayTextProc;  

function XtInheritInsertCursor : T_XawSinkInsertCursorProc;  

function XtInheritClearToBackground : T_XawSinkClearToBackgroundProc;  

function XtInheritFindPosition : T_XawSinkFindPositionProc;  

function XtInheritFindDistance : T_XawSinkFindDistanceProc;  

function XtInheritResolve : T_XawSinkResolveProc;  

function XtInheritMaxLines : T_XawSinkMaxLinesProc;  

function XtInheritMaxHeight : T_XawSinkMaxHeightProc;  

function XtInheritSetTabs : T_XawSinkSetTabsProc;  

function XtInheritGetCursorBounds : T_XawSinkGetCursorBoundsProc;  

//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/CommandP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/CommandP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/CommandP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawCommandP_h}
//// {$define _XawCommandP_h}

//// {$include <X11/Xaw/Command.h>}
//// {$include <X11/Xaw/LabelP.h>}



type
  TXtCommandHighlight = (HighlightNone,HighlightWhenUnset,HighlightAlways
    );


  T_CommandClass = record
      extension : TXtPointer;
    end;
  TCommandClassPart = T_CommandClass;


  T_CommandClassRec = record
      core_class : TCoreClassPart;
      simple_class : TSimpleClassPart;
      label_class : TLabelClassPart;
      command_class : TCommandClassPart;
    end;
  TCommandClassRec = T_CommandClassRec;
  var
    commandClassRec : TCommandClassRec;cvar;external;




//// {$ifndef OLDXAW}

//// {$endif}
type
  TCommandPart = record
      highlight_thickness : TDimension;
      callbacks : TXtCallbackList;
      gray_pixmap : TPixmap;
      normal_GC : TGC;
      inverse_GC : TGC;
      set : TBoolean;
      highlighted : TXtCommandHighlight;
      shape_style : longint;
      corner_round : TDimension;
      pad : array[0..3] of TXtPointer;
    end;


  T_CommandRec = record
      core : TCorePart;
      simple : TSimplePart;
      _label : TLabelPart;
      command : TCommandPart;
    end;
  TCommandRec = T_CommandRec;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/TextP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/TextP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/TextP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

    Type
    PAtom  = ^Atom;
    PPosition  = ^Position;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawTextP_h}
//// {$define _XawTextP_h}
//// {$include <X11/Xfuncproto.h>}
//// {$include <X11/Xaw/Text.h>}
//// {$include <X11/Xaw/SimpleP.h>}
//// (* error 
//// #define MAXCUT	30000	/* Maximum number of characters that can be cut */

in define line 58 *)

    function XawTextGetLastPosition(ctx : longint) : longint;    

    function GETLASTPOS : longint; { return type might be wrong }

    function zeroPosition : TXawTextPosition;      

      var
        _XawTextActionsTable : ^TXtActionsRec;cvar;external;
        _XawTextActionsTableCount : TCardinal;cvar;external;
        _XawDefaultTextTranslations : ^char;cvar;external;

    const
      XawLF = $0a;      
      XawCR = $0d;      
      XawTAB = $09;      
      XawBS = $08;      
      XawSP = $20;      
      XawDEL = $7f;      
      XawESC = $1b;      
      XawBSLASH = '\\';      


    function DEFAULT_TEXT_HEIGHT : TDimension;      

    const
      DEFAULT_TAB_SIZE = 8;      

//// {$ifndef OLDXAW}
//// {$else}
//// {$endif}
    type
      TXawTextLineTableEntry = record
          position : TXawTextPosition;
          y : TPosition;
          textWidth : dword;
          textWidth : TDimension;
        end;
      TXawTextLineTableEntryPtr = ^TXawTextLineTableEntry;

      TXawTextSelection = record
          left : TXawTextPosition;
          right : TXawTextPosition;
          _type : TXawTextSelectType;
          selections : ^TAtom;
          atom_count : longint;
          array_size : longint;
        end;


      T_XawTextSelectionSalt = record
          next : ^T_XawTextSelectionSalt;
          s : TXawTextSelection;
          contents : ^char;
          length : longint;
        end;
      TXawTextSelectionSalt = T_XawTextSelectionSalt;
//// {$ifndef OLDXAW}
    type
      T_XawTextKillRing = record
          next : ^T_XawTextKillRing;
          contents : ^char;
          length : longint;
          refcount : dword;
          format : dword;
        end;
      TXawTextKillRing = T_XawTextKillRing;
      var
        xaw_text_kill_ring : ^TXawTextKillRing;cvar;external;
//// {$endif}



//// {$ifndef OLDXAW}

//// {$endif}

    type
      TXawTextLineTable = record
          top : TXawTextPosition;
          lines : longint;
          base_line : longint;
          info : ^TXawTextLineTableEntry;
        end;
      TXawTextLineTablePtr = ^TXawTextLineTable;

      T_XawTextMargin = record
          left : TPosition;
          right : TPosition;
          top : TPosition;
          bottom : TPosition;
        end;
      TXawTextMargin = T_XawTextMargin;
      T_XmuScanline = TXmuTextUpdate;

    function VMargins(ctx : longint) : longint;    

    function HMargins(ctx : longint) : longint;    

    function RVMargins(ctx : longint) : longint;    

    function RHMargins(ctx : longint) : longint;    

    function IsPositionVisible(ctx,pos : longint) : longint;    












//// {$ifndef OLDXAW}

//// {$endif}
    type
      TSearchAndReplace = record
          selection_changed : TBoolean;
          search_popup : TWidget;
          label1 : TWidget;
          label2 : TWidget;
          left_toggle : TWidget;
          right_toggle : TWidget;
          rep_label : TWidget;
          rep_text : TWidget;
          search_text : TWidget;
          rep_one : TWidget;
          rep_all : TWidget;
          case_sensitive : TWidget;
        end;



      TTextClassPart = record
          extension : TXtPointer;
        end;


      T_TextClassRec = record
          core_class : TCoreClassPart;
          simple_class : TSimpleClassPart;
          text_class : TTextClassPart;
        end;
      TTextClassRec = T_TextClassRec;
      var
        textClassRec : TTextClassRec;cvar;external;









//// {$ifndef OLDXAW}
//// {$else}
//// {$endif}










//// {$ifndef OLDXAW}
//// {$else}
//// {$endif}








//// {$ifndef OLDXAW}
//// {$else}
//// {$endif}



//// {$ifndef OLDXAW}



//// {$endif}
    type
      T_TextPart = record
          source : TWidget;
          sink : TWidget;
          insertPos : TXawTextPosition;
          s : TXawTextSelection;
          sarray : ^TXawTextSelectType;
          salt : ^TXawTextSelectionSalt;
          left_margin : longint;
          dialog_horiz_offset : longint;
          dialog_vert_offset : longint;
          display_caret : TBoolean;
          auto_fill : TBoolean;
          scroll_vert : TXawTextScrollMode;
          scroll_horiz : TXawTextScrollMode;
          wrap : TXawTextWrapMode;
          resize : TXawTextResizeMode;
          r_margin : TXawTextMargin;
          position_callbacks : TXtCallbackList;
          pad1 : TXtPointer;
          margin : TXawTextMargin;
          lt : TXawTextLineTable;
          extendDir : TXawTextScanDirection;
          origSel : TXawTextSelection;
          lasttime : TTime;
          time : TTime;
          ev_x : TPosition;
          ev_y : TPosition;
          vbar : TWidget;
          hbar : TWidget;
          search : ^TSearchAndReplace;
          file_insert : TWidget;
          update : ^TXmuTextUpdate;
          line_number : longint;
          column_number : smallint;
          kill_ring : byte;
          selection_state : TBoolean;
          pad2 : TXtPointer;
          pad3 : longint;
          from_left : longint;
          lastPos : TXawTextPosition;
          gc : TGC;
          showposition : TBoolean;
          hasfocus : TBoolean;
          update_disabled : TBoolean;
          clear_to_eol : TBoolean;
          old_insert : TXawTextPosition;
          mult : smallint;
          kill_ring_ptr : ^TXawTextKillRing;
          pad4 : TXtPointer;
          redisplay_needed : TBoolean;
          salt2 : ^TXawTextSelectionSalt;
          numeric : char;
          source_changed : char;
          overwrite : TBoolean;
          left_column : smallint;
          right_column : smallint;
          justify : TXawTextJustifyMode;
          pad : array[0..3] of TXtPointer;
        end;
      TTextPart = T_TextPart;

    const
      XtRWrapMode = 'WrapMode';      
      XtRScrollMode = 'ScrollMode';      
      XtRResizeMode = 'ResizeMode';      
      XtRJustifyMode = 'JustifyMode';      

    type
      T_TextRec = record
          core : TCorePart;
          simple : TSimplePart;
          text : TTextPart;
        end;
      TTextRec = T_TextRec;


procedure _XawTextBuildLineTable(ctx:TTextWidget; top_pos:TXawTextPosition; force_rebuild:T_XtBoolean);cdecl;external;
function _XawTextGetSTRING(ctx:TTextWidget; left:TXawTextPosition; right:TXawTextPosition):^char;cdecl;external;
procedure _XawTextSaltAwaySelection(ctx:TTextWidget; selections:PTAtom; num_atoms:longint);cdecl;external;
procedure _XawTextPosToXY(w:TWidget; pos:TXawTextPosition; x:PTPosition; y:PTPosition);cdecl;external;
procedure _XawTextNeedsUpdating(ctx:TTextWidget; left:TXawTextPosition; right:TXawTextPosition);cdecl;external;
//// {$endif}

//// (* error 
//// #endif /* _XawTextP_h */

// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/SimpleP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/SimpleP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/SimpleP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _SimpleP_h}
//// {$define _SimpleP_h}
//// {$include <X11/Xfuncproto.h>}
//// {$include <X11/Xaw/Simple.h>}
//// {$include <X11/Xaw/XawInit.h>}
//// (* error 
//// typedef struct {
in declaration at line 60 *)
//// {$ifndef OLDXAW}
      var
        extension : TXtPointer;cvar;public;
//// {$endif}
//// (* error 
//// } SimpleClassPart;
in declaration at line 64 *)
//// (* error 
//// #define XtInheritChangeSensitive	((Bool (*)(Widget))_XtInherit)
in define line 66 *)
    type
      T_SimpleClassRec = record
          core_class : TCoreClassPart;
          simple_class : TSimpleClassPart;
        end;
      TSimpleClassRec = T_SimpleClassRec;
      var
        simpleClassRec : TSimpleClassRec;cvar;external;




//// {$ifndef OLDXAW}

//// {$endif}
    type
      TSimplePart = record
          cursor : TCursor;
          insensitive_border : TPixmap;
          cursor_name : TString;
          pointer_fg : TPixel;
          pointer_bg : TPixel;
          international : TBoolean;
          display_list : ^TXawDisplayList;
          tip : TString;
          pad : array[0..2] of TXtPointer;
        end;

      T_SimpleRec = record
          core : TCorePart;
          simple : TSimplePart;
        end;
      TSimpleRec = T_SimpleRec;
//// {$endif}

//// (* error 
//// #endif /* _SimpleP_h */

// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/MenuButton.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/MenuButton.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/MenuButton.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}





//// {$ifndef _XawMenuButton_h}
//// {$define _XawMenuButton_h}
//// {$include <X11/Xaw/Command.h>}


const
  XtNmenuName = 'menuName';  
  XtCMenuName = 'MenuName';  
  var
    menuButtonWidgetClass : TWidgetClass;cvar;external;
type
  TMenuButtonWidgetClass = ^T_MenuButtonClassRec;

  TMenuButtonWidget = ^T_MenuButtonRec;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/XawImP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/XawImP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/XawImP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PKeySym  = ^KeySym;
Pwchar_t  = ^wchar_t;
PXKeyEvent  = ^XKeyEvent;
PXKeyPressedEvent  = ^XKeyPressedEvent;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef _XawImP_h}
//// {$define _XawImP_h}

const
  XtNinputMethod = 'inputMethod';  
  XtCInputMethod = 'InputMethod';  
  XtNpreeditType = 'preeditType';  
  XtCPreeditType = 'PreeditType';  
  XtNopenIm = 'openIm';  
  XtCOpenIm = 'OpenIm';  
  XtNsharedIc = 'sharedIc';  
  XtCSharedIc = 'SharedIc';  
//// {$include <X11/Xaw/Text.h>}

const
  CIICFocus = 1 shl 0;  
  CIFontSet = 1 shl 1;  
  CIFg = 1 shl 2;  
  CIBg = 1 shl 3;  
  CIBgPixmap = 1 shl 4;  
  CICursorP = 1 shl 5;  
  CILineS = 1 shl 6;  
type
  T_XawImPart = record
      xim : TXIM;
      resources : TXrmResourceList;
      num_resources : TCardinal;
      open_im : TBoolean;
      initialized : TBoolean;
      area_height : TDimension;
      input_method : TString;
      preedit_type : TString;
    end;
  TXawImPart = T_XawImPart;

  T_XawIcTablePart = record
      widget : TWidget;
      xic : TXIC;
      input_style : TXIMStyle;
      flg : dword;
      prev_flg : dword;
      ic_focused : TBoolean;
      font_set : TXFontSet;
      foreground : TPixel;
      background : TPixel;
      bg_pixmap : TPixmap;
      cursor_position : TXawTextPosition;
      line_spacing : dword;
      openic_error : TBoolean;
      next : ^T_XawIcTablePart;
    end;
  TXawIcTablePart = T_XawIcTablePart;
  TXawIcTableList = ^T_XawIcTablePart;

  T_XawIcPart = record
      input_style : TXIMStyle;
      shared_ic : TBoolean;
      shared_ic_table : TXawIcTableList;
      current_ic_table : TXawIcTableList;
      ic_table : TXawIcTableList;
    end;
  TXawIcPart = T_XawIcPart;

  T_contextDataRec = record
      parent : TWidget;
      ve : TWidget;
    end;
  TcontextDataRec = T_contextDataRec;

  T_contextErrDataRec = record
      widget : TWidget;
      xim : TXIM;
    end;
  TcontextErrDataRec = T_contextErrDataRec;

procedure _XawImResizeVendorShell(w:TWidget);cdecl;external;
function _XawImGetShellHeight(w:TWidget):TDimension;cdecl;external;
procedure _XawImRealize(w:TWidget);cdecl;external;
procedure _XawImInitialize(w:TWidget; ext:TWidget);cdecl;external;
procedure _XawImReconnect(w:TWidget);cdecl;external;
procedure _XawImRegister(w:TWidget);cdecl;external;
procedure _XawImUnregister(w:TWidget);cdecl;external;
procedure _XawImSetValues(w:TWidget; args:TArgList; num_args:TCardinal);cdecl;external;
procedure _XawImSetFocusValues(w:TWidget; args:TArgList; num_args:TCardinal);cdecl;external;
procedure _XawImUnsetFocus(w:TWidget);cdecl;external;
function _XawImWcLookupString(w:TWidget; event:PTXKeyPressedEvent; buffer_return:PTwchar_t; bytes_buffer:longint; keysym_return:PTKeySym):longint;cdecl;external;
function _XawLookupString(w:TWidget; event:PTXKeyEvent; buffer_return:Pchar; buffer_size:longint; keysym_return:PTKeySym):longint;cdecl;external;
function _XawImGetImAreaHeight(w:TWidget):longint;cdecl;external;
procedure _XawImCallVendorShellExtResize(w:TWidget);cdecl;external;
procedure _XawImDestroy(w:TWidget; ext:TWidget);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/AsciiSink.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/AsciiSink.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/AsciiSink.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawAsciiSink_h}
//// {$define _XawAsciiSink_h}

//// {$include <X11/Xaw/TextSink.h>}


const
  XtCOutput = 'Output';  
  XtNdisplayNonprinting = 'displayNonprinting';  
  XtNecho = 'echo';  

  var
    asciiSinkObjectClass : TWidgetClass;cvar;external;
type
  TAsciiSinkObjectClass = ^T_AsciiSinkClassRec;

  TAsciiSinkObject = ^T_AsciiSinkRec;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/Form.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/Form.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/Form.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawForm_h}
//// {$define _XawForm_h}
//// {$include <X11/Intrinsic.h>}


//// {$ifndef _XtStringDefs_h_}

const
  XtNtop = 'top';  
  XtRWidget = 'Widget';  
//// {$endif}

const
  XtNdefaultDistance = 'defaultDistance';  
  XtNbottom = 'bottom';  
  XtNleft = 'left';  
  XtNright = 'right';  
  XtNfromHoriz = 'fromHoriz';  
  XtNfromVert = 'fromVert';  
  XtNhorizDistance = 'horizDistance';  
  XtNvertDistance = 'vertDistance';  
  XtNresizable = 'resizable';  
  XtCEdge = 'Edge';  
  XtCWidget = 'Widget';  





type
  TXawEdgeType = (XawChainTop,XawChainBottom,XawChainLeft,
    XawChainRight,XawRubber);

const
  XtEdgeType = XawEdgeType;  
  XtChainTop = XawChainTop;  
  XtChainBottom = XawChainBottom;  
  XtChainLeft = XawChainLeft;  
  XtChainRight = XawChainRight;  
  XtRubber = XawRubber;  
  XtEchainLeft = 'chainLeft';  
  XtEchainRight = 'chainRight';  
  XtEchainTop = 'chainTop';  
  XtEchainBottom = 'chainBottom';  
  XtErubber = 'rubber';  
//// {$ifndef OLDXAW}
//// {$ifndef XawNdisplayList}

const
  XawNdisplayList = 'displayList';  
//// {$endif}
//// {$ifndef XawCDisplayList}

const
  XawCDisplayList = 'DisplayList';  
//// {$endif}
//// {$ifndef XawRDisplayList}

const
  XawRDisplayList = 'XawDisplayList';  
//// {$endif}
//// {$endif}
type
  TFormWidgetClass = ^T_FormClassRec;

  TFormWidget = ^T_FormRec;
  var
    formWidgetClass : TWidgetClass;cvar;external;
//// (* error 
//// void XawFormDoLayout
//// {$if NeedWidePrototypes}
//// {$else}
//// {$endif}
in declaration at line 163 *)
//// {$endif}

//// (* error 
//// #endif /* _XawForm_h */

// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/Repeater.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/Repeater.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/Repeater.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawRepeater_h}
//// {$define _XawRepeater_h}
//// {$include <X11/Xaw/Command.h>}


const
  XtNdecay = 'decay';  
  XtCDecay = 'Decay';  
  XtNinitialDelay = 'initialDelay';  
  XtCDelay = 'Delay';  
  XtNminimumDelay = 'minimumDelay';  
  XtCMinimumDelay = 'MinimumDelay';  
  XtNrepeatDelay = 'repeatDelay';  
  XtNflash = 'flash';  
  XtNstartCallback = 'startCallback';  
  XtCStartCallback = 'StartCallback';  
  XtNstopCallback = 'stopCallback';  
  XtCStopCallback = 'StopCallback';  
  var
    repeaterWidgetClass : TWidgetClass;cvar;external;
type
  TRepeaterWidgetClass = ^T_RepeaterClassRec;

  TRepeaterWidget = ^T_RepeaterRec;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/TextSink.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/TextSink.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/TextSink.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

    Type
    Plongint  = ^longint;
    PXawTextPosition  = ^XawTextPosition;
    PXRectangle  = ^XRectangle;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawTextSink_h}
//// {$define _XawTextSink_h}
//// {$include <X11/Xaw/Text.h>}



  var
    textSinkObjectClass : TWidgetClass;cvar;external;
type
  TTextSinkObjectClass = ^T_TextSinkClassRec;

  TTextSinkObject = ^T_TextSinkRec;

  TXawTextInsertState = (XawisOn,XawisOff);
//// {$ifndef OLDXAW}
//// {$ifndef XtNcursorColor}

const
  XtNcursorColor = 'cursorColor';  
//// {$endif}

const
  XawNtextProperties = 'textProperties';  
  XawCTextProperties = 'TextProperties';  
  XawRTextProperties = 'XawTextProperties';  
//// {$endif}


//// (* error 
//// void XawTextSinkDisplayText
//// {$if NeedWidePrototypes}
//// {$else}
//// {$endif}
//// {$if NeedWidePrototypes}
//// {$else}
//// {$endif}
in declaration at line 129 *)

//// {$if NeedWidePrototypes}
//// {$else}
//// (* error 
////  Position		x,
//// (* error 
////  Position		y,
//// (* error 
////  XawTextInsertState	state
//// {$endif}
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

//// {$if NeedWidePrototypes}
//// {$else}
//// (* error 
////  Position		x,
//// (* error 
////  Position		y,
//// (* error 
////  Dimension		width,
//// (* error 
////  Dimension		height
//// {$endif}
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

//// {$if NeedWidePrototypes}
//// {$else}
//// {$endif}

procedure XawTextSinkFindPosition(w:TWidget; fromPos:TXawTextPosition; fromX:longint; width:longint; stopAtWordBreak:longint; 
                stopAtWordBreak:TBoolean; pos_return:PTXawTextPosition; width_return:Plongint; height_return:Plongint);cdecl;external;

procedure XawTextSinkFindDistance(w:TWidget; fromPos:TXawTextPosition; fromX:longint; toPos:TXawTextPosition; width_return:Plongint; 
                pos_return:PTXawTextPosition; height_return:Plongint);cdecl;external;

procedure XawTextSinkResolve(w:TWidget; fromPos:TXawTextPosition; fromX:longint; width:longint; pos_return:PTXawTextPosition);cdecl;external;

//// {$if NeedWidePrototypes}
//// {$else}
//// (* error 
////  Dimension		height
//// {$endif}
 in declarator_list *)


function XawTextSinkMaxHeight(w:TWidget; lines:longint):longint;cdecl;external;

procedure XawTextSinkSetTabs(w:TWidget; tab_count:longint; tabs:Plongint);cdecl;external;

procedure XawTextSinkGetCursorBounds(w:TWidget; rect_return:PTXRectangle);cdecl;external;
//// {$endif}

//// (* error 
//// #endif /* _XawTextSink_h */

// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/SmeP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/SmeP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/SmeP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef _XawSmeP_h}
//// {$define _XawSmeP_h}

//// {$include <X11/Xfuncproto.h>}
//// {$include <X11/Xaw/Sme.h>}

//// (* error 
//// typedef struct _SmeClassPart {
in declaration at line 51 *)
      var
        unhighlight : TXtWidgetProc;cvar;public;
        notify : TXtWidgetProc;cvar;public;
        extension : TXtPointer;cvar;public;
//// (* error 
//// } SmeClassPart;
in declaration at line 55 *)

    type
      T_SmeClassRec = record
          rect_class : TRectObjClassPart;
          sme_class : TSmeClassPart;
        end;
      TSmeClassRec = T_SmeClassRec;
      var
        smeClassRec : TSmeClassRec;cvar;external;


//// {$ifndef OLDXAW}

//// {$endif}
    type
      TSmePart = record
          callbacks : TXtCallbackList;
          international : TBoolean;
          pad : array[0..3] of TXtPointer;
        end;


      T_SmeRec = record
          object : TObjectPart;
          rectangle : TRectObjPart;
          sme : TSmePart;
        end;
      TSmeRec = T_SmeRec;

    function XtInheritHighlight : TXtWidgetProc;      

    const
      XtInheritUnhighlight = XtInheritHighlight;      
      XtInheritNotify = XtInheritHighlight;      
//// {$endif}

//// (* error 
//// #endif /* _XawSmeP_h */

// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/Grip.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/Grip.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/Grip.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef _XawGrip_h}
//// {$define _XawGrip_h}
//// {$include <X11/Xaw/Simple.h>}


const
  XtNgripTranslations = 'gripTranslations';  



type
  T_XawGripCallData = record
      event : ^TXEvent;
      params : ^TString;
      num_params : TCardinal;
    end;
  TXawGripCallDataRec = T_XawGripCallData;
  TXawGripCallData = ^T_XawGripCallData;
  TGripCallDataRec = T_XawGripCallData;
  TGripCallData = ^T_XawGripCallData;


  var
    gripWidgetClass : TWidgetClass;cvar;external;
type
  TGripWidgetClass = ^T_GripClassRec;

  TGripWidget = ^T_GripRec;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/Label.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/Label.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/Label.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawLabel_h}
//// {$define _XawLabel_h}

//// {$include <X11/Xaw/Simple.h>}


const
  XawTextEncoding8bit = 0;  
  XawTextEncodingChar2b = 1;  
  XtNleftBitmap = 'leftBitmap';  
  XtCLeftBitmap = 'LeftBitmap';  
  XtNencoding = 'encoding';  
  XtCEncoding = 'Encoding';  
//// {$ifndef XtNfontSet}

const
  XtNfontSet = 'fontSet';  
//// {$endif}
//// {$ifndef XtCFontSet}

const
  XtCFontSet = 'FontSet';  
//// {$endif}
//// {$ifndef _XtStringDefs_h_}

const
  XtNbitmap = 'bitmap';  
  XtNforeground = 'foreground';  
  XtNlabel = 'label';  
  XtNfont = 'font';  
  XtNinternalWidth = 'internalWidth';  
  XtNinternalHeight = 'internalHeight';  
  XtNresize = 'resize';  
  XtCResize = 'Resize';  
  XtCBitmap = 'Bitmap';  
//// {$endif}
//// {$ifndef XtNlabelX}

const
  XtNlabelX = 'labelX';  
//// {$endif}
//// {$ifndef XtNlabelY}

const
  XtNlabelY = 'labelY';  
//// {$endif}

  var
    labelWidgetClass : TWidgetClass;cvar;external;
type
  TLabelWidgetClass = ^T_LabelClassRec;

  TLabelWidget = ^T_LabelRec;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/PanedP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/PanedP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/PanedP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef _XawPanedP_h}
//// {$define _XawPanedP_h}
//// {$include <X11/Xaw/Paned.h>}

type
  T_PanedClassPart = record
      extension : TXtPointer;
    end;
  TPanedClassPart = T_PanedClassPart;


  T_PanedClassRec = record
      core_class : TCoreClassPart;
      composite_class : TCompositeClassPart;
      constraint_class : TConstraintClassPart;
      paned_class : TPanedClassPart;
    end;
  TPanedClassRec = T_PanedClassRec;
  var
    panedClassRec : TPanedClassRec;cvar;external;

















type
  T_PanedConstraintsPart = record
      min : TDimension;
      max : TDimension;
      allow_resize : TBoolean;
      show_grip : TBoolean;
      skip_adjust : TBoolean;
      position : longint;
      preferred_size : TDimension;
      resize_to_pref : TBoolean;
      delta : TPosition;
      olddelta : TPosition;
      paned_adjusted_me : TBoolean;
      wp_size : TDimension;
      size : longint;
      grip : TWidget;
    end;
  TPanedConstraintsPart = T_PanedConstraintsPart;
  TPane = ^T_PanedConstraintsPart;

  T_PanedConstraintsRec = record
      paned : TPanedConstraintsPart;
    end;
  TPanedConstraintsRec = T_PanedConstraintsRec;
  TPanedConstraints = ^T_PanedConstraintsRec;





  T_PaneStack = record
      next : ^T_PaneStack;
      pane : TPane;
      start_size : longint;
    end;
  TPaneStack = T_PaneStack;
































//// {$ifndef OLDXAW}

//// {$endif}
type
  TPanedPart = record
      grip_indent : TPosition;
      refiguremode : TBoolean;
      grip_translations : TXtTranslations;
      internal_bp : TPixel;
      internal_bw : TDimension;
      orientation : TXtOrientation;
      cursor : TCursor;
      grip_cursor : TCursor;
      v_grip_cursor : TCursor;
      h_grip_cursor : TCursor;
      adjust_this_cursor : TCursor;
      v_adjust_this_cursor : TCursor;
      h_adjust_this_cursor : TCursor;
      adjust_upper_cursor : TCursor;
      adjust_lower_cursor : TCursor;
      adjust_left_cursor : TCursor;
      adjust_right_cursor : TCursor;
      recursively_called : TBoolean;
      resize_children_to_pref : TBoolean;
      start_loc : longint;
      whichadd : TWidget;
      whichsub : TWidget;
      normgc : TGC;
      invgc : TGC;
      flipgc : TGC;
      num_panes : longint;
      stack : ^TPaneStack;
      pad : array[0..3] of TXtPointer;
    end;


  T_PanedRec = record
      core : TCorePart;
      composite : TCompositePart;
      constraint : TConstraintPart;
      paned : TPanedPart;
    end;
  TPanedRec = T_PanedRec;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/GripP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/GripP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/GripP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawGripP_h}
//// {$define _XawGripP_h}
//// {$include <X11/Xaw/Grip.h>}
//// {$include <X11/Xaw/SimpleP.h>}

const
  DEFAULT_GRIP_SIZE = 8;  

type
  TGripClassPart = record
      extension : TXtPointer;
    end;


  T_GripClassRec = record
      core_class : TCoreClassPart;
      simple_class : TSimpleClassPart;
      grip_class : TGripClassPart;
    end;
  TGripClassRec = T_GripClassRec;
  var
    gripClassRec : TGripClassRec;cvar;external;

//// {$ifndef OLDXAW}

//// {$endif}
type
  TGripPart = record
      grip_action : TXtCallbackList;
      pad : array[0..3] of TXtPointer;
    end;


  T_GripRec = record
      core : TCorePart;
      simple : TSimplePart;
      grip : TGripPart;
    end;
  TGripRec = T_GripRec;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/Dialog.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/Dialog.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/Dialog.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawDialog_h}
//// {$define _XawDialog_h}
//// {$include <X11/Xaw/Form.h>}


const
  XtCIcon = 'Icon';  
  XtNicon = 'icon';  
type
  TDialogWidgetClass = ^T_DialogClassRec;

  TDialogWidget = ^T_DialogRec;
  var
    dialogWidgetClass : TWidgetClass;cvar;external;
//// (* error 
//// void XawDialogAddButton
in declaration at line 89 *)

function XawDialogGetValueString(w:TWidget):^char;cdecl;external;
//// {$endif}

//// (* error 
//// #endif /* _XawDialog_h */

// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/StripCharP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/StripCharP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/StripCharP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawStripChartP_h}
//// {$define _XawStripChartP_h}
//// {$include <X11/Xaw/StripChart.h>}
//// {$include <X11/Xaw/SimpleP.h>}

const
  NO_GCS = 0;  
  FOREGROUND = 1 shl 0;  
  HIGHLIGHT = 1 shl 1;  
  ALL_GCS = FOREGROUND or HIGHLIGHT;  
















//// {$ifndef OLDXAW}

//// {$endif}
type
  TStripChartPart = record
      fgpixel : TPixel;
      hipixel : TPixel;
      fgGC : TGC;
      hiGC : TGC;
      update : longint;
      scale : longint;
      min_scale : longint;
      interval : longint;
      points : ^TXPoint;
      max_value : Tdouble;
      valuedata : array[0..2047] of Tdouble;
      interval_id : TXtIntervalId;
      get_value : TXtCallbackList;
      jump_val : longint;
      pad : array[0..3] of TXtPointer;
    end;


  T_StripChartRec = record
      core : TCorePart;
      simple : TSimplePart;
      strip_chart : TStripChartPart;
    end;
  TStripChartRec = T_StripChartRec;


  TStripChartClassPart = record
      extension : TXtPointer;
    end;


  T_StripChartClassRec = record
      core_class : TCoreClassPart;
      simple_class : TSimpleClassPart;
      strip_chart_class : TStripChartClassPart;
    end;
  TStripChartClassRec = T_StripChartClassRec;
  var
    stripChartClassRec : TStripChartClassRec;cvar;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/Box.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/Box.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/Box.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawBox_h}
//// {$define _XawBox_h}
//// {$include <X11/Xmu/Converters.h>}


//// {$ifndef _XtStringDefs_h_}

const
  XtNhSpace = 'hSpace';  
  XtNvSpace = 'vSpace';  
//// {$endif}
//// {$ifndef OLDXAW}
//// {$ifndef XawNdisplayList}

const
  XawNdisplayList = 'displayList';  
//// {$endif}
//// {$ifndef XawCDisplayList}

const
  XawCDisplayList = 'DisplayList';  
//// {$endif}
//// {$ifndef XawRDisplayList}

const
  XawRDisplayList = 'XawDisplayList';  
//// {$endif}
//// {$endif}


  var
    boxWidgetClass : TWidgetClass;cvar;external;
type
  TBoxWidgetClass = ^T_BoxClassRec;

  TBoxWidget = ^T_BoxRec;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/ScrollbarP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/ScrollbarP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/ScrollbarP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _ScrollbarP_h}
//// {$define _ScrollbarP_h}
//// {$include <X11/Xaw/Scrollbar.h>}
//// {$include <X11/Xaw/SimpleP.h>}






















//// {$ifndef OLDXAW}

//// {$endif}
type
  TScrollbarPart = record
      foreground : TPixel;
      orientation : TXtOrientation;
      scrollProc : TXtCallbackList;
      thumbProc : TXtCallbackList;
      jumpProc : TXtCallbackList;
      thumb : TPixmap;
      upCursor : TCursor;
      downCursor : TCursor;
      leftCursor : TCursor;
      rightCursor : TCursor;
      verCursor : TCursor;
      horCursor : TCursor;
      top : single;
      shown : single;
      length : TDimension;
      thickness : TDimension;
      min_thumb : TDimension;
      inactiveCursor : TCursor;
      direction : char;
      gc : TGC;
      topLoc : TPosition;
      shownLength : TDimension;
      pad : array[0..3] of TXtPointer;
    end;

  T_ScrollbarRec = record
      core : TCorePart;
      simple : TSimplePart;
      scrollbar : TScrollbarPart;
    end;
  TScrollbarRec = T_ScrollbarRec;

  TScrollbarClassPart = record
      extension : TXtPointer;
    end;

  T_ScrollbarClassRec = record
      core_class : TCoreClassPart;
      simple_class : TSimpleClassPart;
      scrollbar_class : TScrollbarClassPart;
    end;
  TScrollbarClassRec = T_ScrollbarClassRec;
  var
    scrollbarClassRec : TScrollbarClassRec;cvar;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/SimpleMenu.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/SimpleMenu.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/SimpleMenu.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef _SimpleMenu_h}
//// {$define _SimpleMenu_h}
//// {$include <X11/Shell.h>}
//// {$include <X11/Xmu/Converters.h>}


type
  TSimpleMenuWidgetClass = ^T_SimpleMenuClassRec;

  TSimpleMenuWidget = ^T_SimpleMenuRec;
  var
    simpleMenuWidgetClass : TWidgetClass;cvar;external;

const
  XtNcursor = 'cursor';  
  XtNbottomMargin = 'bottomMargin';  
  XtNcolumnWidth = 'columnWidth';  
  XtNlabelClass = 'labelClass';  
  XtNmenuOnScreen = 'menuOnScreen';  
  XtNpopupOnEntry = 'popupOnEntry';  
  XtNrowHeight = 'rowHeight';  
  XtNtopMargin = 'topMargin';  
  XtNleftMargin = 'leftMargin';  
  XtNrightMargin = 'rightMargin';  
  XtCColumnWidth = 'ColumnWidth';  
  XtCLabelClass = 'LabelClass';  
  XtCMenuOnScreen = 'MenuOnScreen';  
  XtCPopupOnEntry = 'PopupOnEntry';  
  XtCRowHeight = 'RowHeight';  
  XtCVerticalMargins = 'VerticalMargins';  
//// {$ifndef OLDXAW}

const
  XtCHorizontalMargins = 'HorizontalMargins';  
  XawNdisplayList = 'displayList';  
  XawCDisplayList = 'DisplayList';  
  XawRDisplayList = 'XawDisplayList';  
//// {$endif}


//// (* error 
//// void XawSimpleMenuAddGlobalActions
in declaration at line 134 *)


function XawSimpleMenuGetActiveEntry(w:TWidget):TWidget;cdecl;external;

procedure XawSimpleMenuClearActiveEntry(w:TWidget);cdecl;external;
//// {$endif}

//// (* error 
//// #endif /* _SimpleMenu_h */

// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/ListP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/ListP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/ListP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef _XawListP_h}
//// {$define _XawListP_h}

//// {$include <X11/Xaw/SimpleP.h>}
//// {$include <X11/Xaw/List.h>}

const
  NO_HIGHLIGHT = XAW_LIST_NONE;  
  OUT_OF_RANGE = -(1);  
  OKAY = 0;  

type
  TListClassPart = record
      extension : TXtPointer;
    end;


  T_ListClassRec = record
      core_class : TCoreClassPart;
      simple_class : TSimpleClassPart;
      list_class : TListClassPart;
    end;
  TListClassRec = T_ListClassRec;
  var
    listClassRec : TListClassRec;cvar;external;
















//// {$ifndef OLDXAW}

//// {$endif}
type
  TListPart = record
      foreground : TPixel;
      internal_width : TDimension;
      internal_height : TDimension;
      column_space : TDimension;
      row_space : TDimension;
      default_cols : longint;
      force_cols : TBoolean;
      paste : TBoolean;
      vertical_cols : TBoolean;
      longest : longint;
      nitems : longint;
      font : ^TXFontStruct;
      fontset : TXFontSet;
      list : ^TString;
      callback : TXtCallbackList;
      is_highlighted : longint;
      highlight : longint;
      col_width : longint;
      row_height : longint;
      nrows : longint;
      ncols : longint;
      normgc : TGC;
      revgc : TGC;
      graygc : TGC;
      freedoms : longint;
      selected : longint;
      show_current : TBoolean;
      pad1 : array[0..(((sizeof(XtPointer))-(sizeof(Boolean)))+((sizeof(XtPointer))-(sizeof(longint))))-1] of char;
      pad2 : array[0..1] of TXtPointer;
    end;


  T_ListRec = record
      core : TCorePart;
      simple : TSimplePart;
      list : TListPart;
    end;
  TListRec = T_ListRec;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/SmeLineP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/SmeLineP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/SmeLineP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawSmeLineP_h}
//// {$define _XawSmeLineP_h}

//// {$include <X11/Xaw/SmeP.h>}
//// {$include <X11/Xaw/SmeLine.h>}

type
  T_SmeLineClassPart = record
      extension : TXtPointer;
    end;
  TSmeLineClassPart = T_SmeLineClassPart;


  T_SmeLineClassRec = record
      rect_class : TRectObjClassPart;
      sme_class : TSmeClassPart;
      sme_line_class : TSmeLineClassPart;
    end;
  TSmeLineClassRec = T_SmeLineClassRec;
  var
    smeLineClassRec : TSmeLineClassRec;cvar;external;







//// {$ifndef OLDXAW}

//// {$endif}
type
  TSmeLinePart = record
      foreground : TPixel;
      stipple : TPixmap;
      line_width : TDimension;
      gc : TGC;
      pad : array[0..3] of TXtPointer;
    end;


  T_SmeLineRec = record
      object : TObjectPart;
      rectangle : TRectObjPart;
      sme : TSmePart;
      sme_line : TSmeLinePart;
    end;
  TSmeLineRec = T_SmeLineRec;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/Template.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/Template.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/Template.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _Template_h}
//// {$define _Template_h}
//// {$include <X11/Intrinsic.h>}




const
  XtNtemplateResource = 'templateResource';  
  XtCTemplateResource = 'TemplateResource';  

type
  TTemplateWidgetClass = ^T_TemplateClassRec;

  TTemplateWidget = ^T_TemplateRec;

  var
    templateWidgetClass : TWidgetClass;cvar;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/AsciiSrc.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/AsciiSrc.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/AsciiSrc.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef _XawAsciiSrc_h}
//// {$define _XawAsciiSrc_h}
//// {$include <X11/Xaw/TextSrc.h>}

  var
    asciiSrcObjectClass : TWidgetClass;cvar;external;
type
  TAsciiSrcObjectClass = ^T_AsciiSrcClassRec;

  TAsciiSrcObject = ^T_AsciiSrcRec;

const
  AsciiSourceObjectClass = AsciiSrcObjectClass;  
  AsciiSourceObject = AsciiSrcObject;  

  XtCDataCompression = 'DataCompression';  
  XtCPieceSize = 'PieceSize';  
  XtCType = 'Type';  
  XtCUseStringInPlace = 'UseStringInPlace';  
  XtNdataCompression = 'dataCompression';  
  XtNpieceSize = 'pieceSize';  
  XtNtype = 'type';  
  XtNuseStringInPlace = 'useStringInPlace';  
  XtRAsciiType = 'AsciiType';  
  XtEstring = 'string';  
  XtEfile = 'file';  
type
  TXawAsciiType = (XawAsciiFile,XawAsciiString);


//// (* error 
//// void XawAsciiSourceFreeString
in declaration at line 112 *)


function XawAsciiSave(w:TWidget):TBool;cdecl;external;

//// (* error 
////  _Xconst char	*name
 in declarator_list *)

function XawAsciiSourceChanged(w:TWidget):TBool;cdecl;external;
//// {$endif}

//// (* error 
//// #endif /* _XawAsciiSrc_h */

// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/Scrollbar.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/Scrollbar.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/Scrollbar.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _Scrollbar_h}
//// {$define _Scrollbar_h}

//// {$include <X11/Xmu/Converters.h>}
//// {$include <X11/Xfuncproto.h>}


const
  XtCMinimumThumb = 'MinimumThumb';  
  XtCShown = 'Shown';  
  XtCTopOfThumb = 'TopOfThumb';  
  XtNminimumThumb = 'minimumThumb';  
  XtNtopOfThumb = 'topOfThumb';  
type
  TScrollbarWidget = ^T_ScrollbarRec;

  TScrollbarWidgetClass = ^T_ScrollbarClassRec;
  var
    scrollbarWidgetClass : TWidgetClass;cvar;external;
//// (* error 
//// void XawScrollbarSetThumb
//// {$if NeedWidePrototypes}
//// {$else}
//// {$endif}
in declaration at line 129 *)
//// {$endif}

//// (* error 
//// #endif /* _Scrollbar_h */

// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/Tree.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/Tree.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/Tree.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawTree_h}
//// {$define _XawTree_h}
//// {$include <X11/Xmu/Converters.h>}


//// {$ifndef _XtStringDefs_h_}

const
  XtNhSpace = 'hSpace';  
  XtNvSpace = 'vSpace';  
  XtCHSpace = 'HSpace';  
  XtCVSpace = 'VSpace';  
//// {$endif}

const
  XtNautoReconfigure = 'autoReconfigure';  
  XtNlineWidth = 'lineWidth';  
  XtNtreeGC = 'treeGC';  
  XtNtreeParent = 'treeParent';  
  XtNgravity = 'gravity';  

  XtCAutoReconfigure = 'AutoReconfigure';  
  XtCLineWidth = 'LineWidth';  
  XtCTreeGC = 'TreeGC';  
  XtCTreeParent = 'TreeParent';  
  XtCGravity = 'Gravity';  
  XtRGC = 'GC';  
//// {$ifndef OLDXAW}
//// {$ifndef XawNdisplayList}

const
  XawNdisplayList = 'displayList';  
//// {$endif}
//// {$ifndef XawCDisplayList}

const
  XawCDisplayList = 'DisplayList';  
//// {$endif}
//// {$ifndef XawRDisplayList}

const
  XawRDisplayList = 'XawDisplayList';  
//// {$endif}
//// {$endif}

  var
    treeWidgetClass : TWidgetClass;cvar;external;
type
  TTreeWidgetClass = ^T_TreeClassRec;

  TTreeWidget = ^T_TreeRec;
//// (* error 
//// void XawTreeForceLayout
in declaration at line 131 *)
//// {$endif}

//// (* error 
//// #endif /* _XawTree_h */

// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/Porthole.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/Porthole.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/Porthole.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawPorthole_h}
//// {$define _XawPorthole_h}
//// {$include <X11/Intrinsic.h>}
//// {$include <X11/Xaw/Reports.h>}

  var
    portholeWidgetClass : TWidgetClass;cvar;external;
type
  TPortholeWidgetClass = ^T_PortholeClassRec;

  TPortholeWidget = ^T_PortholeRec;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/Reports.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/Reports.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/Reports.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _Xaw_Reports_h}
//// {$define _Xaw_Reports_h}
//// {$include <X11/Intrinsic.h>}





type
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
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/MultiSinkP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/MultiSinkP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/MultiSinkP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef _XawMultiSinkP_h}
//// {$define _XawMultiSinkP_h}
//// {$include <X11/Xfuncproto.h>}

//// {$include <X11/Xaw/TextSinkP.h>}
//// {$include <X11/Xaw/MultiSink.h>}

type
  T_MultiSinkClassPart = record
      extension : TXtPointer;
    end;
  TMultiSinkClassPart = T_MultiSinkClassPart;


  T_MultiSinkClassRec = record
      object_class : TObjectClassPart;
      text_sink_class : TTextSinkClassPart;
      multi_sink_class : TMultiSinkClassPart;
    end;
  TMultiSinkClassRec = T_MultiSinkClassRec;
  var
    multiSinkClassRec : TMultiSinkClassRec;cvar;external;





//// {$ifndef OLDXAW}

//// {$endif}
type
  TMultiSinkPart = record
      echo : TBoolean;
      display_nonprinting : TBoolean;
      normgc : TGC;
      invgc : TGC;
      xorgc : TGC;
      cursor_position : TXawTextPosition;
      laststate : TXawTextInsertState;
      cursor_x : smallint;
      cursor_y : smallint;
      fontset : TXFontSet;
      pad : array[0..3] of TXtPointer;
    end;


  T_MultiSinkRec = record
      object : TObjectPart;
      text_sink : TTextSinkPart;
      multi_sink : TMultiSinkPart;
    end;
  TMultiSinkRec = T_MultiSinkRec;

//// (* error 
//// void _XawMultiSinkPosToXY
in declaration at line 134 *)
//// {$endif}

//// (* error 
//// #endif /* _XawMultiSinkP_h */

// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/VendorEP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/VendorEP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/VendorEP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef _VendorEP_h}
//// {$define _VendorEP_h}
//// {$include <X11/Xaw/XawImP.h>}
type
  TXawVendorShellExtClassPart = record
      extension : TXtPointer;
    end;

  T_VendorShellExtClassRec = record
      object_class : TObjectClassPart;
      vendor_shell_ext_class : TXawVendorShellExtClassPart;
    end;
  TXawVendorShellExtClassRec = T_VendorShellExtClassRec;
//// {$ifndef OLDXAW}

//// {$endif}
type
  TXawVendorShellExtPart = record
      parent : TWidget;
      im : TXawImPart;
      ic : TXawIcPart;
      pad : array[0..3] of TXtPointer;
    end;

  TXawVendorShellExtRec = record
      object : TObjectPart;
      vendor_ext : TXawVendorShellExtPart;
    end;
  TXawVendorShellExtWidget = ^TXawVendorShellExtRec;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/LabelP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/LabelP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/LabelP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawLabelP_h}
//// {$define _XawLabelP_h}

//// {$include <X11/Xaw/Label.h>}
//// {$include <X11/Xaw/SimpleP.h>}

type
  TLabelClassPart = record
      extension : TXtPointer;
    end;


  T_LabelClassRec = record
      core_class : TCoreClassPart;
      simple_class : TSimpleClassPart;
      label_class : TLabelClassPart;
    end;
  TLabelClassRec = T_LabelClassRec;
  var
    labelClassRec : TLabelClassRec;cvar;external;





//// {$ifndef OLDXAW}

//// {$endif}
type
  TLabelPart = record
      foreground : TPixel;
      font : ^TXFontStruct;
      fontset : TXFontSet;
      _label : ^char;
      justify : TXtJustify;
      internal_width : TDimension;
      internal_height : TDimension;
      pixmap : TPixmap;
      resize : TBoolean;
      encoding : byte;
      left_bitmap : TPixmap;
      normal_GC : TGC;
      gray_GC : TGC;
      stipple : TPixmap;
      label_x : TPosition;
      label_y : TPosition;
      label_width : TDimension;
      label_height : TDimension;
      label_len : TDimension;
      lbm_y : longint;
      lbm_width : dword;
      lbm_height : dword;
      pad : array[0..3] of TXtPointer;
    end;


  T_LabelRec = record
      core : TCorePart;
      simple : TSimplePart;
      _label : TLabelPart;
    end;
  TLabelRec = T_LabelRec;

function LEFT_OFFSET(lw : longint) : longint;

//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/ToggleP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/ToggleP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/ToggleP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef _XawToggleP_h}
//// {$define _XawToggleP_h}
//// {$include <X11/Xaw/Toggle.h>}
//// {$include <X11/Xaw/CommandP.h>}


function streq(a,b : longint) : longint;



type
  T_RadioGroup = record
      prev : ^T_RadioGroup;
      next : ^T_RadioGroup;
      widget : TWidget;
    end;
  TRadioGroup = T_RadioGroup;


  T_ToggleClass = record
      Set : TXtActionProc;
      Unset : TXtActionProc;
      extension : TXtPointer;
    end;
  TToggleClassPart = T_ToggleClass;


  T_ToggleClassRec = record
      core_class : TCoreClassPart;
      simple_class : TSimpleClassPart;
      label_class : TLabelClassPart;
      command_class : TCommandClassPart;
      toggle_class : TToggleClassPart;
    end;
  TToggleClassRec = T_ToggleClassRec;
  var
    toggleClassRec : TToggleClassRec;cvar;external;



//// {$ifndef OLDXAW}

//// {$endif}
type
  TTogglePart = record
      widget : TWidget;
      radio_data : TXtPointer;
      radio_group : ^TRadioGroup;
      pad : array[0..3] of TXtPointer;
    end;


  T_ToggleRec = record
      core : TCorePart;
      simple : TSimplePart;
      _label : TLabelPart;
      command : TCommandPart;
      toggle : TTogglePart;
    end;
  TToggleRec = T_ToggleRec;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/MultiSrcP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/MultiSrcP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/MultiSrcP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}






//// {$ifndef _XawMultiSrcP_h}
//// {$define _XawMultiSrcP_h}
//// {$include <X11/Xfuncproto.h>}
//// {$include <X11/Xaw/TextSrcP.h>}
//// {$include <X11/Xaw/MultiSrc.h>}
//// {$ifdef L_tmpnam}

const
  TMPSIZ = L_tmpnam;  
//// {$else}
//// {$ifdef PATH_MAX}

const
  TMPSIZ = PATH_MAX;  
//// {$else}


const
  TMPSIZ = 1024;  
//// {$endif}
//// {$endif}




type
  T_MultiPiece = record
      text : ^Twchar_t;
      used : TXawTextPosition;
      prev : ^T_MultiPiece;
      next : ^T_MultiPiece;
    end;
  TMultiPiece = T_MultiPiece;


  T_MultiSrcClassPart = record
      extension : TXtPointer;
    end;
  TMultiSrcClassPart = T_MultiSrcClassPart;


  T_MultiSrcClassRec = record
      object_class : TObjectClassPart;
      text_src_class : TTextSrcClassPart;
      multi_src_class : TMultiSrcClassPart;
    end;
  TMultiSrcClassRec = T_MultiSrcClassRec;
  var
    multiSrcClassRec : TMultiSrcClassRec;cvar;external;







//// {$ifdef OLDXAW}
//// {$endif}




//// {$ifdef OLDXAW}
//// {$endif}



//// {$ifndef OLDXAW}

//// {$endif}
type
  T_MultiSrcPart = record
      ic : TXIC;
      _string : TXtPointer;
      _type : TXawAsciiType;
      piece_size : TXawTextPosition;
      data_compression : TBoolean;
      callback : TXtCallbackList;
      use_string_in_place : TBoolean;
      multi_length : longint;
      is_tempfile : TBoolean;
      changes : TBoolean;
      allocated_string : TBoolean;
      length : TXawTextPosition;
      first_piece : ^TMultiPiece;
      pad : array[0..3] of TXtPointer;
    end;
  TMultiSrcPart = T_MultiSrcPart;


  T_MultiSrcRec = record
      object : TObjectPart;
      text_src : TTextSrcPart;
      multi_src : TMultiSrcPart;
    end;
  TMultiSrcRec = T_MultiSrcRec;
//// (* error 
//// void _XawMultiSourceFreeString
in declaration at line 175 *)
//// {$endif}

//// (* error 
//// #endif /* _XawMultiSrcP_h */

// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/PannerP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/PannerP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/PannerP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawPannerP_h}
//// {$define _XawPannerP_h}
//// {$include <X11/Xaw/Panner.h>}
//// {$include <X11/Xaw/SimpleP.h>}

type
  TPannerClassPart = record
      extension : TXtPointer;
    end;


  T_PannerClassRec = record
      core_class : TCoreClassPart;
      simple_class : TSimpleClassPart;
      panner_class : TPannerClassPart;
    end;
  TPannerClassRec = T_PannerClassRec;


































//// {$ifndef OLDXAW}

//// {$endif}
type
  TPannerPart = record
      report_callbacks : TXtCallbackList;
      allow_off : TBoolean;
      resize_to_pref : TBoolean;
      foreground : TPixel;
      shadow_color : TPixel;
      shadow_thickness : TDimension;
      default_scale : TDimension;
      line_width : TDimension;
      canvas_width : TDimension;
      canvas_height : TDimension;
      slider_x : TPosition;
      slider_y : TPosition;
      slider_width : TDimension;
      slider_height : TDimension;
      internal_border : TDimension;
      stipple_name : TString;
      slider_gc : TGC;
      shadow_gc : TGC;
      xor_gc : TGC;
      haspect : Tdouble;
      vaspect : Tdouble;
      rubber_band : TBoolean;
      tmp : record
          doing : TBoolean;
          showing : TBoolean;
          startx : TPosition;
          starty : TPosition;
          dx : TPosition;
          dy : TPosition;
          x : TPosition;
          y : TPosition;
        end;
      knob_x : TPosition;
      knob_y : TPosition;
      knob_width : TDimension;
      knob_height : TDimension;
      shadow_valid : TBoolean;
      shadow_rects : array[0..1] of TXRectangle;
      last_x : TPosition;
      last_y : TPosition;
      pad : array[0..3] of TXtPointer;
    end;

  T_PannerRec = record
      core : TCorePart;
      simple : TSimplePart;
      panner : TPannerPart;
    end;
  TPannerRec = T_PannerRec;

function PANNER_HSCALE(pw,val : longint) : longint;

function PANNER_VSCALE(pw,val : longint) : longint;

function PANNER_DSCALE(pw,val : longint) : TDimension;


const
  PANNER_DEFAULT_SCALE = 8;  
  PANNER_OUTOFRANGE = -(30000);  
  var
    pannerClassRec : TPannerClassRec;cvar;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/Text.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/Text.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/Text.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PXawTextBlock  = ^XawTextBlock;
PXawTextPosition  = ^XawTextPosition;
PXawTextSelectType  = ^XawTextSelectType;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawText_h}
//// {$define _XawText_h}
//// {$include <X11/Xaw/Simple.h>}

type
  TXawTextPosition = longint;
//// {$ifndef notdef}
type
  TXawTextScrollMode = (XawtextScrollNever,XawtextScrollWhenNeeded,
    XawtextScrollAlways);

  TXawTextResizeMode = (XawtextResizeNever,XawtextResizeWidth,XawtextResizeHeight,
    XawtextResizeBoth);
//// {$endif}
type
  TXawTextWrapMode = (XawtextWrapNever,XawtextWrapLine,XawtextWrapWord
    );

  TXawTextScanDirection = (XawsdLeft,XawsdRight);

  TXawTextEditType = (XawtextRead,XawtextAppend,XawtextEdit);

  TXawTextSelectType = (XawselectNull,XawselectPosition,XawselectChar,
    XawselectWord,XawselectLine,XawselectParagraph,
    XawselectAll,XawselectAlphaNumeric);

  TXawTextJustifyMode = (XawjustifyLeft,XawjustifyRight,XawjustifyCenter,
    XawjustifyFull);

  TXawTextBlock = record
      firstPos : longint;
      length : longint;
      ptr : ^char;
      format : dword;
    end;
  TXawTextBlockPtr = ^TXawTextBlock;
//// {$ifndef OLDXAW}
type
  TXawTextPositionInfo = record
      line_number : longint;
      column_number : longint;
      insert_position : TXawTextPosition;
      last_position : TXawTextPosition;
      overwrite_mode : TBoolean;
    end;

  TXawTextPropertyInfo = record
      left : TXawTextPosition;
      right : TXawTextPosition;
      block : ^TXawTextBlock;
    end;
  T_XawTextAnchor = TXawTextAnchor;
  T_XawTextEntity = TXawTextEntity;
  T_XawTextProperty = TXawTextProperty;
  T_XawTextPropertyList = TXawTextPropertyList;
//// {$endif}
//// {$include <X11/Xaw/TextSink.h>}
//// {$include <X11/Xaw/TextSrc.h>}

const
  XtEtextScrollNever = 'never';  
  XtEtextScrollWhenNeeded = 'whenneeded';  
  XtEtextScrollAlways = 'always';  
  XtEtextResizeNever = 'never';  
  XtEtextResizeWidth = 'width';  
  XtEtextResizeHeight = 'height';  
  XtEtextResizeBoth = 'both';  
  XtEtextWrapNever = 'never';  
  XtEtextWrapLine = 'line';  
  XtEtextWrapWord = 'word';  
  XtNautoFill = 'autoFill';  
  XtNbottomMargin = 'bottomMargin';  
  XtNdialogHOffset = 'dialogHOffset';  
  XtNdialogVOffset = 'dialogVOffset';  
  XtNdisplayCaret = 'displayCaret';  
  XtNdisplayPosition = 'displayPosition';  
  XtNleftMargin = 'leftMargin';  
  XtNrightMargin = 'rightMargin';  
  XtNpositionCallback = 'positionCallback';  
  XtNscrollVertical = 'scrollVertical';  
  XtNscrollHorizontal = 'scrollHorizontal';  
  XtNselectTypes = 'selectTypes';  
  XtNtopMargin = 'topMargin';  
  XtNwrap = 'wrap';  
  XtCColumn = 'Column';  
  XtNleftColumn = 'leftColumn';  
  XtNrightColumn = 'rightColumn';  
  XtCJustifyMode = XtCJustify;  
  XtNjustifyMode = XtNjustify;  
  XtEtextJustifyLeft = 'left';  
  XtEtextJustifyRight = 'right';  
  XtEtextJustifyCenter = 'center';  
  XtEtextJustifyFull = 'full';  
  XtCAutoFill = 'AutoFill';  
  XtCSelectTypes = 'SelectTypes';  
  XtCWrap = 'Wrap';  
//// {$ifndef notdef}

const
  XtCScroll = 'Scroll';  
//// {$endif}
//// {$ifndef _XtStringDefs_h_}

const
  XtNinsertPosition = 'insertPosition';  
//// {$ifndef notdef}

const
  XtNresize = 'resize';  
  XtCResize = 'Resize';  
//// {$endif}

const
  XtNselection = 'selection';  
//// {$endif}


const
  XawTextSearchError = -(12345);  

  XawReplaceError = -(1);  
  XawEditDone = 0;  
  XawEditError = 1;  
  XawPositionError = 2;  


function XawTextFormat(tw,fmt : longint) : longint;

  var
    FMT8BIT : dword;cvar;external;
    XawFmt8Bit : dword;cvar;external;
    XawFmtWide : dword;cvar;external;
    textWidgetClass : TWidgetClass;cvar;external;
type
  TTextWidgetClass = ^T_TextClassRec;

  TTextWidget = ^T_TextRec;
//// (* error 
//// XrmQuark _XawTextFormat
 in declarator_list *)

procedure XawTextDisplay(w:TWidget);cdecl;external;
procedure XawTextEnableRedisplay(w:TWidget);cdecl;external;
procedure XawTextDisableRedisplay(w:TWidget);cdecl;external;
procedure XawTextSetSelectionArray(w:TWidget; sarray:PTXawTextSelectType);cdecl;external;
procedure XawTextGetSelectionPos(w:TWidget; begin_return:PTXawTextPosition; end_return:PTXawTextPosition);cdecl;external;
procedure XawTextSetSource(w:TWidget; source:TWidget; top:TXawTextPosition);cdecl;external;
function XawTextReplace(w:TWidget; start:TXawTextPosition; end:TXawTextPosition; text:PTXawTextBlock):longint;cdecl;external;
function XawTextTopPosition(w:TWidget):TXawTextPosition;cdecl;external;
function XawTextLastPosition(w:TWidget):TXawTextPosition;cdecl;external;
procedure XawTextSetInsertionPoint(w:TWidget; position:TXawTextPosition);cdecl;external;
function XawTextGetInsertionPoint(w:TWidget):TXawTextPosition;cdecl;external;
procedure XawTextUnsetSelection(w:TWidget);cdecl;external;
procedure XawTextSetSelection(w:TWidget; left:TXawTextPosition; right:TXawTextPosition);cdecl;external;
procedure XawTextInvalidate(w:TWidget; from:TXawTextPosition; to:TXawTextPosition);cdecl;external;
function XawTextGetSource(w:TWidget):TWidget;cdecl;external;
function XawTextGetSink(w:TWidget):TWidget;cdecl;external;
//// {$if NeedWidePrototypes}
//// {$else}
//// {$endif}

function XawTextSearch(w:TWidget; dir:longint; dir:TXawTextScanDirection; text:PTXawTextBlock):TXawTextPosition;cdecl;external;
//// {$if NeedWidePrototypes}
//// {$else}
//// (* error 
////  Boolean		visible
//// {$endif}
 in declarator_list *)

//// {$include <X11/Xaw/AsciiSrc.h>}
//// {$include <X11/Xaw/AsciiSink.h>}
//// {$endif}

//// (* error 
//// #endif /* _XawText_h */

// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/RepeaterP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/RepeaterP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/RepeaterP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawRepeaterP_h}
//// {$define _XawRepeaterP_h}
//// {$include <X11/Xaw/CommandP.h>}
//// {$include <X11/Xaw/Repeater.h>}

type
  TRepeaterClassPart = record
      extension : TXtPointer;
    end;


  T_RepeaterClassRec = record
      core_class : TCoreClassPart;
      simple_class : TSimpleClassPart;
      label_class : TLabelClassPart;
      command_class : TCommandClassPart;
      repeater_class : TRepeaterClassPart;
    end;
  TRepeaterClassRec = T_RepeaterClassRec;











//// {$ifndef OLDXAW}

//// {$endif}
type
  TRepeaterPart = record
      initial_delay : longint;
      repeat_delay : longint;
      minimum_delay : longint;
      decay : longint;
      flash : TBoolean;
      start_callbacks : TXtCallbackList;
      stop_callbacks : TXtCallbackList;
      next_delay : longint;
      timer : TXtIntervalId;
      pad : array[0..3] of TXtPointer;
    end;

  T_RepeaterRec = record
      core : TCorePart;
      simple : TSimplePart;
      _label : TLabelPart;
      command : TCommandPart;
      repeater : TRepeaterPart;
    end;
  TRepeaterRec = T_RepeaterRec;


const
  REP_DEF_DECAY = 5;  
  REP_DEF_INITIAL_DELAY = 200;  
  REP_DEF_MINIMUM_DELAY = 10;  
  REP_DEF_REPEAT_DELAY = 50;  
  var
    repeaterClassRec : TRepeaterClassRec;cvar;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/TreeP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/TreeP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/TreeP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawTreeP_h}
//// {$define _XawTreeP_h}
//// {$include <X11/Xaw/Tree.h>}
type
  T_TreeClassPart = record
      extension : TXtPointer;
    end;
  TTreeClassPart = T_TreeClassPart;

  T_TreeClassRec = record
      core_class : TCoreClassPart;
      composite_class : TCompositeClassPart;
      constraint_class : TConstraintClassPart;
      tree_class : TTreeClassPart;
    end;
  TTreeClassRec = T_TreeClassRec;
  var
    treeClassRec : TTreeClassRec;cvar;external;













//// {$ifndef OLDXAW}

//// {$endif}
type
  TTreePart = record
      hpad : TDimension;
      vpad : TDimension;
      line_width : TDimension;
      foreground : TPixel;
      gravity : TXtGravity;
      auto_reconfigure : TBoolean;
      gc : TGC;
      tree_root : TWidget;
      largest : ^TDimension;
      n_largest : longint;
      maxwidth : TDimension;
      maxheight : TDimension;
      display_list : ^TXawDisplayList;
      pad : array[0..3] of TXtPointer;
    end;

  T_TreeRec = record
      core : TCorePart;
      composite : TCompositePart;
      constraint : TConstraintPart;
      tree : TTreePart;
    end;
  TTreeRec = T_TreeRec;







//// {$ifndef OLDXAW}

//// {$endif}
type
  T_TreeConstraintsPart = record
      parent : TWidget;
      gc : TGC;
      children : ^TWidget;
      n_children : longint;
      max_children : longint;
      bbsubwidth : TDimension;
      bbsubheight : TDimension;
      bbwidth : TDimension;
      bbheight : TDimension;
      x : TPosition;
      y : TPosition;
      pad : array[0..1] of TXtPointer;
    end;
  TTreeConstraintsPart = T_TreeConstraintsPart;

  T_TreeConstraintsRec = record
      tree : TTreeConstraintsPart;
    end;
  TTreeConstraintsRec = T_TreeConstraintsRec;
  TTreeConstraints = ^T_TreeConstraintsRec;


function TREE_CONSTRAINT(w : longint) : TTreeConstraints;


const
  TREE_INITIAL_DEPTH = 10;  
  TREE_HORIZONTAL_DEFAULT_SPACING = 20;  
  TREE_VERTICAL_DEFAULT_SPACING = 6;  
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/Tip.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/Tip.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/Tip.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawTip_h}
//// {$define _XawTip_h}

//// {$include <X11/Xaw/Simple.h>}

type
  TTipWidgetClass = ^T_TipClassRec;

  TTipWidget = ^T_TipRec;
  var
    tipWidgetClass : TWidgetClass;cvar;external;

const
  XtNbottomMargin = 'bottomMargin';  
  XawNdisplayList = 'displayList';  
  XtNencoding = 'encoding';  
  XtNleftMargin = 'leftMargin';  
  XtNrightMargin = 'rightMargin';  
  XtNtimeout = 'timeout';  
  XtNtopMargin = 'topMargin';  
  XtNtip = 'tip';  
  XawCDisplayList = 'DisplayList';  
  XtCHorizontalMargins = 'HorizontalMargins';  
  XtCTimeout = 'Timeout';  
  XtCVerticalMargins = 'VerticalMargins';  
  XtCTip = 'Tip';  
  XawRDisplayList = 'XawDisplayList';  



procedure XawTipEnable(w:TWidget);cdecl;external;

procedure XawTipDisable(w:TWidget);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/PortholeP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/PortholeP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/PortholeP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawPortholeP_h}
//// {$define _XawPortholeP_h}
//// {$include <X11/Xaw/Porthole.h>}

type
  TPortholeClassPart = record
      extension : TXtPointer;
    end;


  T_PortholeClassRec = record
      core_class : TCoreClassPart;
      composite_class : TCompositeClassPart;
      porthole_class : TPortholeClassPart;
    end;
  TPortholeClassRec = T_PortholeClassRec;



//// {$ifndef OLDXAW}

//// {$endif}
type
  TPortholePart = record
      report_callbacks : TXtCallbackList;
      pad : array[0..3] of TXtPointer;
    end;

  T_PortholeRec = record
      core : TCorePart;
      composite : TCompositePart;
      porthole : TPortholePart;
    end;
  TPortholeRec = T_PortholeRec;
  var
    portholeClassRec : TPortholeClassRec;cvar;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/TextSrc.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/TextSrc.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/TextSrc.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PAtom  = ^Atom;
Pdword  = ^dword;
Plongint  = ^longint;
PXawTextBlock  = ^XawTextBlock;
PXtPointer  = ^XtPointer;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawTextSrc_h}
//// {$define _XawTextSrc_h}
//// {$include <X11/Xaw/Text.h>}


  var
    textSrcObjectClass : TWidgetClass;cvar;external;
type
  TTextSrcObjectClass = ^T_TextSrcClassRec;

  TTextSrcObject = ^T_TextSrcRec;

  TXawTextScanType = (XawstPositions,XawstWhiteSpace,XawstEOL,
    XawstParagraph,XawstAll,XawstAlphaNumeric
    );

  ThighlightType = (Normal,Selected);

  TXawTextSelectionMode = (XawsmTextSelect,XawsmTextExtend);

  TXawTextSelectionAction = (XawactionStart,XawactionAdjust,XawactionEnd
    );

const
  XawTextReadError = -(1);  
  XawTextScanError = -(1);  
//// {$ifndef OLDXAW}

const
  XtNenableUndo = 'enableUndo';  
  XtCUndo = 'Undo';  
  XtNsourceChanged = 'sourceChanged';  
  XtCChanged = 'Changed';  
  XtNpropertyCallback = 'propertyCallback';  
//// {$endif}


//// (* error 
//// XawTextPosition XawTextSourceRead
//// (* error 
////  XawTextPosition	pos,
//// (* error 
////  XawTextBlock		*text_return,
//// (* error 
////  int			length
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)


function XawTextSourceReplace(w:TWidget; start:TXawTextPosition; end:TXawTextPosition; text:PTXawTextBlock):longint;cdecl;external;

//// {$if NeedWidePrototypes}
//// {$else}
//// (* error 
////  XawTextScanType	type,
//// (* error 
////  XawTextScanDirection	dir,
//// (* error 
////  int			count,
//// (* error 
////  Boolean		include
//// {$endif}
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

//// {$if NeedWidePrototypes}
//// {$else}
//// {$endif}

function XawTextSourceSearch(w:TWidget; position:TXawTextPosition; dir:longint; dir:TXawTextScanDirection; text:PTXawTextBlock):TXawTextPosition;cdecl;external;

function XawTextSourceConvertSelection(w:TWidget; selection:PTAtom; target:PTAtom; _type:PTAtom; value_return:PTXtPointer; 
           length_return:Pdword; format_return:Plongint):TBoolean;cdecl;external;

procedure XawTextSourceSetSelection(w:TWidget; start:TXawTextPosition; end:TXawTextPosition; selection:TAtom);cdecl;external;
//// {$endif}

//// (* error 
//// #endif /* _XawTextSrc_h */

// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/List.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/List.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/List.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef _XawList_h}
//// {$define _XawList_h}
//// {$include <X11/Xaw/Simple.h>}



const
  XAW_LIST_NONE = -(1);  
  XtCList = 'List';  
  XtCSpacing = 'Spacing';  
  XtCColumns = 'Columns';  
  XtCLongest = 'Longest';  
  XtCNumberStrings = 'NumberStrings';  
  XtNcursor = 'cursor';  
  XtNcolumnSpacing = 'columnSpacing';  
  XtNdefaultColumns = 'defaultColumns';  
  XtNforceColumns = 'forceColumns';  
  XtNlist = 'list';  
  XtNlongest = 'longest';  
  XtNnumberStrings = 'numberStrings';  
  XtNpasteBuffer = 'pasteBuffer';  
  XtNrowSpacing = 'rowSpacing';  
  XtNverticalList = 'verticalList';  
  XtNshowCurrent = 'showCurrent';  
//// {$ifndef XtNfontSet}

const
  XtNfontSet = 'fontSet';  
//// {$endif}
//// {$ifndef XtCFontSet}

const
  XtCFontSet = 'FontSet';  
//// {$endif}
  var
    listWidgetClass : TWidgetClass;cvar;external;
type
  TListWidgetClass = ^T_ListClassRec;

  TListWidget = ^T_ListRec;


  T_XawListReturnStruct = record
      _string : TString;
      list_index : longint;
    end;
  TXawListReturnStruct = T_XawListReturnStruct;

//// (* error 
//// void XawListChange
//// {$if NeedWidePrototypes}
//// {$else}
//// {$endif}
in declaration at line 178 *)


procedure XawListUnhighlight(w:TWidget);cdecl;external;

procedure XawListHighlight(w:TWidget; item:longint);cdecl;external;

function XawListShowCurrent(w:TWidget):^TXawListReturnStruct;cdecl;external;
//// {$endif}

//// (* error 
//// #endif /* _XawList_h */

// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/AsciiText.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/AsciiText.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/AsciiText.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef _AsciiText_h}
//// {$define _AsciiText_h}
//// {$include <X11/Xaw/Text.h>}
//// {$include <X11/Xaw/AsciiSrc.h>}
//// {$include <X11/Xaw/MultiSrc.h>}

type
  TAsciiTextWidgetClass = ^T_AsciiTextClassRec;

  TAsciiWidget = ^T_AsciiRec;
  var
    asciiTextWidgetClass : TWidgetClass;cvar;external;

//// {$ifdef ASCII_STRING}
    asciiStringWidgetClass : TWidgetClass;cvar;external;
//// {$endif}
//// {$ifdef ASCII_DISK}
  var
    asciiDiskWidgetClass : TWidgetClass;cvar;external;
//// {$endif}
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/Paned.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/Paned.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/Paned.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

    Type
    Plongint  = ^longint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef _XawPaned_h}
//// {$define _XawPaned_h}
//// {$include <X11/Intrinsic.h>}
//// {$include <X11/Xmu/Converters.h>}


const
  PANED_ASK_CHILD = 0;  
  PANED_GRIP_SIZE = 0;  
  XtNallowResize = 'allowResize';  
  XtNbetweenCursor = 'betweenCursor';  
  XtNverticalBetweenCursor = 'verticalBetweenCursor';  
  XtNhorizontalBetweenCursor = 'horizontalBetweenCursor';  
  XtNgripCursor = 'gripCursor';  
  XtNgripIndent = 'gripIndent';  
  XtNhorizontalGripCursor = 'horizontalGripCursor';  
  XtNinternalBorderColor = 'internalBorderColor';  
  XtNinternalBorderWidth = 'internalBorderWidth';  
  XtNleftCursor = 'leftCursor';  
  XtNlowerCursor = 'lowerCursor';  
  XtNrefigureMode = 'refigureMode';  
  XtNposition = 'position';  
  XtNmin = 'min';  
  XtNmax = 'max';  
  XtNpreferredPaneSize = 'preferredPaneSize';  
  XtNresizeToPreferred = 'resizeToPreferred';  
  XtNrightCursor = 'rightCursor';  
  XtNshowGrip = 'showGrip';  
  XtNskipAdjust = 'skipAdjust';  
  XtNupperCursor = 'upperCursor';  
  XtNverticalGripCursor = 'verticalGripCursor';  
  XtCGripIndent = 'GripIndent';  
  XtCMin = 'Min';  
  XtCMax = 'Max';  
  XtCPreferredPaneSize = 'PreferredPaneSize';  
  XtCShowGrip = 'ShowGrip';  

  var
    panedWidgetClass : TWidgetClass;cvar;external;
type
  TPanedWidgetClass = ^T_PanedClassRec;

  TPanedWidget = ^T_PanedRec;


//// (* error 
//// void XawPanedSetMinMax
in declaration at line 177 *)


procedure XawPanedGetMinMax(w:TWidget; min_return:Plongint; max_return:Plongint);cdecl;external;

//// {$if NeedWidePrototypes}
//// {$else}
//// (* error 
////  Boolean		mode
//// {$endif}
 in declarator_list *)


function XawPanedGetNumSub(w:TWidget):longint;cdecl;external;

//// {$if NeedWidePrototypes}
//// {$else}
//// (* error 
////  Boolean		allow_resize
//// {$endif}
 in declarator_list *)
//// {$endif}

//// (* error 
//// #endif /* _XawPaned_h */

// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/SmeBSBP.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/SmeBSBP.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/SmeBSBP.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawSmeBSBP_h}
//// {$define _XawSmeBSBP_h}

//// {$include <X11/Xaw/SmeP.h>}
//// {$include <X11/Xaw/SmeBSB.h>}
type
  T_SmeBSBClassPart = record
      extension : TXtPointer;
    end;
  TSmeBSBClassPart = T_SmeBSBClassPart;


  T_SmeBSBClassRec = record
      rect_class : TRectObjClassPart;
      sme_class : TSmeClassPart;
      sme_bsb_class : TSmeBSBClassPart;
    end;
  TSmeBSBClassRec = T_SmeBSBClassRec;
  var
    smeBSBClassRec : TSmeBSBClassRec;cvar;external;

















//// {$ifndef OLDXAW}



//// {$endif}
type
  TSmeBSBPart = record
      _label : TString;
      vert_space : longint;
      left_bitmap : TPixmap;
      right_bitmap : TPixmap;
      left_margin : TDimension;
      right_margin : TDimension;
      foreground : TPixel;
      font : ^TXFontStruct;
      fontset : TXFontSet;
      justify : TXtJustify;
      set_values_area_cleared : TBoolean;
      norm_gc : TGC;
      rev_gc : TGC;
      norm_gray_gc : TGC;
      invert_gc : TGC;
      left_bitmap_width : TDimension;
      left_bitmap_height : TDimension;
      right_bitmap_width : TDimension;
      right_bitmap_height : TDimension;
      menu_name : ^char;
      pad : array[0..3] of TXtPointer;
    end;


  T_SmeBSBRec = record
      object : TObjectPart;
      rectangle : TRectObjPart;
      sme : TSmePart;
      sme_bsb : TSmeBSBPart;
    end;
  TSmeBSBRec = T_SmeBSBRec;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/Xaw-Konverter-header/XawInit.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/Xaw-Konverter-header/XawInit.h
  The following command line parameters were used:
    /tmp/Xaw-Konverter-header/XawInit.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

    Type
    P_XtString  = ^_XtString;
    PDisplay  = ^Display;
    Plongint  = ^longint;
    PScreen  = ^Screen;
    PXtAppContext  = ^XtAppContext;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef _XawInit_h}
//// {$define _XawInit_h}

const
  XawVendor = XVENDORNAMESHORT;  
//// {$ifdef OLDXAW}
  XawVersion = 6700002;  
//// {$else}

const
  XawVersion = 7000002;  
type
  T_XawDL = TXawDisplayList;
//// {$endif}

//// {$include <X11/Intrinsic.h>}
//// {$include <X11/Xfuncproto.h>}
//// (* error 
//// void XawInitializeWidgetSet(void);
in declaration at line 44 *)
//// {$ifndef OLDXAW}

procedure XawInitializeDefaultConverters;cdecl;external;
//// {$endif}

function XawOpenApplication(app_context_return:PTXtAppContext; dpy:PTDisplay; screen:PTScreen; application_name:TString; application_class:TString; 
               widget_class:TWidgetClass; argc:Plongint; argv:PT_XtString):TWidget;cdecl;external;
//// {$endif}

//// (* error 
//// #endif /* _XawInit_h */


implementation
// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/AsciiSinkP.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/AllWidgets.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/FormP.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/SmeLine.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/DialogP.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/Panner.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/SmeBSB.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/Sme.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/Cardinals.pp
// -------------------------------------------------

function ZERO : TCardinal;
  begin
    ZERO:=TCardinal(0);
  end;

function ONE : TCardinal;
  begin
    ONE:=TCardinal(1);
  end;

function TWO : TCardinal;
  begin
    TWO:=TCardinal(2);
  end;

function THREE : TCardinal;
  begin
    THREE:=TCardinal(3);
  end;

function FOUR : TCardinal;
  begin
    FOUR:=TCardinal(4);
  end;

function FIVE : TCardinal;
  begin
    FIVE:=TCardinal(5);
  end;

function SIX : TCardinal;
  begin
    SIX:=TCardinal(6);
  end;

function SEVEN : TCardinal;
  begin
    SEVEN:=TCardinal(7);
  end;

function EIGHT : TCardinal;
  begin
    EIGHT:=TCardinal(8);
  end;

function NINE : TCardinal;
  begin
    NINE:=TCardinal(9);
  end;

function TEN : TCardinal;
  begin
    TEN:=TCardinal(10);
  end;


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/Toggle.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/TipP.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/Simple.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/SimpleMenP.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/AsciiTextP.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/StripChart.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/TextSrcP.pp
// -------------------------------------------------

    function XtInheritInput : T_XawTextPositionFunc;
      begin
        XtInheritInput:=T_XawTextPositionFunc(_XtInherit);
      end;

    function XtInheritRead : T_XawSrcReadProc;
      begin
        XtInheritRead:=T_XawSrcReadProc(_XtInherit);
      end;

    function XtInheritReplace : T_XawSrcReplaceProc;
      begin
        XtInheritReplace:=T_XawSrcReplaceProc(_XtInherit);
      end;

    function XtInheritScan : T_XawSrcScanProc;
      begin
        XtInheritScan:=T_XawSrcScanProc(_XtInherit);
      end;

    function XtInheritSearch : T_XawSrcSearchProc;
      begin
        XtInheritSearch:=T_XawSrcSearchProc(_XtInherit);
      end;

    function XtInheritSetSelection : T_XawSrcSetSelectionProc;
      begin
        XtInheritSetSelection:=T_XawSrcSetSelectionProc(_XtInherit);
      end;

    function XtInheritConvertSelection : T_XawSrcConvertSelectionProc;
      begin
        XtInheritConvertSelection:=T_XawSrcConvertSelectionProc(_XtInherit);
      end;


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/MultiSrc.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/BoxP.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/ViewportP.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/MultiSink.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/TemplateP.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/AsciiSrcP.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/Command.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/Viewport.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/MenuButtoP.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/TextSinkP.pp
// -------------------------------------------------

function XtInheritDisplayText : T_XawSinkDisplayTextProc;
  begin
    XtInheritDisplayText:=T_XawSinkDisplayTextProc(_XtInherit);
  end;

function XtInheritInsertCursor : T_XawSinkInsertCursorProc;
  begin
    XtInheritInsertCursor:=T_XawSinkInsertCursorProc(_XtInherit);
  end;

function XtInheritClearToBackground : T_XawSinkClearToBackgroundProc;
  begin
    XtInheritClearToBackground:=T_XawSinkClearToBackgroundProc(_XtInherit);
  end;

function XtInheritFindPosition : T_XawSinkFindPositionProc;
  begin
    XtInheritFindPosition:=T_XawSinkFindPositionProc(_XtInherit);
  end;

function XtInheritFindDistance : T_XawSinkFindDistanceProc;
  begin
    XtInheritFindDistance:=T_XawSinkFindDistanceProc(_XtInherit);
  end;

function XtInheritResolve : T_XawSinkResolveProc;
  begin
    XtInheritResolve:=T_XawSinkResolveProc(_XtInherit);
  end;

function XtInheritMaxLines : T_XawSinkMaxLinesProc;
  begin
    XtInheritMaxLines:=T_XawSinkMaxLinesProc(_XtInherit);
  end;

function XtInheritMaxHeight : T_XawSinkMaxHeightProc;
  begin
    XtInheritMaxHeight:=T_XawSinkMaxHeightProc(_XtInherit);
  end;

function XtInheritSetTabs : T_XawSinkSetTabsProc;
  begin
    XtInheritSetTabs:=T_XawSinkSetTabsProc(_XtInherit);
  end;

function XtInheritGetCursorBounds : T_XawSinkGetCursorBoundsProc;
  begin
    XtInheritGetCursorBounds:=T_XawSinkGetCursorBoundsProc(_XtInherit);
  end;


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/CommandP.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/TextP.pp
// -------------------------------------------------

    function XawTextGetLastPosition(ctx : longint) : longint;
    begin
      XawTextGetLastPosition:=XawTextSourceScan(ctx^.(text.source),0,XawstAll,XawsdRight,1,_True);
    end;

    function GETLASTPOS : longint; { return type might be wrong }
      begin
        GETLASTPOS:=XawTextGetLastPosition(ctx);
      end;

    function zeroPosition : TXawTextPosition;
      begin
        zeroPosition:=TXawTextPosition(0);
      end;

    function DEFAULT_TEXT_HEIGHT : TDimension;
      begin
        DEFAULT_TEXT_HEIGHT:=TDimension( not (0));
      end;

    function VMargins(ctx : longint) : longint;
    begin
      VMargins:=(ctx^.(text.(margin.top)))+(ctx^.(text.(margin.bottom)));
    end;

    function HMargins(ctx : longint) : longint;
    begin
      HMargins:=(ctx^.(text.left_margin))+(ctx^.(text.(margin.right)));
    end;

    function RVMargins(ctx : longint) : longint;
    begin
      RVMargins:=(ctx^.(text.(r_margin.top)))+(ctx^.(text.(r_margin.bottom)));
    end;

    function RHMargins(ctx : longint) : longint;
    begin
      RHMargins:=(ctx^.(text.(r_margin.left)))+(ctx^.(text.(r_margin.right)));
    end;

    function IsPositionVisible(ctx,pos : longint) : longint;
    begin
      IsPositionVisible:=(pos>=((ctx^.(text.(lt.((info[0]).position)))) and (@(pos))))<(ctx^.(text.(lt.((info[ctx^.(text.(lt.lines))]).position))));
    end;


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/SimpleP.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/MenuButton.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/XawImP.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/AsciiSink.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/Form.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/Repeater.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/TextSink.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/SmeP.pp
// -------------------------------------------------

    function XtInheritHighlight : TXtWidgetProc;
      begin
        XtInheritHighlight:=TXtWidgetProc(_XtInherit);
      end;


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/Grip.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/Label.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/PanedP.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/GripP.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/Dialog.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/StripCharP.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/Box.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/ScrollbarP.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/SimpleMenu.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/ListP.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/SmeLineP.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/Template.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/AsciiSrc.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/Scrollbar.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/Tree.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/Porthole.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/Reports.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/MultiSinkP.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/VendorEP.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/LabelP.pp
// -------------------------------------------------

function LEFT_OFFSET(lw : longint) : longint;
var
   if_local1 : longint;
(* result types are not known *)
begin
  if lw^.(_label.left_bitmap) then
    if_local1:=(lw^.(_label.lbm_width))+(lw^.(_label.internal_width))
  else
    if_local1:=0;
  LEFT_OFFSET:=if_local1;
end;


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/ToggleP.pp
// -------------------------------------------------

function streq(a,b : longint) : longint;
begin
  streq:=(strcmp(a,b))=0;
end;


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/MultiSrcP.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/PannerP.pp
// -------------------------------------------------

function PANNER_HSCALE(pw,val : longint) : longint;
begin
  PANNER_HSCALE:=(pw^.(panner.haspect))*(Tdouble(val));
end;

function PANNER_VSCALE(pw,val : longint) : longint;
begin
  PANNER_VSCALE:=(pw^.(panner.vaspect))*(Tdouble(val));
end;

function PANNER_DSCALE(pw,val : longint) : TDimension;
begin
  PANNER_DSCALE:=TDimension(((dword(val))*(dword(pw^.(panner.default_scale))))/100);
end;


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/Text.pp
// -------------------------------------------------

function XawTextFormat(tw,fmt : longint) : longint;
begin
  XawTextFormat:=(dword(_XawTextFormat(tw)))=fmt;
end;


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/RepeaterP.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/TreeP.pp
// -------------------------------------------------

function TREE_CONSTRAINT(w : longint) : TTreeConstraints;
begin
  TREE_CONSTRAINT:=TTreeConstraints(w^.(core.constraints));
end;


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/Tip.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/PortholeP.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/TextSrc.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/List.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/AsciiText.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/Paned.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/SmeBSBP.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/Xaw-Konverter-header/XawInit.pp
// -------------------------------------------------




end.
