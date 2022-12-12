
unit Xutil;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xutil.h
  The following command line parameters were used:
    /usr/include/X11/Xutil.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xutil.pp
}

    Type
    Pchar  = ^char;
    PDisplay  = ^Display;
    PKeySym  = ^KeySym;
    Plongint  = ^longint;
    Pwchar_t  = ^wchar_t;
    PXClassHint  = ^XClassHint;
    PXComposeStatus  = ^XComposeStatus;
    PXIconSize  = ^XIconSize;
    PXImage  = ^XImage;
    PXKeyEvent  = ^XKeyEvent;
    PXPoint  = ^XPoint;
    PXPointer  = ^XPointer;
    PXRectangle  = ^XRectangle;
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
    XSizeHints = record
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
    XWMHints = record
        flags : longint;
        input : Bool;
        initial_state : longint;
        icon_pixmap : Pixmap;
        icon_window : Window;
        icon_x : longint;
        icon_y : longint;
        icon_mask : Pixmap;
        window_group : XID;
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
    XTextProperty = record
        value : ^byte;
        encoding : Atom;
        format : longint;
        nitems : dword;
      end;

  const
    XNoMemory = -(1);    
    XLocaleNotSupported = -(2);    
    XConverterNotFound = -(3);    







  type
    XICCEncodingStyle = (XStringStyle,XCompoundTextStyle,XTextStyle,
      XStdICCTextStyle,XUTF8StringStyle);

    XIconSize = record
        min_width : longint;
        min_height : longint;
        max_width : longint;
        max_height : longint;
        width_inc : longint;
        height_inc : longint;
      end;

    XClassHint = record
        res_name : ^char;
        res_class : ^char;
      end;
{$ifdef XUTIL_DEFINE_FUNCTIONS}

  function XDestroyImage(ximage:PXImage):longint;cdecl;

  function XGetPixel(ximage:PXImage; x:longint; y:longint):dword;cdecl;

  function XPutPixel(ximage:PXImage; x:longint; y:longint; pixel:dword):longint;cdecl;

  function XSubImage(ximage:PXImage; x:longint; y:longint; width:dword; height:dword):^XImage;cdecl;

  function XAddPixel(ximage:PXImage; value:longint):longint;cdecl;

{$else}


  function XDestroyImage(ximage : longint) : longint;  

  function XGetPixel(ximage,x,y : longint) : longint;  

  function XPutPixel(ximage,x,y,pixel : longint) : longint;  

  function XSubImage(ximage,x,y,width,height : longint) : longint;  

  function XAddPixel(ximage,value : longint) : longint;  

{$endif}




  type
    _XComposeStatus = record
        compose_ptr : XPointer;
        chars_matched : longint;
      end;
    XComposeStatus = _XComposeStatus;


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
      Region = ^_XRegion;


    const
      RectangleOut = 0;      
      RectangleIn = 1;      
      RectanglePart = 2;      

{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}
{$endif}

    type
      XVisualInfo = record
          visual : ^Visual;
          visualid : VisualID;
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
      XStandardColormap = record
          colormap : Colormap;
          red_max : dword;
          red_mult : dword;
          green_max : dword;
          green_mult : dword;
          blue_max : dword;
          blue_mult : dword;
          base_pixel : dword;
          visualid : VisualID;
          killid : XID;
        end;


    function ReleaseByFreeingColormap : XID;      


  const
    BitmapSuccess = 0;    
    BitmapOpenFailed = 1;    
    BitmapFileInvalid = 2;    
    BitmapNoMemory = 3;    



    XCSUCCESS = 0;    

    XCNOMEM = 1;    

    XCNOENT = 2;    

  type
    XContext = longint;

  function XUniqueContext : XContext;  

function XStringToContext(_string : longint) : XContext;


