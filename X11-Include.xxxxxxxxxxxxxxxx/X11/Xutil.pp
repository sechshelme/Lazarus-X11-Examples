
unit Xutil;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xutil.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xutil.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xutil.pp
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
    Pbyte  = ^byte;
    Pchar  = ^char;
    PDisplay  = ^Display;
    PKeySym  = ^KeySym;
    Plongint  = ^longint;
    PRegion  = ^Region;
    PVisual  = ^Visual;
    Pwchar_t  = ^wchar_t;
    PXClassHint  = ^XClassHint;
    PXComposeStatus  = ^XComposeStatus;
    PXContext  = ^XContext;
    PXICCEncodingStyle  = ^XICCEncodingStyle;
    PXIconSize  = ^XIconSize;
    PXImage  = ^XImage;
    PXKeyEvent  = ^XKeyEvent;
    PXPoint  = ^XPoint;
    PXPointer  = ^XPointer;
    PXRectangle  = ^XRectangle;
    PXRegion  = ^XRegion;
    PXSizeHints  = ^XSizeHints;
    PXStandardColormap  = ^XStandardColormap;
    PXTextProperty  = ^XTextProperty;
    PXVisualInfo  = ^XVisualInfo;
    PXWMHints  = ^XWMHints;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _X11_XUTIL_H_}
{$define _X11_XUTIL_H_}

{$include <X11/Xlib.h>}
{$include <X11/keysym.h>}

{$ifdef __clang__}
{$endif}


const
  NoValue = $0000;  
  XValue = $0001;  
  YValue = $0002;  
  WidthValue = $0004;  
  HeightValue = $0008;  
  AllValues = $000F;  
  XNegative = $0010;  
  YNegative = $0020;  








type
  PXSizeHints = ^TXSizeHints;
  TXSizeHints = record
      flags : longint;
      x : longint;
      y : longint;
      width : longint;
      height : longint;
      min_width : longint;
      min_height : longint;
      max_width : longint;
      max_height : longint;
      width_inc : longint;
      height_inc : longint;
      min_aspect : record
          x : longint;
          y : longint;
        end;
      max_aspect : record
          x : longint;
          y : longint;
        end;
      base_width : longint;
      base_height : longint;
      win_gravity : longint;
    end;




const
  USPosition = 1 shl 0;  

  USSize = 1 shl 1;  

  PPosition = 1 shl 2;  

  PSize = 1 shl 3;  

  PMinSize = 1 shl 4;  

  PMaxSize = 1 shl 5;  

  PResizeInc = 1 shl 6;  

  PAspect = 1 shl 7;  

  PBaseSize = 1 shl 8;  

  PWinGravity = 1 shl 9;  

  PAllHints = ((((PPosition or PSize) or PMinSize) or PMaxSize) or PResizeInc) or PAspect;  









type
  PXWMHints = ^TXWMHints;
  TXWMHints = record
      flags : longint;
      input : TBool;
      initial_state : longint;
      icon_pixmap : TPixmap;
      icon_window : TWindow;
      icon_x : longint;
      icon_y : longint;
      icon_mask : TPixmap;
      window_group : TXID;
    end;


const
  InputHint = 1 shl 0;  
  StateHint = 1 shl 1;  
  IconPixmapHint = 1 shl 2;  
  IconWindowHint = 1 shl 3;  
  IconPositionHint = 1 shl 4;  
  IconMaskHint = 1 shl 5;  
  WindowGroupHint = 1 shl 6;  
  AllHints = (((((InputHint or StateHint) or IconPixmapHint) or IconWindowHint) or IconPositionHint) or IconMaskHint) or WindowGroupHint;  
  XUrgencyHint = 1 shl 8;  


  WithdrawnState = 0;  

  NormalState = 1;  

  IconicState = 3;  


  DontCareState = 0;  

  ZoomState = 2;  

  InactiveState = 4;  






type
  PXTextProperty = ^TXTextProperty;
  TXTextProperty = record
      value : Pbyte;
      encoding : TAtom;
      format : longint;
      nitems : dword;
    end;

const
  XNoMemory = -(1);  
  XLocaleNotSupported = -(2);  
  XConverterNotFound = -(3);  






