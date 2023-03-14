
unit Converters;
interface

{
  Automatically converted by H2Pas 1.0.0 from Converters.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -l
    libXaw.so
    Converters.h
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


{

Copyright 1988, 1998  The Open Group

Permission to use, copy, modify, distribute, and sell this software and its
documentation for any purpose is hereby granted without fee, provided that
the above copyright notice appear in all copies and that both that
copyright notice and this permission notice appear in supporting
documentation.

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
OPEN GROUP BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN
AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Except as contained in this notice, the name of The Open Group shall not be
used in advertising or otherwise to promote the sale, use or other dealings
in this Software without prior written authorization from The Open Group.

 }
{
 * The interfaces described by this header file are for miscellaneous utilities
 * and are not part of the Xlib standard.
  }
{$ifndef _XMU_STRCONVERT_H_}
{$define _XMU_STRCONVERT_H_}
{$include <X11/Intrinsic.h>}
{$include <X11/Xfuncproto.h>}
{ _XFUNCPROTOBEGIN }

procedure XmuCvtFunctionToCallback(args:PXrmValue; num_args:PCardinal; fromVal:TXrmValuePtr; toVal:TXrmValuePtr);cdecl;external;
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
{ justify text to left side of button    }
{ justify text in center of button       }
{ justify text to right side of button   }
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
  TXtOrientation = (XtorientHorizontal,XtorientVertical);

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
{_XFUNCPROTOEND }
{$endif}
{ _XMU_STRCONVERT_H_  }

implementation


end.
