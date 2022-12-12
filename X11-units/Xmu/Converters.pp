
unit Converters;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xmu/Converters.h
  The following command line parameters were used:
    /usr/include/X11/Xmu/Converters.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xmu/Converters.pp
}

    Type
    PCardinal  = ^Cardinal;
    PDisplay  = ^Display;
    PXrmValue  = ^XrmValue;
    PXtPointer  = ^XtPointer;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XMU_STRCONVERT_H_}
{$define _XMU_STRCONVERT_H_}  
{$include <X11/Intrinsic.h>}
{$include <X11/Xfuncproto.h>}
(* error 
void XmuCvtFunctionToCallback
in declaration at line 46 *)

    const
      XtNbackingStore = 'backingStore';      
      XtCBackingStore = 'BackingStore';      
      XtRBackingStore = 'BackingStore';      
      XtEnotUseful = 'notUseful';      
      XtEwhenMapped = 'whenMapped';      
      XtEalways = 'always';      
      XtEdefault = 'default';      

    procedure XmuCvtStringToBackingStore(args:PXrmValue; num_args:PCardinal; fromVal:XrmValuePtr; toVal:XrmValuePtr);

    function XmuCvtBackingStoreToString(dpy:PDisplay; args:PXrmValue; num_args:PCardinal; fromVal:XrmValuePtr; toVal:XrmValuePtr; 
               converter_data:PXtPointer):Boolean;

    procedure XmuCvtStringToCursor(args:PXrmValue; num_args:PCardinal; fromVal:XrmValuePtr; toVal:XrmValuePtr);

    const
      XtRColorCursor = 'ColorCursor';      
      XtNpointerColor = 'pointerColor';      
      XtNpointerColorBackground = 'pointerColorBackground';      

    function XmuCvtStringToColorCursor(dpy:PDisplay; args:PXrmValue; num_args:PCardinal; fromVal:XrmValuePtr; toVal:XrmValuePtr; 
               converter_data:PXtPointer):Boolean;


    type
      XtGravity = longint;
{$ifndef XtRGravity}

    const
      XtRGravity = 'Gravity';      
{$endif}

    const
      XtEForget = 'forget';      
      XtENorthWest = 'northwest';      
      XtENorth = 'north';      
      XtENorthEast = 'northeast';      
      XtEWest = 'west';      
      XtECenter = 'center';      
      XtEEast = 'east';      
      XtESouthWest = 'southwest';      
      XtESouth = 'south';      
      XtESouthEast = 'southeast';      
      XtEStatic = 'static';      
      XtEUnmap = 'unmap';      

    procedure XmuCvtStringToGravity(args:PXrmValue; num_args:PCardinal; fromVal:XrmValuePtr; toVal:XrmValuePtr);

    function XmuCvtGravityToString(dpy:PDisplay; args:PXrmValue; num_args:PCardinal; fromVal:XrmValuePtr; toVal:XrmValuePtr; 
               converter_data:PXtPointer):Boolean;





    type
      XtJustify = (XtJustifyLeft,XtJustifyCenter,XtJustifyRight
        );
{$ifndef XtRJustify}

    const
      XtRJustify = 'Justify';      
{$endif}

    const
      XtEleft = 'left';      
      XtEcenter = 'center';      
      XtEright = 'right';      
      XtEtop = 'top';      
      XtEbottom = 'bottom';      

    procedure XmuCvtStringToJustify(args:PXrmValue; num_args:PCardinal; fromVal:XrmValuePtr; toVal:XrmValuePtr);

    function XmuCvtJustifyToString(dpy:PDisplay; args:PXrmValue; num_args:PCardinal; fromVal:XrmValuePtr; toVal:XrmValuePtr; 
               converter_data:PXtPointer):Boolean;

    const
      XtRLong = 'Long';      

    procedure XmuCvtStringToLong(args:PXrmValue; num_args:PCardinal; fromVal:XrmValuePtr; toVal:XrmValuePtr);

    function XmuCvtLongToString(dpy:PDisplay; args:PXrmValue; num_args:PCardinal; fromVal:XrmValuePtr; toVal:XrmValuePtr; 
               converter_data:PXtPointer):Boolean;


    type
      XtOrientation = (XtorientHorizontal,XtorientVertical
        );

    procedure XmuCvtStringToOrientation(args:PXrmValue; num_args:PCardinal; fromVal:XrmValuePtr; toVal:XrmValuePtr);

    function XmuCvtOrientationToString(dpy:PDisplay; args:PXrmValue; num_args:PCardinal; fromVal:XrmValuePtr; toVal:XrmValuePtr; 
               converter_data:PXtPointer):Boolean;

    procedure XmuCvtStringToBitmap(args:PXrmValue; num_args:PCardinal; fromVal:XrmValuePtr; toVal:XrmValuePtr);

    const
      XtRShapeStyle = 'ShapeStyle';      
      XtERectangle = 'Rectangle';      
      XtEOval = 'Oval';      
      XtEEllipse = 'Ellipse';      
      XtERoundedRectangle = 'RoundedRectangle';      
      XmuShapeRectangle = 1;      
      XmuShapeOval = 2;      
      XmuShapeEllipse = 3;      
      XmuShapeRoundedRectangle = 4;      

    function XmuCvtStringToShapeStyle(dpy:PDisplay; args:PXrmValue; num_args:PCardinal; fromVal:XrmValuePtr; toVal:XrmValuePtr; 
               converter_data:PXtPointer):Boolean;

    function XmuCvtShapeStyleToString(dpy:PDisplay; args:PXrmValue; num_args:PCardinal; fromVal:XrmValuePtr; toVal:XrmValuePtr; 
               converter_data:PXtPointer):Boolean;

    function XmuReshapeWidget(w:Widget; shape_style:longint; corner_width:longint; corner_height:longint):Boolean;

    procedure XmuCvtStringToWidget(args:PXrmValue; num_args:PCardinal; fromVal:XrmValuePtr; toVal:XrmValuePtr);

    function XmuNewCvtStringToWidget(display:PDisplay; args:PXrmValue; num_args:PCardinal; fromVal:PXrmValue; toVal:PXrmValue; 
               converter_data:PXtPointer):Boolean;

    function XmuCvtWidgetToString(dpy:PDisplay; args:PXrmValue; num_args:PCardinal; fromVal:PXrmValue; toVal:PXrmValue; 
               converter_data:PXtPointer):Boolean;