type
  PXICCEncodingStyle = ^TXICCEncodingStyle;
  TXICCEncodingStyle = (XStringStyle,XCompoundTextStyle,XTextStyle,
    XStdICCTextStyle,XUTF8StringStyle);

  PXIconSize = ^TXIconSize;
  TXIconSize = record
      min_width : longint;
      min_height : longint;
      max_width : longint;
      max_height : longint;
      width_inc : longint;
      height_inc : longint;
    end;

  PXClassHint = ^TXClassHint;
  TXClassHint = record
      res_name : Pchar;
      res_class : Pchar;
    end;
{$ifdef XUTIL_DEFINE_FUNCTIONS}

function XDestroyImage(ximage:PXImage):longint;cdecl;external;
function XGetPixel(ximage:PXImage; x:longint; y:longint):dword;cdecl;external;
function XPutPixel(ximage:PXImage; x:longint; y:longint; pixel:dword):longint;cdecl;external;
function XSubImage(ximage:PXImage; x:longint; y:longint; width:dword; height:dword):PXImage;cdecl;external;
function XAddPixel(ximage:PXImage; value:longint):longint;cdecl;external;
{$else}


function XDestroyImage(ximage : longint) : longint;

function XGetPixel(ximage,x,y : longint) : longint;

function XPutPixel(ximage,x,y,pixel : longint) : longint;

function XSubImage(ximage,x,y,width,height : longint) : longint;

function XAddPixel(ximage,value : longint) : longint;

{$endif}



type
  PXComposeStatus = ^TXComposeStatus;
  TXComposeStatus = record
      compose_ptr : TXPointer;
      chars_matched : longint;
    end;


function IsKeypadKey(keysym : longint) : longint;

function IsPrivateKeypadKey(keysym : longint) : longint;

function IsCursorKey(keysym : longint) : longint;

function IsPFKey(keysym : longint) : longint;

function IsFunctionKey(keysym : longint) : longint;

function IsMiscFunctionKey(keysym : longint) : longint;

