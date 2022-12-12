
unit TextSinkP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/TextSinkP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/TextSinkP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/TextSinkP.pp
}

  Type
  Plongint  = ^longint;
  PScreen  = ^Screen;
  Psmallint  = ^smallint;
  PXawTextPosition  = ^XawTextPosition;
  PXawTextProperty  = ^XawTextProperty;
  PXawTextPropertyList  = ^XawTextPropertyList;
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
    _XawTextProperty = record
        identifier : XrmQuark;
        code : XrmQuark;
        mask : dword;
        font : ^XFontStruct;
        fontset : XFontSet;
        foreground : Pixel;
        background : Pixel;
        foreground_pixmap : Pixmap;
        background_pixmap : Pixmap;
        xlfd : XrmQuark;
        xlfd_mask : dword;
        foundry : XrmQuark;
        family : XrmQuark;
        weight : XrmQuark;
        slant : XrmQuark;
        setwidth : XrmQuark;
        addstyle : XrmQuark;
        pixel_size : XrmQuark;
        point_size : XrmQuark;
        res_x : XrmQuark;
        res_y : XrmQuark;
        spacing : XrmQuark;
        avgwidth : XrmQuark;
        registry : XrmQuark;
        encoding : XrmQuark;
        underline_position : smallint;
        underline_thickness : smallint;
      end;

    _XawTextPropertyList = record
        identifier : XrmQuark;
        screen : ^Screen;
        colormap : Colormap;
        depth : longint;
        properties : ^^XawTextProperty;
        num_properties : Cardinal;
        next : ^XawTextPropertyList;
      end;

    _XawTextPaintStruct = XawTextPaintStruct;


    _XawTextPaintStruct = record
        next : ^XawTextPaintStruct;
        x : longint;
        y : longint;
        width : longint;
        text : ^char;
        length : Cardinal;
        _property : ^XawTextProperty;
        max_ascent : longint;
        max_descent : longint;
        backtabs : ^XmuArea;
        highlight : Boolean;
      end;




    XawTextPaintList = record
        clip : ^XmuArea;
        hightabs : ^XmuArea;
        paint : ^XawTextPaintStruct;
        bearings : ^XawTextPaintStruct;
      end;

    TextSinkExtRec = record
        next_extension : XtPointer;
        record_type : XrmQuark;
        version : longint;
        record_size : Cardinal;
        BeginPaint : function (_para1:Widget):Bool;cdecl;
        PreparePaint : procedure (_para1:Widget; _para2:longint; _para3:longint; _para4:XawTextPosition; _para5:XawTextPosition; 
                      _para6:Bool);cdecl;
        DoPaint : procedure (_para1:Widget);cdecl;
        EndPaint : function (_para1:Widget):Bool;cdecl;
      end;
    TextSinkExt = ^TextSinkExtRec;
{$endif}

  type

    _XawSinkDisplayTextProc = procedure (_para1:Widget; _para2:longint; _para3:longint; _para4:XawTextPosition; _para5:XawTextPosition; 
                  _para6:Bool);cdecl;

    _XawSinkInsertCursorProc = procedure (_para1:Widget; _para2:longint; _para3:longint; _para4:XawTextInsertState);cdecl;

    _XawSinkClearToBackgroundProc = procedure (_para1:Widget; _para2:longint; _para3:longint; _para4:dword; _para5:dword);cdecl;

    _XawSinkFindPositionProc = procedure (_para1:Widget; _para2:XawTextPosition; _para3:longint; _para4:longint; _para5:Bool; 
                  _para6:PXawTextPosition; _para7:Plongint; _para8:Plongint);cdecl;

    _XawSinkFindDistanceProc = procedure (_para1:Widget; _para2:XawTextPosition; _para3:longint; _para4:XawTextPosition; _para5:Plongint; 
                  _para6:PXawTextPosition; _para7:Plongint);cdecl;

    _XawSinkResolveProc = procedure (_para1:Widget; _para2:XawTextPosition; _para3:longint; _para4:longint; _para5:PXawTextPosition);cdecl;

    _XawSinkMaxLinesProc = function (_para1:Widget; _para2:dword):longint;cdecl;

    _XawSinkMaxHeightProc = function (_para1:Widget; _para2:longint):longint;cdecl;

    _XawSinkSetTabsProc = procedure (_para1:Widget; _para2:longint; _para3:Psmallint);cdecl;

    _XawSinkGetCursorBoundsProc = procedure (_para1:Widget; _para2:PXRectangle);cdecl;
{$ifndef OLDXAW}
{$endif}

  type
    _TextSinkClassPart = record
        DisplayText : _XawSinkDisplayTextProc;
        InsertCursor : _XawSinkInsertCursorProc;
        ClearToBackground : _XawSinkClearToBackgroundProc;
        FindPosition : _XawSinkFindPositionProc;
        FindDistance : _XawSinkFindDistanceProc;
        Resolve : _XawSinkResolveProc;
        MaxLines : _XawSinkMaxLinesProc;
        MaxHeight : _XawSinkMaxHeightProc;
        SetTabs : _XawSinkSetTabsProc;
        GetCursorBounds : _XawSinkGetCursorBoundsProc;
        extension : TextSinkExt;
      end;
    TextSinkClassPart = _TextSinkClassPart;


    _TextSinkClassRec = record
        object_class : ObjectClassPart;
        text_sink_class : TextSinkClassPart;
      end;
    TextSinkClassRec = _TextSinkClassRec;

    var
      textSinkClassRec : TextSinkClassRec;cvar;external;








{$ifndef OLDXAW}