{$endif}

(* error 
#endif /* _XMU_STRCONVERT_H_ */

implementation

    procedure XmuCvtStringToBackingStore(args:PXrmValue; num_args:PCardinal; fromVal:XrmValuePtr; toVal:XrmValuePtr);
    begin
      { You must implement this function }
    end;
    function XmuCvtBackingStoreToString(dpy:PDisplay; args:PXrmValue; num_args:PCardinal; fromVal:XrmValuePtr; toVal:XrmValuePtr; 
               converter_data:PXtPointer):Boolean;
    begin
      { You must implement this function }
    end;
    procedure XmuCvtStringToCursor(args:PXrmValue; num_args:PCardinal; fromVal:XrmValuePtr; toVal:XrmValuePtr);
    begin
      { You must implement this function }
    end;
    function XmuCvtStringToColorCursor(dpy:PDisplay; args:PXrmValue; num_args:PCardinal; fromVal:XrmValuePtr; toVal:XrmValuePtr; 
               converter_data:PXtPointer):Boolean;
    begin
      { You must implement this function }
    end;
    procedure XmuCvtStringToGravity(args:PXrmValue; num_args:PCardinal; fromVal:XrmValuePtr; toVal:XrmValuePtr);
    begin
      { You must implement this function }
    end;
    function XmuCvtGravityToString(dpy:PDisplay; args:PXrmValue; num_args:PCardinal; fromVal:XrmValuePtr; toVal:XrmValuePtr; 
               converter_data:PXtPointer):Boolean;
    begin
      { You must implement this function }
    end;
    procedure XmuCvtStringToJustify(args:PXrmValue; num_args:PCardinal; fromVal:XrmValuePtr; toVal:XrmValuePtr);
    begin
      { You must implement this function }
    end;
    function XmuCvtJustifyToString(dpy:PDisplay; args:PXrmValue; num_args:PCardinal; fromVal:XrmValuePtr; toVal:XrmValuePtr; 
               converter_data:PXtPointer):Boolean;
    begin
      { You must implement this function }
    end;
    procedure XmuCvtStringToLong(args:PXrmValue; num_args:PCardinal; fromVal:XrmValuePtr; toVal:XrmValuePtr);
    begin
      { You must implement this function }
    end;
    function XmuCvtLongToString(dpy:PDisplay; args:PXrmValue; num_args:PCardinal; fromVal:XrmValuePtr; toVal:XrmValuePtr; 
               converter_data:PXtPointer):Boolean;
    begin
      { You must implement this function }
    end;
    procedure XmuCvtStringToOrientation(args:PXrmValue; num_args:PCardinal; fromVal:XrmValuePtr; toVal:XrmValuePtr);
    begin
      { You must implement this function }
    end;
    function XmuCvtOrientationToString(dpy:PDisplay; args:PXrmValue; num_args:PCardinal; fromVal:XrmValuePtr; toVal:XrmValuePtr; 
               converter_data:PXtPointer):Boolean;
    begin
      { You must implement this function }
    end;
    procedure XmuCvtStringToBitmap(args:PXrmValue; num_args:PCardinal; fromVal:XrmValuePtr; toVal:XrmValuePtr);
    begin
      { You must implement this function }
    end;
    function XmuCvtStringToShapeStyle(dpy:PDisplay; args:PXrmValue; num_args:PCardinal; fromVal:XrmValuePtr; toVal:XrmValuePtr; 
               converter_data:PXtPointer):Boolean;
    begin
      { You must implement this function }
    end;
    function XmuCvtShapeStyleToString(dpy:PDisplay; args:PXrmValue; num_args:PCardinal; fromVal:XrmValuePtr; toVal:XrmValuePtr; 
               converter_data:PXtPointer):Boolean;
    begin
      { You must implement this function }
    end;
    function XmuReshapeWidget(w:Widget; shape_style:longint; corner_width:longint; corner_height:longint):Boolean;
    begin
      { You must implement this function }
    end;
    procedure XmuCvtStringToWidget(args:PXrmValue; num_args:PCardinal; fromVal:XrmValuePtr; toVal:XrmValuePtr);
    begin
      { You must implement this function }
    end;
    function XmuNewCvtStringToWidget(display:PDisplay; args:PXrmValue; num_args:PCardinal; fromVal:PXrmValue; toVal:PXrmValue; 
               converter_data:PXtPointer):Boolean;
    begin
      { You must implement this function }
    end;
    function XmuCvtWidgetToString(dpy:PDisplay; args:PXrmValue; num_args:PCardinal; fromVal:PXrmValue; toVal:PXrmValue; 
               converter_data:PXtPointer):Boolean;
    begin
      { You must implement this function }
    end;

end.