{$ifdef XK_XKB_KEYS}
(* error 
   || (((KeySym)(keysym) >= XK_ISO_Lock) && \
in define line 263 *)
{$else}
(* error 
   || ((KeySym)(keysym) == XK_Mode_switch) \
in define line 268 *)
{$endif}

    type
      PRegion = ^TRegion;
      TRegion = PXRegion;


    const
      RectangleOut = 0;      
      RectangleIn = 1;      
      RectanglePart = 2;      

{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}
{$endif}
    type
      PXVisualInfo = ^TXVisualInfo;
      TXVisualInfo = record
          visual : PVisual;
          visualid : TVisualID;
          screen : longint;
          depth : longint;
          c_class : longint;
          _class : longint;
          red_mask : dword;
          green_mask : dword;
          blue_mask : dword;
          colormap_size : longint;
          bits_per_rgb : longint;
        end;

    const
      VisualNoMask = $0;      
      VisualIDMask = $1;      
      VisualScreenMask = $2;      
      VisualDepthMask = $4;      
      VisualClassMask = $8;      
      VisualRedMaskMask = $10;      
      VisualGreenMaskMask = $20;      
      VisualBlueMaskMask = $40;      
      VisualColormapSizeMask = $80;      
      VisualBitsPerRGBMask = $100;      
      VisualAllMask = $1FF;      



    type
      PXStandardColormap = ^TXStandardColormap;
      TXStandardColormap = record
          colormap : TColormap;
          red_max : dword;
          red_mult : dword;
          green_max : dword;
          green_mult : dword;
          blue_max : dword;
          blue_mult : dword;
          base_pixel : dword;
          visualid : TVisualID;
          killid : TXID;
        end;


    function ReleaseByFreeingColormap : TXID;      


    const
      BitmapSuccess = 0;      
      BitmapOpenFailed = 1;      
      BitmapFileInvalid = 2;      
      BitmapNoMemory = 3;      



      XCSUCCESS = 0;      

      XCNOMEM = 1;      

      XCNOENT = 2;      
    type
      PXContext = ^TXContext;
      TXContext = longint;

    function XUniqueContext : TXContext;    

    function XStringToContext(_string : longint) : TXContext;    


(* error 
extern XClassHint *XAllocClassHint (
in declaration at line 368 *)
function XAllocIconSize:PXIconSize;cdecl;external;
function XAllocSizeHints:PXSizeHints;cdecl;external;
function XAllocStandardColormap:PXStandardColormap;cdecl;external;
function XAllocWMHints:PXWMHints;cdecl;external;

function XClipBox(para1:TRegion; para2:PXRectangle):longint;cdecl;external;
function XCreateRegion:TRegion;cdecl;external;
function XDefaultString:Pchar;cdecl;external;

function XDeleteContext(para1:PDisplay; para2:TXID; para3:TXContext):longint;cdecl;external;

function XDestroyRegion(para1:TRegion):longint;cdecl;external;

function XEmptyRegion(para1:TRegion):longint;cdecl;external;

function XEqualRegion(para1:TRegion; para2:TRegion):longint;cdecl;external;

function XFindContext(para1:PDisplay; para2:TXID; para3:TXContext; para4:PXPointer):longint;cdecl;external;

function XGetClassHint(para1:PDisplay; para2:TWindow; para3:PXClassHint):TStatus;cdecl;external;

function XGetIconSizes(para1:PDisplay; para2:TWindow; para3:PPXIconSize; para4:Plongint):TStatus;cdecl;external;

function XGetNormalHints(para1:PDisplay; para2:TWindow; para3:PXSizeHints):TStatus;cdecl;external;

function XGetRGBColormaps(para1:PDisplay; para2:TWindow; para3:PPXStandardColormap; para4:Plongint; para5:TAtom):TStatus;cdecl;external;

function XGetSizeHints(para1:PDisplay; para2:TWindow; para3:PXSizeHints; para4:TAtom):TStatus;cdecl;external;

function XGetStandardColormap(para1:PDisplay; para2:TWindow; para3:PXStandardColormap; para4:TAtom):TStatus;cdecl;external;

function XGetTextProperty(para1:PDisplay; para2:TWindow; para3:PXTextProperty; para4:TAtom):TStatus;cdecl;external;

function XGetVisualInfo(para1:PDisplay; para2:longint; para3:PXVisualInfo; para4:Plongint):PXVisualInfo;cdecl;external;

function XGetWMClientMachine(para1:PDisplay; para2:TWindow; para3:PXTextProperty):TStatus;cdecl;external;

function XGetWMHints(para1:PDisplay; para2:TWindow):PXWMHints;cdecl;external;

function XGetWMIconName(para1:PDisplay; para2:TWindow; para3:PXTextProperty):TStatus;cdecl;external;

function XGetWMName(para1:PDisplay; para2:TWindow; para3:PXTextProperty):TStatus;cdecl;external;

function XGetWMNormalHints(para1:PDisplay; para2:TWindow; para3:PXSizeHints; para4:Plongint):TStatus;cdecl;external;

function XGetWMSizeHints(para1:PDisplay; para2:TWindow; para3:PXSizeHints; para4:Plongint; para5:TAtom):TStatus;cdecl;external;

function XGetZoomHints(para1:PDisplay; para2:TWindow; para3:PXSizeHints):TStatus;cdecl;external;

function XIntersectRegion(para1:TRegion; para2:TRegion; para3:TRegion):longint;cdecl;external;

procedure XConvertCase(para1:TKeySym; para2:PKeySym; para3:PKeySym);cdecl;external;

function XLookupString(para1:PXKeyEvent; para2:Pchar; para3:longint; para4:PKeySym; para5:PXComposeStatus):longint;cdecl;external;

function XMatchVisualInfo(para1:PDisplay; para2:longint; para3:longint; para4:longint; para5:PXVisualInfo):TStatus;cdecl;external;

function XOffsetRegion(para1:TRegion; para2:longint; para3:longint):longint;cdecl;external;

function XPointInRegion(para1:TRegion; para2:longint; para3:longint):TBool;cdecl;external;

function XPolygonRegion(para1:PXPoint; para2:longint; para3:longint):TRegion;cdecl;external;

function XRectInRegion(para1:TRegion; para2:longint; para3:longint; para4:dword; para5:dword):longint;cdecl;external;
(* error 
    _Xconst char*	/* data */

 in declarator_list *)

function XSetClassHint(para1:PDisplay; para2:TWindow; para3:PXClassHint):longint;cdecl;external;

function XSetIconSizes(para1:PDisplay; para2:TWindow; para3:PXIconSize; para4:longint):longint;cdecl;external;

function XSetNormalHints(para1:PDisplay; para2:TWindow; para3:PXSizeHints):longint;cdecl;external;

procedure XSetRGBColormaps(para1:PDisplay; para2:TWindow; para3:PXStandardColormap; para4:longint; para5:TAtom);cdecl;external;

function XSetSizeHints(para1:PDisplay; para2:TWindow; para3:PXSizeHints; para4:TAtom):longint;cdecl;external;
(* error 
    _Xconst char*	/* window_name */,
(* error 
    _Xconst char*	/* icon_name */,
 in declarator_list *)
 in declarator_list *)
(* error 
    char**		/* argv */,
(* error 
    int			/* argc */,
(* error 
    XSizeHints*		/* hints */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

procedure XSetTextProperty(para1:PDisplay; para2:TWindow; para3:PXTextProperty; para4:TAtom);cdecl;external;

procedure XSetWMClientMachine(para1:PDisplay; para2:TWindow; para3:PXTextProperty);cdecl;external;

function XSetWMHints(para1:PDisplay; para2:TWindow; para3:PXWMHints):longint;cdecl;external;

procedure XSetWMIconName(para1:PDisplay; para2:TWindow; para3:PXTextProperty);cdecl;external;

procedure XSetWMName(para1:PDisplay; para2:TWindow; para3:PXTextProperty);cdecl;external;

procedure XSetWMNormalHints(para1:PDisplay; para2:TWindow; para3:PXSizeHints);cdecl;external;

procedure XSetWMProperties(para1:PDisplay; para2:TWindow; para3:PXTextProperty; para4:PXTextProperty; para5:PPchar; 
                para6:longint; para7:PXSizeHints; para8:PXWMHints; para9:PXClassHint);cdecl;external;
(* error 
    _Xconst char*	/* window_name */,
(* error 
    _Xconst char*	/* icon_name */,
(* error 
    char**		/* argv */,
(* error 
    int			/* argc */,
(* error 
    XSizeHints*		/* normal_hints */,
(* error 
    XWMHints*		/* wm_hints */,
(* error 
    XClassHint*		/* class_hints */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst char*	/* window_name */,
(* error 
    _Xconst char*	/* icon_name */,
(* error 
    char**		/* argv */,
(* error 
    int			/* argc */,
(* error 
    XSizeHints*		/* normal_hints */,
(* error 
    XWMHints*		/* wm_hints */,
(* error 
    XClassHint*		/* class_hints */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

procedure XSetWMSizeHints(para1:PDisplay; para2:TWindow; para3:PXSizeHints; para4:TAtom);cdecl;external;

function XSetRegion(para1:PDisplay; para2:TGC; para3:TRegion):longint;cdecl;external;

procedure XSetStandardColormap(para1:PDisplay; para2:TWindow; para3:PXStandardColormap; para4:TAtom);cdecl;external;

function XSetZoomHints(para1:PDisplay; para2:TWindow; para3:PXSizeHints):longint;cdecl;external;

function XShrinkRegion(para1:TRegion; para2:longint; para3:longint):longint;cdecl;external;

function XStringListToTextProperty(para1:PPchar; para2:longint; para3:PXTextProperty):TStatus;cdecl;external;

function XSubtractRegion(para1:TRegion; para2:TRegion; para3:TRegion):longint;cdecl;external;
function XmbTextListToTextProperty(display:PDisplay; list:PPchar; count:longint; style:TXICCEncodingStyle; text_prop_return:PXTextProperty):longint;cdecl;external;
function XwcTextListToTextProperty(display:PDisplay; list:PPwchar_t; count:longint; style:TXICCEncodingStyle; text_prop_return:PXTextProperty):longint;cdecl;external;
function Xutf8TextListToTextProperty(display:PDisplay; list:PPchar; count:longint; style:TXICCEncodingStyle; text_prop_return:PXTextProperty):longint;cdecl;external;
procedure XwcFreeStringList(list:PPwchar_t);cdecl;external;

function XTextPropertyToStringList(para1:PXTextProperty; para2:PPPchar; para3:Plongint):TStatus;cdecl;external;
function XmbTextPropertyToTextList(display:PDisplay; text_prop:PXTextProperty; list_return:PPPchar; count_return:Plongint):longint;cdecl;external;
function XwcTextPropertyToTextList(display:PDisplay; text_prop:PXTextProperty; list_return:PPPwchar_t; count_return:Plongint):longint;cdecl;external;
function Xutf8TextPropertyToTextList(display:PDisplay; text_prop:PXTextProperty; list_return:PPPchar; count_return:Plongint):longint;cdecl;external;

function XUnionRectWithRegion(para1:PXRectangle; para2:TRegion; para3:TRegion):longint;cdecl;external;

function XUnionRegion(para1:TRegion; para2:TRegion; para3:TRegion):longint;cdecl;external;
(* error 
    _Xconst char*	/* user_geometry */,
(* error 
    _Xconst char*	/* default_geometry */,
(* error 
    unsigned int	/* border_width */,
(* error 
    XSizeHints*		/* hints */,
(* error 
    int*		/* x_return */,
(* error 
    int*		/* y_return */,
(* error 
    int*		/* width_return */,
(* error 
    int*		/* height_return */,
(* error 
    int*		/* gravity_return */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

function XXorRegion(para1:TRegion; para2:TRegion; para3:TRegion):longint;cdecl;external;
{$ifdef __clang__}
{$endif}
{$endif}

(* error 
#endif /* _X11_XUTIL_H_ */

implementation

function XDestroyImage(ximage : longint) : longint;
begin
  XDestroyImage:=ximage^.(f.destroy_image)(ximage);
end;

function XGetPixel(ximage,x,y : longint) : longint;
begin
  XGetPixel:=ximage^.(f.get_pixel)(ximagexy);
end;

function XPutPixel(ximage,x,y,pixel : longint) : longint;
begin
  XPutPixel:=ximage^.(f.put_pixel)(ximagexypixel);
end;

function XSubImage(ximage,x,y,width,height : longint) : longint;
begin
  XSubImage:=ximage^.(f.sub_image)(ximagexywidthheight);
end;

function XAddPixel(ximage,value : longint) : longint;
begin
  XAddPixel:=ximage^.(f.add_pixel)(ximagevalue);
end;

function IsKeypadKey(keysym : longint) : longint;
begin
  IsKeypadKey:=((TKeySym(keysym))>=XK_KP_Space) and (@((TKeySym(keysym))<=XK_KP_Equal));
end;

function IsPrivateKeypadKey(keysym : longint) : longint;
begin
  IsPrivateKeypadKey:=((TKeySym(keysym))>=$11000000) and (@((TKeySym(keysym))<=$1100FFFF));
end;

function IsCursorKey(keysym : longint) : longint;
begin
  IsCursorKey:=((TKeySym(keysym))>=XK_Home) and (@((TKeySym(keysym))<XK_Select));
end;

function IsPFKey(keysym : longint) : longint;
begin
  IsPFKey:=((TKeySym(keysym))>=XK_KP_F1) and (@((TKeySym(keysym))<=XK_KP_F4));
end;

function IsFunctionKey(keysym : longint) : longint;
begin
  IsFunctionKey:=((TKeySym(keysym))>=XK_F1) and (@((TKeySym(keysym))<=XK_F35));
end;

function IsMiscFunctionKey(keysym : longint) : longint;
begin
  IsMiscFunctionKey:=((TKeySym(keysym))>=XK_Select) and (@((TKeySym(keysym))<=XK_Break));
end;

    function ReleaseByFreeingColormap : TXID;
      begin
        ReleaseByFreeingColormap:=TXID(1);
      end;

    function XUniqueContext : TXContext;
    begin
      XUniqueContext:=TXContext(XrmUniqueQuark);
    end;

    function XStringToContext(_string : longint) : TXContext;
    begin
      XStringToContext:=TXContext(XrmStringToQuark(_string));
    end;


end.
