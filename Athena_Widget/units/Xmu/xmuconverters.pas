
unit XmuConverters;

interface

uses
  xlib,
  Xresource,
  X11Intrinsic;

const
  libXmu = 'libXmu.so';

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

//{$include <X11/Intrinsic.h>}
//{$include <X11/Xfuncproto.h>}

procedure XmuCvtFunctionToCallback(args: PXrmValue; num_args: PCardinal; fromVal: TXrmValuePtr; toVal: TXrmValuePtr); cdecl; external libXmu;

const
  XtNbackingStore = 'backingStore';
  XtCBackingStore = 'BackingStore';
  XtRBackingStore = 'BackingStore';
  XtEnotUseful = 'notUseful';
  XtEwhenMapped = 'whenMapped';
  XtEalways = 'always';
  XtEdefault = 'default';

procedure XmuCvtStringToBackingStore(args: PXrmValue; num_args: PCardinal; fromVal: TXrmValuePtr; toVal: TXrmValuePtr); cdecl; external libXmu;
function XmuCvtBackingStoreToString(dpy: PDisplay; args: PXrmValue; num_args: PCardinal; fromVal: TXrmValuePtr; toVal: TXrmValuePtr; converter_data: PXtPointer): TBoolean; cdecl; external libXmu;
procedure XmuCvtStringToCursor(args: PXrmValue; num_args: PCardinal; fromVal: TXrmValuePtr; toVal: TXrmValuePtr); cdecl; external libXmu;

const
  XtRColorCursor = 'ColorCursor';
  XtNpointerColor = 'pointerColor';
  XtNpointerColorBackground = 'pointerColorBackground';

function XmuCvtStringToColorCursor(dpy: PDisplay; args: PXrmValue; num_args: PCardinal; fromVal: TXrmValuePtr; toVal: TXrmValuePtr; converter_data: PXtPointer): TBoolean; cdecl; external libXmu;

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

procedure XmuCvtStringToGravity(args: PXrmValue; num_args: PCardinal; fromVal: TXrmValuePtr; toVal: TXrmValuePtr); cdecl; external libXmu;
function XmuCvtGravityToString(dpy: PDisplay; args: PXrmValue; num_args: PCardinal; fromVal: TXrmValuePtr; toVal: TXrmValuePtr; converter_data: PXtPointer): TBoolean; cdecl; external libXmu;
{ justify text to left side of button    }
{ justify text in center of button       }
{ justify text to right side of button   }
type
  PXtJustify = ^TXtJustify;
  TXtJustify = (XtJustifyLeft, XtJustifyCenter, XtJustifyRight    );

const
  XtRJustify = 'Justify';

const
  XtEleft = 'left';
  //XtEcenter = 'center';  
  XtEright = 'right';
  XtEtop = 'top';
  XtEbottom = 'bottom';

procedure XmuCvtStringToJustify(args: PXrmValue; num_args: PCardinal; fromVal: TXrmValuePtr; toVal: TXrmValuePtr); cdecl; external libXmu;
function XmuCvtJustifyToString(dpy: PDisplay; args: PXrmValue; num_args: PCardinal; fromVal: TXrmValuePtr; toVal: TXrmValuePtr; converter_data: PXtPointer): TBoolean; cdecl; external libXmu;

const
  XtRLong = 'Long';

procedure XmuCvtStringToLong(args: PXrmValue; num_args: PCardinal; fromVal: TXrmValuePtr; toVal: TXrmValuePtr); cdecl; external libXmu;
function XmuCvtLongToString(dpy: PDisplay; args: PXrmValue; num_args: PCardinal; fromVal: TXrmValuePtr; toVal: TXrmValuePtr; converter_data: PXtPointer): TBoolean; cdecl; external libXmu;

type
  PXtOrientation = ^TXtOrientation;
  TXtOrientation = (XtorientHorizontal, XtorientVertical);

procedure XmuCvtStringToOrientation(args: PXrmValue; num_args: PCardinal; fromVal: TXrmValuePtr; toVal: TXrmValuePtr); cdecl; external libXmu;
function XmuCvtOrientationToString(dpy: PDisplay; args: PXrmValue; num_args: PCardinal; fromVal: TXrmValuePtr; toVal: TXrmValuePtr; converter_data: PXtPointer): TBoolean; cdecl; external libXmu;
procedure XmuCvtStringToBitmap(args: PXrmValue; num_args: PCardinal; fromVal: TXrmValuePtr; toVal: TXrmValuePtr); cdecl; external libXmu;

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

function XmuCvtStringToShapeStyle(dpy: PDisplay; args: PXrmValue; num_args: PCardinal; fromVal: TXrmValuePtr; toVal: TXrmValuePtr; converter_data: PXtPointer): TBoolean; cdecl; external libXmu;
function XmuCvtShapeStyleToString(dpy: PDisplay; args: PXrmValue; num_args: PCardinal; fromVal: TXrmValuePtr; toVal: TXrmValuePtr; converter_data: PXtPointer): TBoolean; cdecl; external libXmu;
function XmuReshapeWidget(w: TWidget; shape_style: longint; corner_width: longint; corner_height: longint): TBoolean; cdecl; external libXmu;
procedure XmuCvtStringToWidget(args: PXrmValue; num_args: PCardinal; fromVal: TXrmValuePtr; toVal: TXrmValuePtr); cdecl; external libXmu;
function XmuNewCvtStringToWidget(display: PDisplay; args: PXrmValue; num_args: PCardinal; fromVal: PXrmValue; toVal: PXrmValue; converter_data: PXtPointer): TBoolean; cdecl; external libXmu;
function XmuCvtWidgetToString(dpy: PDisplay; args: PXrmValue; num_args: PCardinal; fromVal: PXrmValue; toVal: PXrmValue; converter_data: PXtPointer): TBoolean; cdecl; external libXmu;

implementation


end.