{$endif}

  type
    TextSinkPart = record
        foreground : Pixel;
        background : Pixel;
        tabs : ^Position;
        char_tabs : ^smallint;
        tab_count : longint;
        cursor_color : Pixel;
        properties : ^XawTextPropertyList;
        paint : ^XawTextPaintList;
        pad : array[0..1] of XtPointer;
      end;


    _TextSinkRec = record
        object : ObjectPart;
        text_sink : TextSinkPart;
      end;
    TextSinkRec = _TextSinkRec;

{$ifndef OLDXAW}

  function XawTextSinkConvertPropertyList(name:String; spec:String; screen:PScreen; Colormap:Colormap; depth:longint):^XawTextPropertyList;

  function XawTextSinkGetProperty(w:Widget; _property:XrmQuark):^XawTextProperty;

  function XawTextSinkCopyProperty(w:Widget; _property:XrmQuark):^XawTextProperty;

  function XawTextSinkAddProperty(w:Widget; _property:PXawTextProperty):^XawTextProperty;

  function XawTextSinkCombineProperty(w:Widget; result_in_out:PXawTextProperty; _property:PXawTextProperty; override:Bool):^XawTextProperty;

  function XawTextSinkBeginPaint(w:Widget):Bool;

  procedure XawTextSinkPreparePaint(w:Widget; y:longint; line:longint; from:XawTextPosition; to:XawTextPosition; 
              highlight:Bool);

  procedure XawTextSinkDoPaint(w:Widget);

  function XawTextSinkEndPaint(w:Widget):Bool;

{$endif}

  function XtInheritDisplayText : _XawSinkDisplayTextProc;    

  function XtInheritInsertCursor : _XawSinkInsertCursorProc;    

  function XtInheritClearToBackground : _XawSinkClearToBackgroundProc;    

  function XtInheritFindPosition : _XawSinkFindPositionProc;    

  function XtInheritFindDistance : _XawSinkFindDistanceProc;    

  function XtInheritResolve : _XawSinkResolveProc;    

  function XtInheritMaxLines : _XawSinkMaxLinesProc;    

  function XtInheritMaxHeight : _XawSinkMaxHeightProc;    

  function XtInheritSetTabs : _XawSinkSetTabsProc;    

  function XtInheritGetCursorBounds : _XawSinkGetCursorBoundsProc;    

{$endif}


implementation

  function XawTextSinkConvertPropertyList(name:String; spec:String; screen:PScreen; Colormap:Colormap; depth:longint):PXawTextPropertyList;
  begin
    { You must implement this function }
  end;
  function XawTextSinkGetProperty(w:Widget; _property:XrmQuark):PXawTextProperty;
  begin
    { You must implement this function }
  end;
  function XawTextSinkCopyProperty(w:Widget; _property:XrmQuark):PXawTextProperty;
  begin
    { You must implement this function }
  end;
  function XawTextSinkAddProperty(w:Widget; _property:PXawTextProperty):PXawTextProperty;
  begin
    { You must implement this function }
  end;
  function XawTextSinkCombineProperty(w:Widget; result_in_out:PXawTextProperty; _property:PXawTextProperty; override:Bool):PXawTextProperty;
  begin
    { You must implement this function }
  end;
  function XawTextSinkBeginPaint(w:Widget):Bool;
  begin
    { You must implement this function }
  end;
  procedure XawTextSinkPreparePaint(w:Widget; y:longint; line:longint; from:XawTextPosition; to:XawTextPosition; 
              highlight:Bool);
  begin
    { You must implement this function }
  end;
  procedure XawTextSinkDoPaint(w:Widget);
  begin
    { You must implement this function }
  end;
  function XawTextSinkEndPaint(w:Widget):Bool;
  begin
    { You must implement this function }
  end;
  function XtInheritDisplayText : _XawSinkDisplayTextProc;
    begin
      XtInheritDisplayText:=_XawSinkDisplayTextProc(_XtInherit);
    end;

  function XtInheritInsertCursor : _XawSinkInsertCursorProc;
    begin
      XtInheritInsertCursor:=_XawSinkInsertCursorProc(_XtInherit);
    end;

  function XtInheritClearToBackground : _XawSinkClearToBackgroundProc;
    begin
      XtInheritClearToBackground:=_XawSinkClearToBackgroundProc(_XtInherit);
    end;

  function XtInheritFindPosition : _XawSinkFindPositionProc;
    begin
      XtInheritFindPosition:=_XawSinkFindPositionProc(_XtInherit);
    end;

  function XtInheritFindDistance : _XawSinkFindDistanceProc;
    begin
      XtInheritFindDistance:=_XawSinkFindDistanceProc(_XtInherit);
    end;

  function XtInheritResolve : _XawSinkResolveProc;
    begin
      XtInheritResolve:=_XawSinkResolveProc(_XtInherit);
    end;

  function XtInheritMaxLines : _XawSinkMaxLinesProc;
    begin
      XtInheritMaxLines:=_XawSinkMaxLinesProc(_XtInherit);
    end;

  function XtInheritMaxHeight : _XawSinkMaxHeightProc;
    begin
      XtInheritMaxHeight:=_XawSinkMaxHeightProc(_XtInherit);
    end;

  function XtInheritSetTabs : _XawSinkSetTabsProc;
    begin
      XtInheritSetTabs:=_XawSinkSetTabsProc(_XtInherit);
    end;

  function XtInheritGetCursorBounds : _XawSinkGetCursorBoundsProc;
    begin
      XtInheritGetCursorBounds:=_XawSinkGetCursorBoundsProc(_XtInherit);
    end;


end.
