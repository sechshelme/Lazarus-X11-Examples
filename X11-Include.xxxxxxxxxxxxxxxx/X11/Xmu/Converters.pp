
unit Converters;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/Converters.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/Converters.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/Converters.pp
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
    PCardinal  = ^Cardinal;
    PDisplay  = ^Display;
    PXrmValue  = ^XrmValue;
    PXtGravity  = ^XtGravity;
    PXtJustify  = ^XtJustify;
    PXtOrientation  = ^XtOrientation;
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

procedure XmuCvtStringToBackingStore(args:PXrmValue; num_args:PCardinal; fromVal:TXrmValuePtr; toVal:TXrmValuePtr);cdecl;external;
function XmuCvtBackingStoreToString(dpy:PDisplay; args:PXrmValue; num_args:PCardinal; fromVal:TXrmValuePtr; toVal:TXrmValuePtr; 
               converter_data:PXtPointer):TBoolean;cdecl;external;
procedure XmuCvtStringToCursor(args:PXrmValue; num_args:PCardinal; fromVal:TXrmValuePtr; toVal:TXrmValuePtr);cdecl;external;
    const
      XtRColorCursor = 'ColorCursor';      
      XtNpointerColor = 'pointerColor';      
      XtNpointerColorBackground = 'pointerColorBackground';      

function XmuCvtStringToColorCursor(dpy:PDisplay; args:PXrmValue; num_args:PCardinal; fromVal:TXrmValuePtr; toVal:TXrmValuePtr; 
               converter_data:PXtPointer):TBoolean;cdecl;external;
    type
      PXtGravity = ^TXtGravity;
      TXtGravity = longint;
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

procedure XmuCvtStringToGravity(args:PXrmValue; num_args:PCardinal; fromVal:TXrmValuePtr; toVal:TXrmValuePtr);cdecl;external;
function XmuCvtGravityToString(dpy:PDisplay; args:PXrmValue; num_args:PCardinal; fromVal:TXrmValuePtr; toVal:TXrmValuePtr; 
               converter_data:PXtPointer):TBoolean;cdecl;external;



    type
      PXtJustify = ^TXtJustify;
      TXtJustify = (XtJustifyLeft,XtJustifyCenter,XtJustifyRight
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

procedure XmuCvtStringToJustify(args:PXrmValue; num_args:PCardinal; fromVal:TXrmValuePtr; toVal:TXrmValuePtr);cdecl;external;
function XmuCvtJustifyToString(dpy:PDisplay; args:PXrmValue; num_args:PCardinal; fromVal:TXrmValuePtr; toVal:TXrmValuePtr; 
               converter_data:PXtPointer):TBoolean;cdecl;external;
    const
      XtRLong = 'Long';      

procedure XmuCvtStringToLong(args:PXrmValue; num_args:PCardinal; fromVal:TXrmValuePtr; toVal:TXrmValuePtr);cdecl;external;
function XmuCvtLongToString(dpy:PDisplay; args:PXrmValue; num_args:PCardinal; fromVal:TXrmValuePtr; toVal:TXrmValuePtr; 
               converter_data:PXtPointer):TBoolean;cdecl;external;
    type
      PXtOrientation = ^TXtOrientation;
      TXtOrientation = (XtorientHorizontal,XtorientVertical
        );

procedure XmuCvtStringToOrientation(args:PXrmValue; num_args:PCardinal; fromVal:TXrmValuePtr; toVal:TXrmValuePtr);cdecl;external;
function XmuCvtOrientationToString(dpy:PDisplay; args:PXrmValue; num_args:PCardinal; fromVal:TXrmValuePtr; toVal:TXrmValuePtr; 
               converter_data:PXtPointer):TBoolean;cdecl;external;
procedure XmuCvtStringToBitmap(args:PXrmValue; num_args:PCardinal; fromVal:TXrmValuePtr; toVal:TXrmValuePtr);cdecl;external;
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

function XmuCvtStringToShapeStyle(dpy:PDisplay; args:PXrmValue; num_args:PCardinal; fromVal:TXrmValuePtr; toVal:TXrmValuePtr; 
               converter_data:PXtPointer):TBoolean;cdecl;external;
function XmuCvtShapeStyleToString(dpy:PDisplay; args:PXrmValue; num_args:PCardinal; fromVal:TXrmValuePtr; toVal:TXrmValuePtr; 
               converter_data:PXtPointer):TBoolean;cdecl;external;
function XmuReshapeWidget(w:TWidget; shape_style:longint; corner_width:longint; corner_height:longint):TBoolean;cdecl;external;
procedure XmuCvtStringToWidget(args:PXrmValue; num_args:PCardinal; fromVal:TXrmValuePtr; toVal:TXrmValuePtr);cdecl;external;
function XmuNewCvtStringToWidget(display:PDisplay; args:PXrmValue; num_args:PCardinal; fromVal:PXrmValue; toVal:PXrmValue; 
               converter_data:PXtPointer):TBoolean;cdecl;external;
function XmuCvtWidgetToString(dpy:PDisplay; args:PXrmValue; num_args:PCardinal; fromVal:PXrmValue; toVal:PXrmValue; 
               converter_data:PXtPointer):TBoolean;cdecl;external;
{$endif}

(* error 
#endif /* _XMU_STRCONVERT_H_ */

implementation


end.