(* error 
extern XClassHint *XAllocClassHint (
in declaration at line 368 *)
    function XAllocIconSize:^XIconSize;cdecl;

    function XAllocSizeHints:^XSizeHints;cdecl;

    function XAllocStandardColormap:^XStandardColormap;cdecl;

    function XAllocWMHints:^XWMHints;cdecl;


    function XClipBox(_para1:Region; _para2:PXRectangle):longint;cdecl;

    function XCreateRegion:Region;cdecl;

    function XDefaultString:^char;cdecl;


    function XDeleteContext(_para1:PDisplay; _para2:XID; _para3:XContext):longint;cdecl;


    function XDestroyRegion(_para1:Region):longint;cdecl;


    function XEmptyRegion(_para1:Region):longint;cdecl;


    function XEqualRegion(_para1:Region; _para2:Region):longint;cdecl;


    function XFindContext(_para1:PDisplay; _para2:XID; _para3:XContext; _para4:PXPointer):longint;cdecl;


    function XGetClassHint(_para1:PDisplay; _para2:Window; _para3:PXClassHint):Status;cdecl;


    function XGetIconSizes(_para1:PDisplay; _para2:Window; _para3:PPXIconSize; _para4:Plongint):Status;cdecl;


    function XGetNormalHints(_para1:PDisplay; _para2:Window; _para3:PXSizeHints):Status;cdecl;


    function XGetRGBColormaps(_para1:PDisplay; _para2:Window; _para3:PPXStandardColormap; _para4:Plongint; _para5:Atom):Status;cdecl;


    function XGetSizeHints(_para1:PDisplay; _para2:Window; _para3:PXSizeHints; _para4:Atom):Status;cdecl;


    function XGetStandardColormap(_para1:PDisplay; _para2:Window; _para3:PXStandardColormap; _para4:Atom):Status;cdecl;


    function XGetTextProperty(_para1:PDisplay; _para2:Window; _para3:PXTextProperty; _para4:Atom):Status;cdecl;


    function XGetVisualInfo(_para1:PDisplay; _para2:longint; _para3:PXVisualInfo; _para4:Plongint):^XVisualInfo;cdecl;


    function XGetWMClientMachine(_para1:PDisplay; _para2:Window; _para3:PXTextProperty):Status;cdecl;


    function XGetWMHints(_para1:PDisplay; _para2:Window):^XWMHints;cdecl;


    function XGetWMIconName(_para1:PDisplay; _para2:Window; _para3:PXTextProperty):Status;cdecl;


    function XGetWMName(_para1:PDisplay; _para2:Window; _para3:PXTextProperty):Status;cdecl;


    function XGetWMNormalHints(_para1:PDisplay; _para2:Window; _para3:PXSizeHints; _para4:Plongint):Status;cdecl;


    function XGetWMSizeHints(_para1:PDisplay; _para2:Window; _para3:PXSizeHints; _para4:Plongint; _para5:Atom):Status;cdecl;


    function XGetZoomHints(_para1:PDisplay; _para2:Window; _para3:PXSizeHints):Status;cdecl;


    function XIntersectRegion(_para1:Region; _para2:Region; _para3:Region):longint;cdecl;


    procedure XConvertCase(_para1:KeySym; _para2:PKeySym; _para3:PKeySym);cdecl;


    function XLookupString(_para1:PXKeyEvent; _para2:Pchar; _para3:longint; _para4:PKeySym; _para5:PXComposeStatus):longint;cdecl;


    function XMatchVisualInfo(_para1:PDisplay; _para2:longint; _para3:longint; _para4:longint; _para5:PXVisualInfo):Status;cdecl;


    function XOffsetRegion(_para1:Region; _para2:longint; _para3:longint):longint;cdecl;


    function XPointInRegion(_para1:Region; _para2:longint; _para3:longint):Bool;cdecl;


    function XPolygonRegion(_para1:PXPoint; _para2:longint; _para3:longint):Region;cdecl;


    function XRectInRegion(_para1:Region; _para2:longint; _para3:longint; _para4:dword; _para5:dword):longint;cdecl;

(* error 
    _Xconst char*	/* data */

 in declarator_list *)

    function XSetClassHint(_para1:PDisplay; _para2:Window; _para3:PXClassHint):longint;cdecl;


    function XSetIconSizes(_para1:PDisplay; _para2:Window; _para3:PXIconSize; _para4:longint):longint;cdecl;


    function XSetNormalHints(_para1:PDisplay; _para2:Window; _para3:PXSizeHints):longint;cdecl;


    procedure XSetRGBColormaps(_para1:PDisplay; _para2:Window; _para3:PXStandardColormap; _para4:longint; _para5:Atom);cdecl;


    function XSetSizeHints(_para1:PDisplay; _para2:Window; _para3:PXSizeHints; _para4:Atom):longint;cdecl;

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

    procedure XSetTextProperty(_para1:PDisplay; _para2:Window; _para3:PXTextProperty; _para4:Atom);cdecl;


    procedure XSetWMClientMachine(_para1:PDisplay; _para2:Window; _para3:PXTextProperty);cdecl;


    function XSetWMHints(_para1:PDisplay; _para2:Window; _para3:PXWMHints):longint;cdecl;


    procedure XSetWMIconName(_para1:PDisplay; _para2:Window; _para3:PXTextProperty);cdecl;


    procedure XSetWMName(_para1:PDisplay; _para2:Window; _para3:PXTextProperty);cdecl;


    procedure XSetWMNormalHints(_para1:PDisplay; _para2:Window; _para3:PXSizeHints);cdecl;


    procedure XSetWMProperties(_para1:PDisplay; _para2:Window; _para3:PXTextProperty; _para4:PXTextProperty; _para5:PPchar; 
                _para6:longint; _para7:PXSizeHints; _para8:PXWMHints; _para9:PXClassHint);cdecl;

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

    procedure XSetWMSizeHints(_para1:PDisplay; _para2:Window; _para3:PXSizeHints; _para4:Atom);cdecl;


    function XSetRegion(_para1:PDisplay; _para2:GC; _para3:Region):longint;cdecl;


    procedure XSetStandardColormap(_para1:PDisplay; _para2:Window; _para3:PXStandardColormap; _para4:Atom);cdecl;


    function XSetZoomHints(_para1:PDisplay; _para2:Window; _para3:PXSizeHints):longint;cdecl;


    function XShrinkRegion(_para1:Region; _para2:longint; _para3:longint):longint;cdecl;


    function XStringListToTextProperty(_para1:PPchar; _para2:longint; _para3:PXTextProperty):Status;cdecl;


    function XSubtractRegion(_para1:Region; _para2:Region; _para3:Region):longint;cdecl;

    function XmbTextListToTextProperty(display:PDisplay; list:PPchar; count:longint; style:XICCEncodingStyle; text_prop_return:PXTextProperty):longint;cdecl;

    function XwcTextListToTextProperty(display:PDisplay; list:PPwchar_t; count:longint; style:XICCEncodingStyle; text_prop_return:PXTextProperty):longint;cdecl;

    function Xutf8TextListToTextProperty(display:PDisplay; list:PPchar; count:longint; style:XICCEncodingStyle; text_prop_return:PXTextProperty):longint;cdecl;

    procedure XwcFreeStringList(list:PPwchar_t);cdecl;


    function XTextPropertyToStringList(_para1:PXTextProperty; _para2:PPPchar; _para3:Plongint):Status;cdecl;

    function XmbTextPropertyToTextList(display:PDisplay; text_prop:PXTextProperty; list_return:PPPchar; count_return:Plongint):longint;cdecl;

    function XwcTextPropertyToTextList(display:PDisplay; text_prop:PXTextProperty; list_return:PPPwchar_t; count_return:Plongint):longint;cdecl;

    function Xutf8TextPropertyToTextList(display:PDisplay; text_prop:PXTextProperty; list_return:PPPchar; count_return:Plongint):longint;cdecl;


    function XUnionRectWithRegion(_para1:PXRectangle; _para2:Region; _para3:Region):longint;cdecl;


    function XUnionRegion(_para1:Region; _para2:Region; _para3:Region):longint;cdecl;

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

    function XXorRegion(_para1:Region; _para2:Region; _para3:Region):longint;cdecl;

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
    IsKeypadKey:=((KeySym(keysym))>=XK_KP_Space) and (@((KeySym(keysym))<=XK_KP_Equal));
  end;

  function IsPrivateKeypadKey(keysym : longint) : longint;
  begin
    IsPrivateKeypadKey:=((KeySym(keysym))>=$11000000) and (@((KeySym(keysym))<=$1100FFFF));
  end;

  function IsCursorKey(keysym : longint) : longint;
  begin
    IsCursorKey:=((KeySym(keysym))>=XK_Home) and (@((KeySym(keysym))<XK_Select));
  end;

  function IsPFKey(keysym : longint) : longint;
  begin
    IsPFKey:=((KeySym(keysym))>=XK_KP_F1) and (@((KeySym(keysym))<=XK_KP_F4));
  end;

  function IsFunctionKey(keysym : longint) : longint;
  begin
    IsFunctionKey:=((KeySym(keysym))>=XK_F1) and (@((KeySym(keysym))<=XK_F35));
  end;

  function IsMiscFunctionKey(keysym : longint) : longint;
  begin
    IsMiscFunctionKey:=((KeySym(keysym))>=XK_Select) and (@((KeySym(keysym))<=XK_Break));
  end;

    function ReleaseByFreeingColormap : XID;
      begin
        ReleaseByFreeingColormap:=XID(1);
      end;

  function XUniqueContext : XContext;
  begin
    XUniqueContext:=XContext(XrmUniqueQuark);
  end;

function XStringToContext(_string : longint) : XContext;
begin
  XStringToContext:=XContext(XrmStringToQuark(_string));
end;


end.
