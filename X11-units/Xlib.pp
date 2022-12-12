
unit Xlib;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xlib.h
  The following command line parameters were used:
    /usr/include/X11/Xlib.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xlib.pp
}

    Type
    P_XDisplay  = ^_XDisplay;
    P_XExtData  = ^_XExtData;
    P_XImage  = ^_XImage;
    P_XrmHashBucketRec  = ^_XrmHashBucketRec;
    PAtom  = ^Atom;
    PBool  = ^Bool;
    Pbyte  = ^byte;
    Pchar  = ^char;
    PDisplay  = ^Display;
    Pdword  = ^dword;
    PKeySym  = ^KeySym;
    Plongint  = ^longint;
    PScreen  = ^Screen;
    PStatus  = ^Status;
    PVisual  = ^Visual;
    Pwchar_t  = ^wchar_t;
    PWindow  = ^Window;
    PXArc  = ^XArc;
    PXColor  = ^XColor;
    PXErrorEvent  = ^XErrorEvent;
    PXEvent  = ^XEvent;
    PXExtData  = ^XExtData;
    PXFontStruct  = ^XFontStruct;
    PXGCValues  = ^XGCValues;
    PXGenericEventCookie  = ^XGenericEventCookie;
    PXHostAddress  = ^XHostAddress;
    PXImage  = ^XImage;
    PXKeyboardControl  = ^XKeyboardControl;
    PXKeyboardState  = ^XKeyboardState;
    PXKeyEvent  = ^XKeyEvent;
    PXKeyPressedEvent  = ^XKeyPressedEvent;
    PXMappingEvent  = ^XMappingEvent;
    PXmbTextItem  = ^XmbTextItem;
    PXModifierKeymap  = ^XModifierKeymap;
    PXPoint  = ^XPoint;
    PXPointer  = ^XPointer;
    PXRectangle  = ^XRectangle;
    PXSegment  = ^XSegment;
    PXSetWindowAttributes  = ^XSetWindowAttributes;
    PXTextItem  = ^XTextItem;
    PXTextItem16  = ^XTextItem16;
    PXwcTextItem  = ^XwcTextItem;
    PXWindowAttributes  = ^XWindowAttributes;
    PXWindowChanges  = ^XWindowChanges;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _X11_XLIB_H_}
{$define _X11_XLIB_H_}  

  const
    XlibSpecificationRelease = 6;    
{$include <sys/types.h>}
{$if defined(__SCO__) || defined(__UNIXWARE__)}
{$include <stdint.h>}
{$endif}
{$include <X11/X.h>}

{$include <X11/Xfuncproto.h>}
{$include <X11/Xosdefs.h>}
{$ifndef X_WCHAR}
{$include <stddef.h>}
{$else}
{$ifdef __UNIXOS2__}
{$include <stdlib.h>}
{$else}


  type
    wchar_t = dword;
{$endif}
{$endif}

  function _Xmblen(str:Pchar; len:longint):longint;cdecl;


  const
    X_HAVE_UTF8_STRING = 1;    

{$ifdef __clang__}
{$endif}

  type
    XPointer = ^char;

  const
    Bool = longint;    
    Status = longint;    
    True = 1;    
    False = 0;    
    QueuedAlready = 0;    
    QueuedAfterReading = 1;    
    QueuedAfterFlush = 2;    

  function ConnectionNumber(dpy : longint) : longint;  

  function RootWindow(dpy,scr : longint) : longint;  

  function DefaultScreen(dpy : longint) : longint;  

  function DefaultRootWindow(dpy : longint) : longint;  

  function DefaultVisual(dpy,scr : longint) : longint;  

  function DefaultGC(dpy,scr : longint) : longint;  

  function BlackPixel(dpy,scr : longint) : longint;  

  function WhitePixel(dpy,scr : longint) : longint;  

  function AllPlanes : dword;    

  function QLength(dpy : longint) : longint;  

  function DisplayWidth(dpy,scr : longint) : longint;  

  function DisplayHeight(dpy,scr : longint) : longint;  

  function DisplayWidthMM(dpy,scr : longint) : longint;  

  function DisplayHeightMM(dpy,scr : longint) : longint;  

  function DisplayPlanes(dpy,scr : longint) : longint;  

  function DisplayCells(dpy,scr : longint) : longint;  

  function ScreenCount(dpy : longint) : longint;  

  function ServerVendor(dpy : longint) : longint;  

  function ProtocolVersion(dpy : longint) : longint;  

  function ProtocolRevision(dpy : longint) : longint;  

  function VendorRelease(dpy : longint) : longint;  

  function DisplayString(dpy : longint) : longint;  

  function DefaultDepth(dpy,scr : longint) : longint;  

  function DefaultColormap(dpy,scr : longint) : longint;  

  function BitmapUnit(dpy : longint) : longint;  

  function BitmapBitOrder(dpy : longint) : longint;  

  function BitmapPad(dpy : longint) : longint;  

  function ImageByteOrder(dpy : longint) : longint;  

  function NextRequest(dpy : longint) : longint;  

  function LastKnownRequestProcessed(dpy : longint) : longint;  


  function ScreenOfDisplay(dpy,scr : longint) : longint;  

  function DefaultScreenOfDisplay(dpy : longint) : longint;  

  function DisplayOfScreen(s : longint) : longint;  

  function RootWindowOfScreen(s : longint) : longint;  

  function BlackPixelOfScreen(s : longint) : longint;  

  function WhitePixelOfScreen(s : longint) : longint;  

  function DefaultColormapOfScreen(s : longint) : longint;  

  function DefaultDepthOfScreen(s : longint) : longint;  

  function DefaultGCOfScreen(s : longint) : longint;  

  function DefaultVisualOfScreen(s : longint) : longint;  

  function WidthOfScreen(s : longint) : longint;  

  function HeightOfScreen(s : longint) : longint;  

  function WidthMMOfScreen(s : longint) : longint;  

  function HeightMMOfScreen(s : longint) : longint;  

  function PlanesOfScreen(s : longint) : longint;  

  function CellsOfScreen(s : longint) : longint;  

  function MinCmapsOfScreen(s : longint) : longint;  

  function MaxCmapsOfScreen(s : longint) : longint;  

  function DoesSaveUnders(s : longint) : longint;  

  function DoesBackingStore(s : longint) : longint;  

  function EventMaskOfScreen(s : longint) : longint;  







  type
    _XExtData = record
        number : longint;
        next : ^_XExtData;
        free_private : function (extension:P_XExtData):longint;cdecl;
        private_data : XPointer;
      end;
    XExtData = _XExtData;







    XExtCodes = record
        extension : longint;
        major_opcode : longint;
        first_event : longint;
        first_error : longint;
      end;


    XPixmapFormatValues = record
        depth : longint;
        bits_per_pixel : longint;
        scanline_pad : longint;
      end;






















    XGCValues = record
        _function : longint;
        plane_mask : dword;
        foreground : dword;
        background : dword;
        line_width : longint;
        line_style : longint;
        cap_style : longint;
        join_style : longint;
        fill_style : longint;
        fill_rule : longint;
        arc_mode : longint;
        tile : Pixmap;
        stipple : Pixmap;
        ts_x_origin : longint;
        ts_y_origin : longint;
        font : Font;
        subwindow_mode : longint;
        graphics_exposures : Bool;
        clip_x_origin : longint;
        clip_y_origin : longint;
        clip_mask : Pixmap;
        dash_offset : longint;
        dashes : char;
      end;

{$ifdef XLIB_ILLEGAL_ACCESS}



{$endif}

  type
    _XGC = ^record
        ext_data : ^XExtData;
        gid : GContext;
      end;
    GC = ^_XGC;



{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}

{$endif}




  type
    Visual = record
        ext_data : ^XExtData;
        visualid : VisualID;
        c_class : longint;
        _class : longint;
        red_mask : dword;
        green_mask : dword;
        blue_mask : dword;
        bits_per_rgb : longint;
        map_entries : longint;
      end;





    Depth = record
        depth : longint;
        nvisuals : longint;
        visuals : ^Visual;
      end;

    _XDisplay = record
        {undefined structure}
      end;


















    Screen = record
        ext_data : ^XExtData;
        display : ^_XDisplay;
        root : Window;
        width : longint;
        height : longint;
        mwidth : longint;
        mheight : longint;
        ndepths : longint;
        depths : ^Depth;
        root_depth : longint;
        root_visual : ^Visual;
        default_gc : GC;
        cmap : Colormap;
        white_pixel : dword;
        black_pixel : dword;
        max_maps : longint;
        min_maps : longint;
        backing_store : longint;
        save_unders : Bool;
        root_input_mask : longint;
      end;






    ScreenFormat = record
        ext_data : ^XExtData;
        depth : longint;
        bits_per_pixel : longint;
        scanline_pad : longint;
      end;

















    XSetWindowAttributes = record
        background_pixmap : Pixmap;
        background_pixel : dword;
        border_pixmap : Pixmap;
        border_pixel : dword;
        bit_gravity : longint;
        win_gravity : longint;
        backing_store : longint;
        backing_planes : dword;
        backing_pixel : dword;
        save_under : Bool;
        event_mask : longint;
        do_not_propagate_mask : longint;
        override_redirect : Bool;
        colormap : Colormap;
        cursor : Cursor;
      end;






{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}

{$endif}















  type
    XWindowAttributes = record
        x : longint;
        y : longint;
        width : longint;
        height : longint;
        border_width : longint;
        depth : longint;
        visual : ^Visual;
        root : Window;
        c_class : longint;
        _class : longint;
        bit_gravity : longint;
        win_gravity : longint;
        backing_store : longint;
        backing_planes : dword;
        backing_pixel : dword;
        save_under : Bool;
        colormap : Colormap;
        map_installed : Bool;
        map_state : longint;
        all_event_masks : longint;
        your_event_mask : longint;
        do_not_propagate_mask : longint;
        override_redirect : Bool;
        screen : ^Screen;
      end;





    XHostAddress = record
        family : longint;
        length : longint;
        address : ^char;
      end;






    XServerInterpretedAddress = record
        typelength : longint;
        valuelength : longint;
        _type : ^char;
        value : ^char;
      end;
















    _XImage = record
        width : longint;
        height : longint;
        xoffset : longint;
        format : longint;
        data : ^char;
        byte_order : longint;
        bitmap_unit : longint;
        bitmap_bit_order : longint;
        bitmap_pad : longint;
        depth : longint;
        bytes_per_line : longint;
        bits_per_pixel : longint;
        red_mask : dword;
        green_mask : dword;
        blue_mask : dword;
        obdata : XPointer;
        f : record
            create_image : function (_para1:P_XDisplay; _para2:PVisual; _para3:dword; _para4:longint; _para5:longint; 
                         _para6:Pchar; _para7:dword; _para8:dword; _para9:longint; _para10:longint):P_XImage;cdecl;
            destroy_image : function (_para1:P_XImage):longint;cdecl;
            get_pixel : function (_para1:P_XImage; _para2:longint; _para3:longint):dword;cdecl;
            put_pixel : function (_para1:P_XImage; _para2:longint; _para3:longint; _para4:dword):longint;cdecl;
            sub_image : function (_para1:P_XImage; _para2:longint; _para3:longint; _para4:dword; _para5:dword):P_XImage;cdecl;
            add_pixel : function (_para1:P_XImage; _para2:longint):longint;cdecl;
          end;
      end;
    XImage = _XImage;


    XWindowChanges = record
        x : longint;
        y : longint;
        width : longint;
        height : longint;
        border_width : longint;
        sibling : Window;
        stack_mode : longint;
      end;



    XColor = record
        pixel : dword;
        red : word;
        green : word;
        blue : word;
        flags : char;
        pad : char;
      end;


    XSegment = record
        x1 : smallint;
        y1 : smallint;
        x2 : smallint;
        y2 : smallint;
      end;

    XPoint = record
        x : smallint;
        y : smallint;
      end;

    XRectangle = record
        x : smallint;
        y : smallint;
        width : word;
        height : word;
      end;

    XArc = record
        x : smallint;
        y : smallint;
        width : word;
        height : word;
        angle1 : smallint;
        angle2 : smallint;
      end;



    XKeyboardControl = record
        key_click_percent : longint;
        bell_percent : longint;
        bell_pitch : longint;
        bell_duration : longint;
        led : longint;
        led_mode : longint;
        key : longint;
        auto_repeat_mode : longint;
      end;


    XKeyboardState = record
        key_click_percent : longint;
        bell_percent : longint;
        bell_pitch : dword;
        bell_duration : dword;
        led_mask : dword;
        global_auto_repeat : longint;
        auto_repeats : array[0..31] of char;
      end;


    XTimeCoord = record
        time : Time;
        x : smallint;
        y : smallint;
      end;




    XModifierKeymap = record
        max_keypermod : longint;
        modifiermap : ^KeyCode;
      end;

{$ifndef XLIB_ILLEGAL_ACCESS}

  type
    _XDisplay = Display;
{$endif}

  type
    _XPrivate = record
        {undefined structure}
      end;


    _XrmHashBucketRec = record
        {undefined structure}
      end;

{$ifdef XLIB_ILLEGAL_ACCESS}
{$endif}


























{$ifdef XLIB_ILLEGAL_ACCESS}
{$endif}

  type
    _XDisplay = record
        ext_data : ^XExtData;
        private1 : ^_XPrivate;
        fd : longint;
        private2 : longint;
        proto_major_version : longint;
        proto_minor_version : longint;
        vendor : ^char;
        private3 : XID;
        private4 : XID;
        private5 : XID;
        private6 : longint;
        resource_alloc : function (_para1:P_XDisplay):XID;cdecl;
        byte_order : longint;
        bitmap_unit : longint;
        bitmap_pad : longint;
        bitmap_bit_order : longint;
        nformats : longint;
        pixmap_format : ^ScreenFormat;
        private8 : longint;
        release : longint;
        private9 : ^_XPrivate;
        private10 : ^_XPrivate;
        qlen : longint;
        last_request_read : dword;
        request : dword;
        private11 : XPointer;
        private12 : XPointer;
        private13 : XPointer;
        private14 : XPointer;
        max_request_size : dword;
        db : ^_XrmHashBucketRec;
        private15 : function (_para1:P_XDisplay):longint;cdecl;
        display_name : ^char;
        default_screen : longint;
        nscreens : longint;
        screens : ^Screen;
        motion_buffer : dword;
        private16 : dword;
        min_keycode : longint;
        max_keycode : longint;
        private17 : XPointer;
        private18 : XPointer;
        private19 : longint;
        xdefaults : ^char;
      end;
    Display = _XDisplay;
    _XPrivDisplay = ^_XDisplay;
{$undef _XEVENT_}
{$ifndef _XEVENT_}















  type
    XKeyEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        window : Window;
        root : Window;
        subwindow : Window;
        time : Time;
        x : longint;
        y : longint;
        x_root : longint;
        y_root : longint;
        state : dword;
        keycode : dword;
        same_screen : Bool;
      end;

    XKeyPressedEvent = XKeyEvent;

    XKeyReleasedEvent = XKeyEvent;














    XButtonEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        window : Window;
        root : Window;
        subwindow : Window;
        time : Time;
        x : longint;
        y : longint;
        x_root : longint;
        y_root : longint;
        state : dword;
        button : dword;
        same_screen : Bool;
      end;

    XButtonPressedEvent = XButtonEvent;

    XButtonReleasedEvent = XButtonEvent;














    XMotionEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        window : Window;
        root : Window;
        subwindow : Window;
        time : Time;
        x : longint;
        y : longint;
        x_root : longint;
        y_root : longint;
        state : dword;
        is_hint : char;
        same_screen : Bool;
      end;

    XPointerMovedEvent = XMotionEvent;
















    XCrossingEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        window : Window;
        root : Window;
        subwindow : Window;
        time : Time;
        x : longint;
        y : longint;
        x_root : longint;
        y_root : longint;
        mode : longint;
        detail : longint;
        same_screen : Bool;
        focus : Bool;
        state : dword;
      end;

    XEnterWindowEvent = XCrossingEvent;

    XLeaveWindowEvent = XCrossingEvent;








    XFocusChangeEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        window : Window;
        mode : longint;
        detail : longint;
      end;

    XFocusInEvent = XFocusChangeEvent;

    XFocusOutEvent = XFocusChangeEvent;





    XKeymapEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        window : Window;
        key_vector : array[0..31] of char;
      end;





    XExposeEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        window : Window;
        x : longint;
        y : longint;
        width : longint;
        height : longint;
        count : longint;
      end;







    XGraphicsExposeEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        drawable : Drawable;
        x : longint;
        y : longint;
        width : longint;
        height : longint;
        count : longint;
        major_code : longint;
        minor_code : longint;
      end;






    XNoExposeEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        drawable : Drawable;
        major_code : longint;
        minor_code : longint;
      end;





    XVisibilityEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        window : Window;
        state : longint;
      end;










    XCreateWindowEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        parent : Window;
        window : Window;
        x : longint;
        y : longint;
        width : longint;
        height : longint;
        border_width : longint;
        override_redirect : Bool;
      end;




    XDestroyWindowEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        event : Window;
        window : Window;
      end;




    XUnmapEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        event : Window;
        window : Window;
        from_configure : Bool;
      end;





    XMapEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        event : Window;
        window : Window;
        override_redirect : Bool;
      end;




    XMapRequestEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        parent : Window;
        window : Window;
      end;




    XReparentEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        event : Window;
        window : Window;
        parent : Window;
        x : longint;
        y : longint;
        override_redirect : Bool;
      end;




    XConfigureEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        event : Window;
        window : Window;
        x : longint;
        y : longint;
        width : longint;
        height : longint;
        border_width : longint;
        above : Window;
        override_redirect : Bool;
      end;




    XGravityEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        event : Window;
        window : Window;
        x : longint;
        y : longint;
      end;




    XResizeRequestEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        window : Window;
        width : longint;
        height : longint;
      end;





    XConfigureRequestEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        parent : Window;
        window : Window;
        x : longint;
        y : longint;
        width : longint;
        height : longint;
        border_width : longint;
        above : Window;
        detail : longint;
        value_mask : dword;
      end;





    XCirculateEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        event : Window;
        window : Window;
        place : longint;
      end;





    XCirculateRequestEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        parent : Window;
        window : Window;
        place : longint;
      end;





    XPropertyEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        window : Window;
        atom : Atom;
        time : Time;
        state : longint;
      end;




    XSelectionClearEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        window : Window;
        selection : Atom;
        time : Time;
      end;




    XSelectionRequestEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        owner : Window;
        requestor : Window;
        selection : Atom;
        target : Atom;
        _property : Atom;
        time : Time;
      end;





    XSelectionEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        requestor : Window;
        selection : Atom;
        target : Atom;
        _property : Atom;
        time : Time;
      end;




{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}
{$endif}


  type
    XColormapEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        window : Window;
        colormap : Colormap;
        c_new : Bool;
        _new : Bool;
        state : longint;
      end;




    XClientMessageEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        window : Window;
        message_type : Atom;
        format : longint;
        data : record
            case longint of
              0 : ( b : array[0..19] of char );
              1 : ( s : array[0..9] of smallint );
              2 : ( l : array[0..4] of longint );
            end;
      end;








    XMappingEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        window : Window;
        request : longint;
        first_keycode : longint;
        count : longint;
      end;







    XErrorEvent = record
        _type : longint;
        display : ^Display;
        resourceid : XID;
        serial : dword;
        error_code : byte;
        request_code : byte;
        minor_code : byte;
      end;





    XAnyEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        window : Window;
      end;








    XGenericEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        extension : longint;
        evtype : longint;
      end;







    XGenericEventCookie = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        extension : longint;
        evtype : longint;
        cookie : dword;
        data : pointer;
      end;



    _XEvent = record
        case longint of
          0 : ( _type : longint );
          1 : ( xany : XAnyEvent );
          2 : ( xkey : XKeyEvent );
          3 : ( xbutton : XButtonEvent );
          4 : ( xmotion : XMotionEvent );
          5 : ( xcrossing : XCrossingEvent );
          6 : ( xfocus : XFocusChangeEvent );
          7 : ( xexpose : XExposeEvent );
          8 : ( xgraphicsexpose : XGraphicsExposeEvent );
          9 : ( xnoexpose : XNoExposeEvent );
          10 : ( xvisibility : XVisibilityEvent );
          11 : ( xcreatewindow : XCreateWindowEvent );
          12 : ( xdestroywindow : XDestroyWindowEvent );
          13 : ( xunmap : XUnmapEvent );
          14 : ( xmap : XMapEvent );
          15 : ( xmaprequest : XMapRequestEvent );
          16 : ( xreparent : XReparentEvent );
          17 : ( xconfigure : XConfigureEvent );
          18 : ( xgravity : XGravityEvent );
          19 : ( xresizerequest : XResizeRequestEvent );
          20 : ( xconfigurerequest : XConfigureRequestEvent );
          21 : ( xcirculate : XCirculateEvent );
          22 : ( xcirculaterequest : XCirculateRequestEvent );
          23 : ( xproperty : XPropertyEvent );
          24 : ( xselectionclear : XSelectionClearEvent );
          25 : ( xselectionrequest : XSelectionRequestEvent );
          26 : ( xselection : XSelectionEvent );
          27 : ( xcolormap : XColormapEvent );
          28 : ( xclient : XClientMessageEvent );
          29 : ( xmapping : XMappingEvent );
          30 : ( xerror : XErrorEvent );
          31 : ( xkeymap : XKeymapEvent );
          32 : ( xgeneric : XGenericEvent );
          33 : ( xcookie : XGenericEventCookie );
          34 : ( pad : array[0..23] of longint );
        end;
    XEvent = _XEvent;
{$endif}

  function XAllocID(dpy : longint) : longint;  









  type
    XCharStruct = record
        lbearing : smallint;
        rbearing : smallint;
        width : smallint;
        ascent : smallint;
        descent : smallint;
        attributes : word;
      end;


    XFontProp = record
        name : Atom;
        card32 : dword;
      end;

















    XFontStruct = record
        ext_data : ^XExtData;
        fid : Font;
        direction : dword;
        min_char_or_byte2 : dword;
        max_char_or_byte2 : dword;
        min_byte1 : dword;
        max_byte1 : dword;
        all_chars_exist : Bool;
        default_char : dword;
        n_properties : longint;
        properties : ^XFontProp;
        min_bounds : XCharStruct;
        max_bounds : XCharStruct;
        per_char : ^XCharStruct;
        ascent : longint;
        descent : longint;
      end;






    XTextItem = record
        chars : ^char;
        nchars : longint;
        delta : longint;
        font : Font;
      end;


    XChar2b = record
        byte1 : byte;
        byte2 : byte;
      end;





    XTextItem16 = record
        chars : ^XChar2b;
        nchars : longint;
        delta : longint;
        font : Font;
      end;

    XEDataObject = record
        case longint of
          0 : ( display : ^Display );
          1 : ( gc : GC );
          2 : ( visual : ^Visual );
          3 : ( screen : ^Screen );
          4 : ( pixmap_format : ^ScreenFormat );
          5 : ( font : ^XFontStruct );
        end;

    XFontSetExtents = record
        max_ink_extent : XRectangle;
        max_logical_extent : XRectangle;
      end;


    XOM = ^_XOM;

    XOC = ^_XOC;
    XFontSet = ^XOC;

    XmbTextItem = record
        chars : ^char;
        nchars : longint;
        delta : longint;
        font_set : XFontSet;
      end;

    XwcTextItem = record
        chars : ^wchar_t;
        nchars : longint;
        delta : longint;
        font_set : XFontSet;
      end;

  const
    XNRequiredCharSet = 'requiredCharSet';    
    XNQueryOrientation = 'queryOrientation';    
    XNBaseFontName = 'baseFontName';    
    XNOMAutomatic = 'omAutomatic';    
    XNMissingCharSet = 'missingCharSet';    
    XNDefaultString = 'defaultString';    
    XNOrientation = 'orientation';    
    XNDirectionalDependentDrawing = 'directionalDependentDrawing';    
    XNContextualDrawing = 'contextualDrawing';    
    XNFontInfo = 'fontInfo';    

  type
    XOMCharSetList = record
        charset_count : longint;
        charset_list : ^^char;
      end;

    XOrientation = (XOMOrientation_LTR_TTB,XOMOrientation_RTL_TTB,
      XOMOrientation_TTB_LTR,XOMOrientation_TTB_RTL,
      XOMOrientation_Context);


    XOMOrientation = record
        num_orientation : longint;
        orientation : ^XOrientation;
      end;

    XOMFontInfo = record
        num_font : longint;
        font_struct_list : ^^XFontStruct;
        font_name_list : ^^char;
      end;

    XIM = ^_XIM;

    XIC = ^_XIC;

    XIMProc = procedure (_para1:XIM; _para2:XPointer; _para3:XPointer);cdecl;

    XICProc = function (_para1:XIC; _para2:XPointer; _para3:XPointer):Bool;cdecl;

    XIDProc = procedure (_para1:PDisplay; _para2:XPointer; _para3:XPointer);cdecl;

    XIMStyle = dword;

    XIMStyles = record
        count_styles : word;
        supported_styles : ^XIMStyle;
      end;

  const
    XIMPreeditArea = $0001;    
    XIMPreeditCallbacks = $0002;    
    XIMPreeditPosition = $0004;    
    XIMPreeditNothing = $0008;    
    XIMPreeditNone = $0010;    
    XIMStatusArea = $0100;    
    XIMStatusCallbacks = $0200;    
    XIMStatusNothing = $0400;    
    XIMStatusNone = $0800;    
    XNVaNestedList = 'XNVaNestedList';    
    XNQueryInputStyle = 'queryInputStyle';    
    XNClientWindow = 'clientWindow';    
    XNInputStyle = 'inputStyle';    
    XNFocusWindow = 'focusWindow';    
    XNResourceName = 'resourceName';    
    XNResourceClass = 'resourceClass';    
    XNGeometryCallback = 'geometryCallback';    
    XNDestroyCallback = 'destroyCallback';    
    XNFilterEvents = 'filterEvents';    
    XNPreeditStartCallback = 'preeditStartCallback';    
    XNPreeditDoneCallback = 'preeditDoneCallback';    
    XNPreeditDrawCallback = 'preeditDrawCallback';    
    XNPreeditCaretCallback = 'preeditCaretCallback';    
    XNPreeditStateNotifyCallback = 'preeditStateNotifyCallback';    
    XNPreeditAttributes = 'preeditAttributes';    
    XNStatusStartCallback = 'statusStartCallback';    
    XNStatusDoneCallback = 'statusDoneCallback';    
    XNStatusDrawCallback = 'statusDrawCallback';    
    XNStatusAttributes = 'statusAttributes';    
    XNArea = 'area';    
    XNAreaNeeded = 'areaNeeded';    
    XNSpotLocation = 'spotLocation';    
    XNColormap = 'colorMap';    
    XNStdColormap = 'stdColorMap';    
    XNForeground = 'foreground';    
    XNBackground = 'background';    
    XNBackgroundPixmap = 'backgroundPixmap';    
    XNFontSet = 'fontSet';    
    XNLineSpace = 'lineSpace';    
    XNCursor = 'cursor';    
    XNQueryIMValuesList = 'queryIMValuesList';    
    XNQueryICValuesList = 'queryICValuesList';    
    XNVisiblePosition = 'visiblePosition';    
    XNR6PreeditCallback = 'r6PreeditCallback';    
    XNStringConversionCallback = 'stringConversionCallback';    
    XNStringConversion = 'stringConversion';    
    XNResetState = 'resetState';    
    XNHotKey = 'hotKey';    
    XNHotKeyState = 'hotKeyState';    
    XNPreeditState = 'preeditState';    
    XNSeparatorofNestedList = 'separatorofNestedList';    
    XBufferOverflow = -(1);    
    XLookupNone = 1;    
    XLookupChars = 2;    
    XLookupKeySym = 3;    
    XLookupBoth = 4;    

  type
    XVaNestedList = pointer;

    XIMCallback = record
        client_data : XPointer;
        callback : XIMProc;
      end;

    XICCallback = record
        client_data : XPointer;
        callback : XICProc;
      end;

    XIMFeedback = dword;

  const
    XIMReverse = 1;    
    XIMUnderline = 1 shl 1;    
    XIMHighlight = 1 shl 2;    
    XIMPrimary = 1 shl 5;    
    XIMSecondary = 1 shl 6;    
    XIMTertiary = 1 shl 7;    
    XIMVisibleToForward = 1 shl 8;    
    XIMVisibleToBackword = 1 shl 9;    
    XIMVisibleToCenter = 1 shl 10;    

  type
    _XIMText = record
        length : word;
        feedback : ^XIMFeedback;
        encoding_is_wchar : Bool;
        _string : record
            case longint of
              0 : ( multi_byte : ^char );
              1 : ( wide_char : ^wchar_t );
            end;
      end;
    XIMText = _XIMText;

    XIMPreeditState = dword;

  const
    XIMPreeditUnKnown = 0;    
    XIMPreeditEnable = 1;    
    XIMPreeditDisable = 1 shl 1;    

  type
    _XIMPreeditStateNotifyCallbackStruct = record
        state : XIMPreeditState;
      end;
    XIMPreeditStateNotifyCallbackStruct = _XIMPreeditStateNotifyCallbackStruct;

    XIMResetState = dword;

  const
    XIMInitialState = 1;    
    XIMPreserveState = 1 shl 1;    

  type
    XIMStringConversionFeedback = dword;

  const
    XIMStringConversionLeftEdge = $00000001;    
    XIMStringConversionRightEdge = $00000002;    
    XIMStringConversionTopEdge = $00000004;    
    XIMStringConversionBottomEdge = $00000008;    
    XIMStringConversionConcealed = $00000010;    
    XIMStringConversionWrapped = $00000020;    

  type
    _XIMStringConversionText = record
        length : word;
        feedback : ^XIMStringConversionFeedback;
        encoding_is_wchar : Bool;
        _string : record
            case longint of
              0 : ( mbs : ^char );
              1 : ( wcs : ^wchar_t );
            end;
      end;
    XIMStringConversionText = _XIMStringConversionText;

    XIMStringConversionPosition = word;

    XIMStringConversionType = word;

  const
    XIMStringConversionBuffer = $0001;    
    XIMStringConversionLine = $0002;    
    XIMStringConversionWord = $0003;    
    XIMStringConversionChar = $0004;    

  type
    XIMStringConversionOperation = word;

  const
    XIMStringConversionSubstitution = $0001;    
    XIMStringConversionRetrieval = $0002;    

  type
    XIMCaretDirection = (XIMForwardChar,XIMBackwardChar,XIMForwardWord,
      XIMBackwardWord,XIMCaretUp,XIMCaretDown,
      XIMNextLine,XIMPreviousLine,XIMLineStart,
      XIMLineEnd,XIMAbsolutePosition,XIMDontChange
      );

    _XIMStringConversionCallbackStruct = record
        position : XIMStringConversionPosition;
        direction : XIMCaretDirection;
        operation : XIMStringConversionOperation;
        factor : word;
        text : ^XIMStringConversionText;
      end;
    XIMStringConversionCallbackStruct = _XIMStringConversionCallbackStruct;




    _XIMPreeditDrawCallbackStruct = record
        caret : longint;
        chg_first : longint;
        chg_length : longint;
        text : ^XIMText;
      end;
    XIMPreeditDrawCallbackStruct = _XIMPreeditDrawCallbackStruct;




    XIMCaretStyle = (XIMIsInvisible,XIMIsPrimary,XIMIsSecondary
      );




    _XIMPreeditCaretCallbackStruct = record
        position : longint;
        direction : XIMCaretDirection;
        style : XIMCaretStyle;
      end;
    XIMPreeditCaretCallbackStruct = _XIMPreeditCaretCallbackStruct;

    XIMStatusDataType = (XIMTextType,XIMBitmapType);

    _XIMStatusDrawCallbackStruct = record
        _type : XIMStatusDataType;
        data : record
            case longint of
              0 : ( text : ^XIMText );
              1 : ( bitmap : Pixmap );
            end;
      end;
    XIMStatusDrawCallbackStruct = _XIMStatusDrawCallbackStruct;

    _XIMHotKeyTrigger = record
        keysym : KeySym;
        modifier : longint;
        modifier_mask : longint;
      end;
    XIMHotKeyTrigger = _XIMHotKeyTrigger;

    _XIMHotKeyTriggers = record
        num_hot_key : longint;
        key : ^XIMHotKeyTrigger;
      end;
    XIMHotKeyTriggers = _XIMHotKeyTriggers;

    XIMHotKeyState = dword;

  const
    XIMHotKeyStateON = $0001;    
    XIMHotKeyStateOFF = $0002;    

  type
    XIMValuesList = record
        count_values : word;
        supported_values : ^^char;
      end;
{$if defined(WIN32) && !defined(_XLIBINT_)}
(* error 
#define _Xdebug (*_Xdebug_p)
in define line 1389 *)
{$endif}

      var
        _Xdebug : longint;cvar;external;
(* error 
    _Xconst char*	/* name */

 in declarator_list *)


    function XQueryFont(_para1:PDisplay; _para2:XID):^XFontStruct;cdecl;


    function XGetMotionEvents(_para1:PDisplay; _para2:Window; _para3:Time; _para4:Time; _para5:Plongint):^XTimeCoord;cdecl;

{$if NeedWidePrototypes}
{$else}
{$endif}


    function XDeleteModifiermapEntry(_para1:PXModifierKeymap; _para2:dword; _para3:KeyCode; _para4:longint):^XModifierKeymap;cdecl;


    function XGetModifierMapping(_para1:PDisplay):^XModifierKeymap;cdecl;

{$if NeedWidePrototypes}
{$else}
{$endif}


    function XInsertModifiermapEntry(_para1:PXModifierKeymap; _para2:dword; _para3:KeyCode; _para4:longint):^XModifierKeymap;cdecl;


    function XNewModifiermap(_para1:longint):^XModifierKeymap;cdecl;


    function XCreateImage(_para1:PDisplay; _para2:PVisual; _para3:dword; _para4:longint; _para5:longint; 
               _para6:Pchar; _para7:dword; _para8:dword; _para9:longint; _para10:longint):^XImage;cdecl;


    function XInitImage(_para1:PXImage):Status;cdecl;


    function XGetImage(_para1:PDisplay; _para2:Drawable; _para3:longint; _para4:longint; _para5:dword; 
               _para6:dword; _para7:dword; _para8:longint):^XImage;cdecl;


    function XGetSubImage(_para1:PDisplay; _para2:Drawable; _para3:longint; _para4:longint; _para5:dword; 
               _para6:dword; _para7:dword; _para8:longint; _para9:PXImage; _para10:longint; 
               _para11:longint):^XImage;cdecl;


(* error 
    _Xconst char*	/* display_name */

 in declarator_list *)
    procedure XrmInitialize;cdecl;


    function XFetchBytes(_para1:PDisplay; _para2:Plongint):^char;cdecl;


    function XFetchBuffer(_para1:PDisplay; _para2:Plongint; _para3:longint):^char;cdecl;


    function XGetAtomName(_para1:PDisplay; _para2:Atom):^char;cdecl;


    function XGetAtomNames(_para1:PDisplay; _para2:PAtom; _para3:longint; _para4:PPchar):Status;cdecl;

(* error 
    _Xconst char*	/* program */,
(* error 
    _Xconst char*	/* option */

 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst char*	/* string */

 in declarator_list *)

    function XKeysymToString(_para1:KeySym):^char;cdecl;



    function XSynchronize(_para1:PDisplay; _para2:Bool):function (_para1:PDisplay):longint;cdecl;




    function XSetAfterFunction(_para1:PDisplay; _para2:function (_para1:PDisplay):longint):function (_para1:PDisplay):longint;cdecl;

(* error 
    _Xconst char*	/* atom_name */,

(* error 
);
 in declarator_list *)
 in declarator_list *)

    function XInternAtoms(_para1:PDisplay; _para2:PPchar; _para3:longint; _para4:Bool; _para5:PAtom):Status;cdecl;


    function XCopyColormapAndFree(_para1:PDisplay; _para2:Colormap):Colormap;cdecl;


    function XCreateColormap(_para1:PDisplay; _para2:Window; _para3:PVisual; _para4:longint):Colormap;cdecl;


    function XCreatePixmapCursor(_para1:PDisplay; _para2:Pixmap; _para3:Pixmap; _para4:PXColor; _para5:PXColor; 
               _para6:dword; _para7:dword):Cursor;cdecl;

(* error 
    XColor _Xconst *	/* foreground_color */,
(* error 
    XColor _Xconst *	/* background_color */

 in declarator_list *)
 in declarator_list *)

    function XCreateFontCursor(_para1:PDisplay; _para2:dword):Cursor;cdecl;

(* error 
    _Xconst char*	/* name */

 in declarator_list *)

    function XCreateGC(_para1:PDisplay; _para2:Drawable; _para3:dword; _para4:PXGCValues):GC;cdecl;


    function XGContextFromGC(_para1:GC):GContext;cdecl;


    procedure XFlushGC(_para1:PDisplay; _para2:GC);cdecl;


    function XCreatePixmap(_para1:PDisplay; _para2:Drawable; _para3:dword; _para4:dword; _para5:dword):Pixmap;cdecl;

(* error 
    _Xconst char*	/* data */,
(* error 
    unsigned int	/* width */,
(* error 
    unsigned int	/* height */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

    function XCreatePixmapFromBitmapData(_para1:PDisplay; _para2:Drawable; _para3:Pchar; _para4:dword; _para5:dword; 
               _para6:dword; _para7:dword; _para8:dword):Pixmap;cdecl;


    function XCreateSimpleWindow(_para1:PDisplay; _para2:Window; _para3:longint; _para4:longint; _para5:dword; 
               _para6:dword; _para7:dword; _para8:dword; _para9:dword):Window;cdecl;


    function XGetSelectionOwner(_para1:PDisplay; _para2:Atom):Window;cdecl;


    function XCreateWindow(_para1:PDisplay; _para2:Window; _para3:longint; _para4:longint; _para5:dword; 
               _para6:dword; _para7:dword; _para8:longint; _para9:dword; _para10:PVisual; 
               _para11:dword; _para12:PXSetWindowAttributes):Window;cdecl;


    function XListInstalledColormaps(_para1:PDisplay; _para2:Window; _para3:Plongint):^Colormap;cdecl;

(* error 
    _Xconst char*	/* pattern */,
(* error 
    int			/* maxnames */,
(* error 
    int*		/* actual_count_return */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst char*	/* pattern */,
(* error 
    int			/* maxnames */,
(* error 
    int*		/* count_return */,
(* error 
    XFontStruct**	/* info_return */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

    function XGetFontPath(_para1:PDisplay; _para2:Plongint):^^char;cdecl;


    function XListExtensions(_para1:PDisplay; _para2:Plongint):^^char;cdecl;


    function XListProperties(_para1:PDisplay; _para2:Window; _para3:Plongint):^Atom;cdecl;


    function XListHosts(_para1:PDisplay; _para2:Plongint; _para3:PBool):^XHostAddress;cdecl;

(* error 
extern KeySym XKeycodeToKeysym(
{$if NeedWidePrototypes}
{$else}
{$endif}

in declaration at line 1695 *)


    function XLookupKeysym(_para1:PXKeyEvent; _para2:longint):KeySym;cdecl;

{$if NeedWidePrototypes}
{$else}
{$endif}


    function XGetKeyboardMapping(_para1:PDisplay; _para2:dword; _para3:KeyCode; _para4:longint; _para5:Plongint):^KeySym;cdecl;

(* error 
    _Xconst char*	/* string */

 in declarator_list *)

    function XMaxRequestSize(_para1:PDisplay):longint;cdecl;


    function XExtendedMaxRequestSize(_para1:PDisplay):longint;cdecl;


    function XResourceManagerString(_para1:PDisplay):^char;cdecl;


    function XScreenResourceString(_para1:PScreen):^char;cdecl;


    function XDisplayMotionBufferSize(_para1:PDisplay):dword;cdecl;


    function XVisualIDFromVisual(_para1:PVisual):VisualID;cdecl;


    function XInitThreads:Status;cdecl;


    procedure XLockDisplay(_para1:PDisplay);cdecl;


    procedure XUnlockDisplay(_para1:PDisplay);cdecl;


(* error 
    _Xconst char*	/* name */

 in declarator_list *)

    function XAddExtension(_para1:PDisplay):^XExtCodes;cdecl;


    function XFindOnExtensionList(_para1:PPXExtData; _para2:longint):^XExtData;cdecl;


    function XEHeadOfExtensionList(_para1:XEDataObject):^^XExtData;cdecl;



    function XRootWindow(_para1:PDisplay; _para2:longint):Window;cdecl;


    function XDefaultRootWindow(_para1:PDisplay):Window;cdecl;


    function XRootWindowOfScreen(_para1:PScreen):Window;cdecl;


    function XDefaultVisual(_para1:PDisplay; _para2:longint):^Visual;cdecl;


    function XDefaultVisualOfScreen(_para1:PScreen):^Visual;cdecl;


    function XDefaultGC(_para1:PDisplay; _para2:longint):GC;cdecl;


    function XDefaultGCOfScreen(_para1:PScreen):GC;cdecl;


    function XBlackPixel(_para1:PDisplay; _para2:longint):dword;cdecl;


    function XWhitePixel(_para1:PDisplay; _para2:longint):dword;cdecl;

    function XAllPlanes:dword;cdecl;


    function XBlackPixelOfScreen(_para1:PScreen):dword;cdecl;


    function XWhitePixelOfScreen(_para1:PScreen):dword;cdecl;


    function XNextRequest(_para1:PDisplay):dword;cdecl;


    function XLastKnownRequestProcessed(_para1:PDisplay):dword;cdecl;


    function XServerVendor(_para1:PDisplay):^char;cdecl;


    function XDisplayString(_para1:PDisplay):^char;cdecl;


    function XDefaultColormap(_para1:PDisplay; _para2:longint):Colormap;cdecl;


    function XDefaultColormapOfScreen(_para1:PScreen):Colormap;cdecl;


    function XDisplayOfScreen(_para1:PScreen):^Display;cdecl;


    function XScreenOfDisplay(_para1:PDisplay; _para2:longint):^Screen;cdecl;


    function XDefaultScreenOfDisplay(_para1:PDisplay):^Screen;cdecl;


    function XEventMaskOfScreen(_para1:PScreen):longint;cdecl;


    function XScreenNumberOfScreen(_para1:PScreen):longint;cdecl;




    type

      XErrorHandler = function (_para1:PDisplay; _para2:PXErrorEvent):longint;cdecl;


    function XSetErrorHandler(_para1:XErrorHandler):XErrorHandler;cdecl;




    type

      XIOErrorHandler = function (_para1:PDisplay):longint;cdecl;


    function XSetIOErrorHandler(_para1:XIOErrorHandler):XIOErrorHandler;cdecl;





    type

      XIOErrorExitHandler = procedure (_para1:PDisplay; _para2:pointer);cdecl;




    procedure XSetIOErrorExitHandler(_para1:PDisplay; _para2:XIOErrorExitHandler; _para3:pointer);cdecl;


    function XListPixmapFormats(_para1:PDisplay; _para2:Plongint):^XPixmapFormatValues;cdecl;


    function XListDepths(_para1:PDisplay; _para2:longint; _para3:Plongint):^longint;cdecl;




    function XReconfigureWMWindow(_para1:PDisplay; _para2:Window; _para3:longint; _para4:dword; _para5:PXWindowChanges):Status;cdecl;


    function XGetWMProtocols(_para1:PDisplay; _para2:Window; _para3:PPAtom; _para4:Plongint):Status;cdecl;


    function XSetWMProtocols(_para1:PDisplay; _para2:Window; _para3:PAtom; _para4:longint):Status;cdecl;


    function XIconifyWindow(_para1:PDisplay; _para2:Window; _para3:longint):Status;cdecl;


    function XWithdrawWindow(_para1:PDisplay; _para2:Window; _para3:longint):Status;cdecl;


    function XGetCommand(_para1:PDisplay; _para2:Window; _para3:PPPchar; _para4:Plongint):Status;cdecl;


    function XGetWMColormapWindows(_para1:PDisplay; _para2:Window; _para3:PPWindow; _para4:Plongint):Status;cdecl;


    function XSetWMColormapWindows(_para1:PDisplay; _para2:Window; _para3:PWindow; _para4:longint):Status;cdecl;


    procedure XFreeStringList(_para1:PPchar);cdecl;


    function XSetTransientForHint(_para1:PDisplay; _para2:Window; _para3:Window):longint;cdecl;



    function XActivateScreenSaver(_para1:PDisplay):longint;cdecl;


    function XAddHost(_para1:PDisplay; _para2:PXHostAddress):longint;cdecl;


    function XAddHosts(_para1:PDisplay; _para2:PXHostAddress; _para3:longint):longint;cdecl;


    function XAddToExtensionList(_para1:PP_XExtData; _para2:PXExtData):longint;cdecl;


    function XAddToSaveSet(_para1:PDisplay; _para2:Window):longint;cdecl;


    function XAllocColor(_para1:PDisplay; _para2:Colormap; _para3:PXColor):Status;cdecl;


    function XAllocColorCells(_para1:PDisplay; _para2:Colormap; _para3:Bool; _para4:Pdword; _para5:dword; 
               _para6:Pdword; _para7:dword):Status;cdecl;


    function XAllocColorPlanes(_para1:PDisplay; _para2:Colormap; _para3:Bool; _para4:Pdword; _para5:longint; 
               _para6:longint; _para7:longint; _para8:longint; _para9:Pdword; _para10:Pdword; 
               _para11:Pdword):Status;cdecl;

(* error 
    _Xconst char*	/* color_name */,
(* error 
    XColor*		/* screen_def_return */,
(* error 
    XColor*		/* exact_def_return */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

    function XAllowEvents(_para1:PDisplay; _para2:longint; _para3:Time):longint;cdecl;


    function XAutoRepeatOff(_para1:PDisplay):longint;cdecl;


    function XAutoRepeatOn(_para1:PDisplay):longint;cdecl;


    function XBell(_para1:PDisplay; _para2:longint):longint;cdecl;


    function XBitmapBitOrder(_para1:PDisplay):longint;cdecl;


    function XBitmapPad(_para1:PDisplay):longint;cdecl;


    function XBitmapUnit(_para1:PDisplay):longint;cdecl;


    function XCellsOfScreen(_para1:PScreen):longint;cdecl;


    function XChangeActivePointerGrab(_para1:PDisplay; _para2:dword; _para3:Cursor; _para4:Time):longint;cdecl;


    function XChangeGC(_para1:PDisplay; _para2:GC; _para3:dword; _para4:PXGCValues):longint;cdecl;


    function XChangeKeyboardControl(_para1:PDisplay; _para2:dword; _para3:PXKeyboardControl):longint;cdecl;


    function XChangeKeyboardMapping(_para1:PDisplay; _para2:longint; _para3:longint; _para4:PKeySym; _para5:longint):longint;cdecl;


    function XChangePointerControl(_para1:PDisplay; _para2:Bool; _para3:Bool; _para4:longint; _para5:longint; 
               _para6:longint):longint;cdecl;

(* error 
    _Xconst unsigned char*	/* data */,
(* error 
    int			/* nelements */

 in declarator_list *)
 in declarator_list *)

    function XChangeSaveSet(_para1:PDisplay; _para2:Window; _para3:longint):longint;cdecl;


    function XChangeWindowAttributes(_para1:PDisplay; _para2:Window; _para3:dword; _para4:PXSetWindowAttributes):longint;cdecl;



    function XCheckIfEvent(_para1:PDisplay; _para2:PXEvent; _para3:function (_para1:PDisplay; _para2:PXEvent; _para3:XPointer):Bool; _para4:XPointer):Bool;cdecl;


    function XCheckMaskEvent(_para1:PDisplay; _para2:longint; _para3:PXEvent):Bool;cdecl;


    function XCheckTypedEvent(_para1:PDisplay; _para2:longint; _para3:PXEvent):Bool;cdecl;


    function XCheckTypedWindowEvent(_para1:PDisplay; _para2:Window; _para3:longint; _para4:PXEvent):Bool;cdecl;


    function XCheckWindowEvent(_para1:PDisplay; _para2:Window; _para3:longint; _para4:PXEvent):Bool;cdecl;


    function XCirculateSubwindows(_para1:PDisplay; _para2:Window; _para3:longint):longint;cdecl;


    function XCirculateSubwindowsDown(_para1:PDisplay; _para2:Window):longint;cdecl;


    function XCirculateSubwindowsUp(_para1:PDisplay; _para2:Window):longint;cdecl;


    function XClearArea(_para1:PDisplay; _para2:Window; _para3:longint; _para4:longint; _para5:dword; 
               _para6:dword; _para7:Bool):longint;cdecl;


    function XClearWindow(_para1:PDisplay; _para2:Window):longint;cdecl;


    function XCloseDisplay(_para1:PDisplay):longint;cdecl;


    function XConfigureWindow(_para1:PDisplay; _para2:Window; _para3:dword; _para4:PXWindowChanges):longint;cdecl;


    function XConnectionNumber(_para1:PDisplay):longint;cdecl;


    function XConvertSelection(_para1:PDisplay; _para2:Atom; _para3:Atom; _para4:Atom; _para5:Window; 
               _para6:Time):longint;cdecl;


    function XCopyArea(_para1:PDisplay; _para2:Drawable; _para3:Drawable; _para4:GC; _para5:longint; 
               _para6:longint; _para7:dword; _para8:dword; _para9:longint; _para10:longint):longint;cdecl;


    function XCopyGC(_para1:PDisplay; _para2:GC; _para3:dword; _para4:GC):longint;cdecl;


    function XCopyPlane(_para1:PDisplay; _para2:Drawable; _para3:Drawable; _para4:GC; _para5:longint; 
               _para6:longint; _para7:dword; _para8:dword; _para9:longint; _para10:longint; 
               _para11:dword):longint;cdecl;


    function XDefaultDepth(_para1:PDisplay; _para2:longint):longint;cdecl;


    function XDefaultDepthOfScreen(_para1:PScreen):longint;cdecl;


    function XDefaultScreen(_para1:PDisplay):longint;cdecl;


    function XDefineCursor(_para1:PDisplay; _para2:Window; _para3:Cursor):longint;cdecl;


    function XDeleteProperty(_para1:PDisplay; _para2:Window; _para3:Atom):longint;cdecl;


    function XDestroyWindow(_para1:PDisplay; _para2:Window):longint;cdecl;


    function XDestroySubwindows(_para1:PDisplay; _para2:Window):longint;cdecl;


    function XDoesBackingStore(_para1:PScreen):longint;cdecl;


    function XDoesSaveUnders(_para1:PScreen):Bool;cdecl;


    function XDisableAccessControl(_para1:PDisplay):longint;cdecl;


    function XDisplayCells(_para1:PDisplay; _para2:longint):longint;cdecl;


    function XDisplayHeight(_para1:PDisplay; _para2:longint):longint;cdecl;


    function XDisplayHeightMM(_para1:PDisplay; _para2:longint):longint;cdecl;


    function XDisplayKeycodes(_para1:PDisplay; _para2:Plongint; _para3:Plongint):longint;cdecl;


    function XDisplayPlanes(_para1:PDisplay; _para2:longint):longint;cdecl;


    function XDisplayWidth(_para1:PDisplay; _para2:longint):longint;cdecl;


    function XDisplayWidthMM(_para1:PDisplay; _para2:longint):longint;cdecl;


    function XDrawArc(_para1:PDisplay; _para2:Drawable; _para3:GC; _para4:longint; _para5:longint; 
               _para6:dword; _para7:dword; _para8:longint; _para9:longint):longint;cdecl;


    function XDrawArcs(_para1:PDisplay; _para2:Drawable; _para3:GC; _para4:PXArc; _para5:longint):longint;cdecl;

(* error 
    _Xconst char*	/* string */,
(* error 
    int			/* length */

 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst XChar2b*	/* string */,
(* error 
    int			/* length */

 in declarator_list *)
 in declarator_list *)

    function XDrawLine(_para1:PDisplay; _para2:Drawable; _para3:GC; _para4:longint; _para5:longint; 
               _para6:longint; _para7:longint):longint;cdecl;


    function XDrawLines(_para1:PDisplay; _para2:Drawable; _para3:GC; _para4:PXPoint; _para5:longint; 
               _para6:longint):longint;cdecl;


    function XDrawPoint(_para1:PDisplay; _para2:Drawable; _para3:GC; _para4:longint; _para5:longint):longint;cdecl;


    function XDrawPoints(_para1:PDisplay; _para2:Drawable; _para3:GC; _para4:PXPoint; _para5:longint; 
               _para6:longint):longint;cdecl;


    function XDrawRectangle(_para1:PDisplay; _para2:Drawable; _para3:GC; _para4:longint; _para5:longint; 
               _para6:dword; _para7:dword):longint;cdecl;


    function XDrawRectangles(_para1:PDisplay; _para2:Drawable; _para3:GC; _para4:PXRectangle; _para5:longint):longint;cdecl;


    function XDrawSegments(_para1:PDisplay; _para2:Drawable; _para3:GC; _para4:PXSegment; _para5:longint):longint;cdecl;

(* error 
    _Xconst char*	/* string */,
(* error 
    int			/* length */

 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst XChar2b*	/* string */,
(* error 
    int			/* length */

 in declarator_list *)
 in declarator_list *)

    function XDrawText(_para1:PDisplay; _para2:Drawable; _para3:GC; _para4:longint; _para5:longint; 
               _para6:PXTextItem; _para7:longint):longint;cdecl;


    function XDrawText16(_para1:PDisplay; _para2:Drawable; _para3:GC; _para4:longint; _para5:longint; 
               _para6:PXTextItem16; _para7:longint):longint;cdecl;


    function XEnableAccessControl(_para1:PDisplay):longint;cdecl;


    function XEventsQueued(_para1:PDisplay; _para2:longint):longint;cdecl;


    function XFetchName(_para1:PDisplay; _para2:Window; _para3:PPchar):Status;cdecl;


    function XFillArc(_para1:PDisplay; _para2:Drawable; _para3:GC; _para4:longint; _para5:longint; 
               _para6:dword; _para7:dword; _para8:longint; _para9:longint):longint;cdecl;


    function XFillArcs(_para1:PDisplay; _para2:Drawable; _para3:GC; _para4:PXArc; _para5:longint):longint;cdecl;


    function XFillPolygon(_para1:PDisplay; _para2:Drawable; _para3:GC; _para4:PXPoint; _para5:longint; 
               _para6:longint; _para7:longint):longint;cdecl;


    function XFillRectangle(_para1:PDisplay; _para2:Drawable; _para3:GC; _para4:longint; _para5:longint; 
               _para6:dword; _para7:dword):longint;cdecl;


    function XFillRectangles(_para1:PDisplay; _para2:Drawable; _para3:GC; _para4:PXRectangle; _para5:longint):longint;cdecl;


    function XFlush(_para1:PDisplay):longint;cdecl;


    function XForceScreenSaver(_para1:PDisplay; _para2:longint):longint;cdecl;


    function XFree(_para1:pointer):longint;cdecl;


    function XFreeColormap(_para1:PDisplay; _para2:Colormap):longint;cdecl;


    function XFreeColors(_para1:PDisplay; _para2:Colormap; _para3:Pdword; _para4:longint; _para5:dword):longint;cdecl;


    function XFreeCursor(_para1:PDisplay; _para2:Cursor):longint;cdecl;


    function XFreeExtensionList(_para1:PPchar):longint;cdecl;


    function XFreeFont(_para1:PDisplay; _para2:PXFontStruct):longint;cdecl;


    function XFreeFontInfo(_para1:PPchar; _para2:PXFontStruct; _para3:longint):longint;cdecl;


    function XFreeFontNames(_para1:PPchar):longint;cdecl;


    function XFreeFontPath(_para1:PPchar):longint;cdecl;


    function XFreeGC(_para1:PDisplay; _para2:GC):longint;cdecl;


    function XFreeModifiermap(_para1:PXModifierKeymap):longint;cdecl;


    function XFreePixmap(_para1:PDisplay; _para2:Pixmap):longint;cdecl;

(* error 
    _Xconst char*	/* position */,
(* error 
    _Xconst char*	/* default_position */,
(* error 
    unsigned int	/* bwidth */,
(* error 
    unsigned int	/* fwidth */,
(* error 
    unsigned int	/* fheight */,
(* error 
    int			/* xadder */,
(* error 
    int			/* yadder */,
(* error 
    int*		/* x_return */,
(* error 
    int*		/* y_return */,
(* error 
    int*		/* width_return */,
(* error 
    int*		/* height_return */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst char*	/* name */,
(* error 
    _Xconst char*	/* message */,
(* error 
    _Xconst char*	/* default_string */,
(* error 
    char*		/* buffer_return */,
(* error 
    int			/* length */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

    function XGetErrorText(_para1:PDisplay; _para2:longint; _para3:Pchar; _para4:longint):longint;cdecl;


    function XGetFontProperty(_para1:PXFontStruct; _para2:Atom; _para3:Pdword):Bool;cdecl;


    function XGetGCValues(_para1:PDisplay; _para2:GC; _para3:dword; _para4:PXGCValues):Status;cdecl;


    function XGetGeometry(_para1:PDisplay; _para2:Drawable; _para3:PWindow; _para4:Plongint; _para5:Plongint; 
               _para6:Pdword; _para7:Pdword; _para8:Pdword; _para9:Pdword):Status;cdecl;


    function XGetIconName(_para1:PDisplay; _para2:Window; _para3:PPchar):Status;cdecl;


    function XGetInputFocus(_para1:PDisplay; _para2:PWindow; _para3:Plongint):longint;cdecl;


    function XGetKeyboardControl(_para1:PDisplay; _para2:PXKeyboardState):longint;cdecl;


    function XGetPointerControl(_para1:PDisplay; _para2:Plongint; _para3:Plongint; _para4:Plongint):longint;cdecl;


    function XGetPointerMapping(_para1:PDisplay; _para2:Pbyte; _para3:longint):longint;cdecl;


    function XGetScreenSaver(_para1:PDisplay; _para2:Plongint; _para3:Plongint; _para4:Plongint; _para5:Plongint):longint;cdecl;


    function XGetTransientForHint(_para1:PDisplay; _para2:Window; _para3:PWindow):Status;cdecl;


    function XGetWindowProperty(_para1:PDisplay; _para2:Window; _para3:Atom; _para4:longint; _para5:longint; 
               _para6:Bool; _para7:Atom; _para8:PAtom; _para9:Plongint; _para10:Pdword; 
               _para11:Pdword; _para12:PPbyte):longint;cdecl;


    function XGetWindowAttributes(_para1:PDisplay; _para2:Window; _para3:PXWindowAttributes):Status;cdecl;


    function XGrabButton(_para1:PDisplay; _para2:dword; _para3:dword; _para4:Window; _para5:Bool; 
               _para6:dword; _para7:longint; _para8:longint; _para9:Window; _para10:Cursor):longint;cdecl;


    function XGrabKey(_para1:PDisplay; _para2:longint; _para3:dword; _para4:Window; _para5:Bool; 
               _para6:longint; _para7:longint):longint;cdecl;


    function XGrabKeyboard(_para1:PDisplay; _para2:Window; _para3:Bool; _para4:longint; _para5:longint; 
               _para6:Time):longint;cdecl;


    function XGrabPointer(_para1:PDisplay; _para2:Window; _para3:Bool; _para4:dword; _para5:longint; 
               _para6:longint; _para7:Window; _para8:Cursor; _para9:Time):longint;cdecl;


    function XGrabServer(_para1:PDisplay):longint;cdecl;


    function XHeightMMOfScreen(_para1:PScreen):longint;cdecl;


    function XHeightOfScreen(_para1:PScreen):longint;cdecl;



    function XIfEvent(_para1:PDisplay; _para2:PXEvent; _para3:function (_para1:PDisplay; _para2:PXEvent; _para3:XPointer):Bool; _para4:XPointer):longint;cdecl;


    function XImageByteOrder(_para1:PDisplay):longint;cdecl;


    function XInstallColormap(_para1:PDisplay; _para2:Colormap):longint;cdecl;


    function XKeysymToKeycode(_para1:PDisplay; _para2:KeySym):KeyCode;cdecl;


    function XKillClient(_para1:PDisplay; _para2:XID):longint;cdecl;

(* error 
    _Xconst char*	/* color_name */,
(* error 
    XColor*		/* exact_def_return */,
(* error 
    XColor*		/* screen_def_return */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

    function XLowerWindow(_para1:PDisplay; _para2:Window):longint;cdecl;


    function XMapRaised(_para1:PDisplay; _para2:Window):longint;cdecl;


    function XMapSubwindows(_para1:PDisplay; _para2:Window):longint;cdecl;


    function XMapWindow(_para1:PDisplay; _para2:Window):longint;cdecl;


    function XMaskEvent(_para1:PDisplay; _para2:longint; _para3:PXEvent):longint;cdecl;


    function XMaxCmapsOfScreen(_para1:PScreen):longint;cdecl;


    function XMinCmapsOfScreen(_para1:PScreen):longint;cdecl;


    function XMoveResizeWindow(_para1:PDisplay; _para2:Window; _para3:longint; _para4:longint; _para5:dword; 
               _para6:dword):longint;cdecl;


    function XMoveWindow(_para1:PDisplay; _para2:Window; _para3:longint; _para4:longint):longint;cdecl;


    function XNextEvent(_para1:PDisplay; _para2:PXEvent):longint;cdecl;


    function XNoOp(_para1:PDisplay):longint;cdecl;

(* error 
    _Xconst char*	/* spec */,
(* error 
    XColor*		/* exact_def_return */

 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst char*	/* parsestring */,
(* error 
    int*		/* x_return */,
(* error 
    int*		/* y_return */,
(* error 
    unsigned int*	/* width_return */,
(* error 
    unsigned int*	/* height_return */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

    function XPeekEvent(_para1:PDisplay; _para2:PXEvent):longint;cdecl;



    function XPeekIfEvent(_para1:PDisplay; _para2:PXEvent; _para3:function (_para1:PDisplay; _para2:PXEvent; _para3:XPointer):Bool; _para4:XPointer):longint;cdecl;


    function XPending(_para1:PDisplay):longint;cdecl;


    function XPlanesOfScreen(_para1:PScreen):longint;cdecl;


    function XProtocolRevision(_para1:PDisplay):longint;cdecl;


    function XProtocolVersion(_para1:PDisplay):longint;cdecl;


    function XPutBackEvent(_para1:PDisplay; _para2:PXEvent):longint;cdecl;


    function XPutImage(_para1:PDisplay; _para2:Drawable; _para3:GC; _para4:PXImage; _para5:longint; 
               _para6:longint; _para7:longint; _para8:longint; _para9:dword; _para10:dword):longint;cdecl;


    function XQLength(_para1:PDisplay):longint;cdecl;


    function XQueryBestCursor(_para1:PDisplay; _para2:Drawable; _para3:dword; _para4:dword; _para5:Pdword; 
               _para6:Pdword):Status;cdecl;


    function XQueryBestSize(_para1:PDisplay; _para2:longint; _para3:Drawable; _para4:dword; _para5:dword; 
               _para6:Pdword; _para7:Pdword):Status;cdecl;


    function XQueryBestStipple(_para1:PDisplay; _para2:Drawable; _para3:dword; _para4:dword; _para5:Pdword; 
               _para6:Pdword):Status;cdecl;


    function XQueryBestTile(_para1:PDisplay; _para2:Drawable; _para3:dword; _para4:dword; _para5:Pdword; 
               _para6:Pdword):Status;cdecl;


    function XQueryColor(_para1:PDisplay; _para2:Colormap; _para3:PXColor):longint;cdecl;


    function XQueryColors(_para1:PDisplay; _para2:Colormap; _para3:PXColor; _para4:longint):longint;cdecl;

(* error 
    _Xconst char*	/* name */,
(* error 
    int*		/* major_opcode_return */,
(* error 
    int*		/* first_event_return */,
(* error 
    int*		/* first_error_return */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

    function XQueryKeymap(_para1:PDisplay; _para2:array[0..31] of char):longint;cdecl;


    function XQueryPointer(_para1:PDisplay; _para2:Window; _para3:PWindow; _para4:PWindow; _para5:Plongint; 
               _para6:Plongint; _para7:Plongint; _para8:Plongint; _para9:Pdword):Bool;cdecl;

(* error 
    _Xconst char*	/* string */,
(* error 
    int			/* nchars */,
(* error 
    int*		/* direction_return */,
(* error 
    int*		/* font_ascent_return */,
(* error 
    int*		/* font_descent_return */,
(* error 
    XCharStruct*	/* overall_return */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst XChar2b*	/* string */,
(* error 
    int			/* nchars */,
(* error 
    int*		/* direction_return */,
(* error 
    int*		/* font_ascent_return */,
(* error 
    int*		/* font_descent_return */,
(* error 
    XCharStruct*	/* overall_return */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

    function XQueryTree(_para1:PDisplay; _para2:Window; _para3:PWindow; _para4:PWindow; _para5:PPWindow; 
               _para6:Pdword):Status;cdecl;


    function XRaiseWindow(_para1:PDisplay; _para2:Window):longint;cdecl;

(* error 
    _Xconst char*	/* filename */,
(* error 
    unsigned int*	/* width_return */,
(* error 
    unsigned int*	/* height_return */,
(* error 
    Pixmap*		/* bitmap_return */,
(* error 
    int*		/* x_hot_return */,
(* error 
    int*		/* y_hot_return */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst char*	/* filename */,
(* error 
    unsigned int*	/* width_return */,
(* error 
    unsigned int*	/* height_return */,
(* error 
    unsigned char**	/* data_return */,
(* error 
    int*		/* x_hot_return */,
(* error 
    int*		/* y_hot_return */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst unsigned char*	/* string */,
(* error 
    int			/* bytes_string */

 in declarator_list *)
 in declarator_list *)

    function XRecolorCursor(_para1:PDisplay; _para2:Cursor; _para3:PXColor; _para4:PXColor):longint;cdecl;


    function XRefreshKeyboardMapping(_para1:PXMappingEvent):longint;cdecl;


    function XRemoveFromSaveSet(_para1:PDisplay; _para2:Window):longint;cdecl;


    function XRemoveHost(_para1:PDisplay; _para2:PXHostAddress):longint;cdecl;


    function XRemoveHosts(_para1:PDisplay; _para2:PXHostAddress; _para3:longint):longint;cdecl;


    function XReparentWindow(_para1:PDisplay; _para2:Window; _para3:Window; _para4:longint; _para5:longint):longint;cdecl;


    function XResetScreenSaver(_para1:PDisplay):longint;cdecl;


    function XResizeWindow(_para1:PDisplay; _para2:Window; _para3:dword; _para4:dword):longint;cdecl;


    function XRestackWindows(_para1:PDisplay; _para2:PWindow; _para3:longint):longint;cdecl;


    function XRotateBuffers(_para1:PDisplay; _para2:longint):longint;cdecl;


    function XRotateWindowProperties(_para1:PDisplay; _para2:Window; _para3:PAtom; _para4:longint; _para5:longint):longint;cdecl;


    function XScreenCount(_para1:PDisplay):longint;cdecl;


    function XSelectInput(_para1:PDisplay; _para2:Window; _para3:longint):longint;cdecl;


    function XSendEvent(_para1:PDisplay; _para2:Window; _para3:Bool; _para4:longint; _para5:PXEvent):Status;cdecl;


    function XSetAccessControl(_para1:PDisplay; _para2:longint):longint;cdecl;


    function XSetArcMode(_para1:PDisplay; _para2:GC; _para3:longint):longint;cdecl;


    function XSetBackground(_para1:PDisplay; _para2:GC; _para3:dword):longint;cdecl;


    function XSetClipMask(_para1:PDisplay; _para2:GC; _para3:Pixmap):longint;cdecl;


    function XSetClipOrigin(_para1:PDisplay; _para2:GC; _para3:longint; _para4:longint):longint;cdecl;


    function XSetClipRectangles(_para1:PDisplay; _para2:GC; _para3:longint; _para4:longint; _para5:PXRectangle; 
               _para6:longint; _para7:longint):longint;cdecl;


    function XSetCloseDownMode(_para1:PDisplay; _para2:longint):longint;cdecl;


    function XSetCommand(_para1:PDisplay; _para2:Window; _para3:PPchar; _para4:longint):longint;cdecl;

(* error 
    _Xconst char*	/* dash_list */,
(* error 
    int			/* n */

 in declarator_list *)
 in declarator_list *)

    function XSetFillRule(_para1:PDisplay; _para2:GC; _para3:longint):longint;cdecl;


    function XSetFillStyle(_para1:PDisplay; _para2:GC; _para3:longint):longint;cdecl;


    function XSetFont(_para1:PDisplay; _para2:GC; _para3:Font):longint;cdecl;


    function XSetFontPath(_para1:PDisplay; _para2:PPchar; _para3:longint):longint;cdecl;


    function XSetForeground(_para1:PDisplay; _para2:GC; _para3:dword):longint;cdecl;


    function XSetFunction(_para1:PDisplay; _para2:GC; _para3:longint):longint;cdecl;


    function XSetGraphicsExposures(_para1:PDisplay; _para2:GC; _para3:Bool):longint;cdecl;

(* error 
    _Xconst char*	/* icon_name */

 in declarator_list *)

    function XSetInputFocus(_para1:PDisplay; _para2:Window; _para3:longint; _para4:Time):longint;cdecl;


    function XSetLineAttributes(_para1:PDisplay; _para2:GC; _para3:dword; _para4:longint; _para5:longint; 
               _para6:longint):longint;cdecl;


    function XSetModifierMapping(_para1:PDisplay; _para2:PXModifierKeymap):longint;cdecl;


    function XSetPlaneMask(_para1:PDisplay; _para2:GC; _para3:dword):longint;cdecl;

(* error 
    _Xconst unsigned char*	/* map */,
(* error 
    int			/* nmap */

 in declarator_list *)
 in declarator_list *)

    function XSetScreenSaver(_para1:PDisplay; _para2:longint; _para3:longint; _para4:longint; _para5:longint):longint;cdecl;


    function XSetSelectionOwner(_para1:PDisplay; _para2:Atom; _para3:Window; _para4:Time):longint;cdecl;


    function XSetState(_para1:PDisplay; _para2:GC; _para3:dword; _para4:dword; _para5:longint; 
               _para6:dword):longint;cdecl;


    function XSetStipple(_para1:PDisplay; _para2:GC; _para3:Pixmap):longint;cdecl;


    function XSetSubwindowMode(_para1:PDisplay; _para2:GC; _para3:longint):longint;cdecl;


    function XSetTSOrigin(_para1:PDisplay; _para2:GC; _para3:longint; _para4:longint):longint;cdecl;


    function XSetTile(_para1:PDisplay; _para2:GC; _para3:Pixmap):longint;cdecl;


    function XSetWindowBackground(_para1:PDisplay; _para2:Window; _para3:dword):longint;cdecl;


    function XSetWindowBackgroundPixmap(_para1:PDisplay; _para2:Window; _para3:Pixmap):longint;cdecl;


    function XSetWindowBorder(_para1:PDisplay; _para2:Window; _para3:dword):longint;cdecl;


    function XSetWindowBorderPixmap(_para1:PDisplay; _para2:Window; _para3:Pixmap):longint;cdecl;


    function XSetWindowBorderWidth(_para1:PDisplay; _para2:Window; _para3:dword):longint;cdecl;


    function XSetWindowColormap(_para1:PDisplay; _para2:Window; _para3:Colormap):longint;cdecl;

(* error 
    _Xconst char*	/* bytes */,
(* error 
    int			/* nbytes */,
(* error 
    int			/* buffer */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst char*	/* bytes */,
(* error 
    int			/* nbytes */

 in declarator_list *)
 in declarator_list *)

    function XStoreColor(_para1:PDisplay; _para2:Colormap; _para3:PXColor):longint;cdecl;


    function XStoreColors(_para1:PDisplay; _para2:Colormap; _para3:PXColor; _para4:longint):longint;cdecl;

(* error 
    _Xconst char*	/* window_name */

 in declarator_list *)
(* error 
    _Xconst char*	/* color */,
(* error 
    unsigned long	/* pixel */,
(* error 
    int			/* flags */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

    function XSync(_para1:PDisplay; _para2:Bool):longint;cdecl;

(* error 
    _Xconst char*	/* string */,
(* error 
    int			/* nchars */,
(* error 
    int*		/* direction_return */,
(* error 
    int*		/* font_ascent_return */,
(* error 
    int*		/* font_descent_return */,
(* error 
    XCharStruct*	/* overall_return */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst XChar2b*	/* string */,
(* error 
    int			/* nchars */,
(* error 
    int*		/* direction_return */,
(* error 
    int*		/* font_ascent_return */,
(* error 
    int*		/* font_descent_return */,
(* error 
    XCharStruct*	/* overall_return */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst char*	/* string */,
(* error 
    int			/* count */

 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst XChar2b*	/* string */,
(* error 
    int			/* count */

 in declarator_list *)
 in declarator_list *)

    function XTranslateCoordinates(_para1:PDisplay; _para2:Window; _para3:Window; _para4:longint; _para5:longint; 
               _para6:Plongint; _para7:Plongint; _para8:PWindow):Bool;cdecl;


    function XUndefineCursor(_para1:PDisplay; _para2:Window):longint;cdecl;


    function XUngrabButton(_para1:PDisplay; _para2:dword; _para3:dword; _para4:Window):longint;cdecl;


    function XUngrabKey(_para1:PDisplay; _para2:longint; _para3:dword; _para4:Window):longint;cdecl;


    function XUngrabKeyboard(_para1:PDisplay; _para2:Time):longint;cdecl;


    function XUngrabPointer(_para1:PDisplay; _para2:Time):longint;cdecl;


    function XUngrabServer(_para1:PDisplay):longint;cdecl;


    function XUninstallColormap(_para1:PDisplay; _para2:Colormap):longint;cdecl;


    function XUnloadFont(_para1:PDisplay; _para2:Font):longint;cdecl;


    function XUnmapSubwindows(_para1:PDisplay; _para2:Window):longint;cdecl;


    function XUnmapWindow(_para1:PDisplay; _para2:Window):longint;cdecl;


    function XVendorRelease(_para1:PDisplay):longint;cdecl;


    function XWarpPointer(_para1:PDisplay; _para2:Window; _para3:Window; _para4:longint; _para5:longint; 
               _para6:dword; _para7:dword; _para8:longint; _para9:longint):longint;cdecl;


    function XWidthMMOfScreen(_para1:PScreen):longint;cdecl;


    function XWidthOfScreen(_para1:PScreen):longint;cdecl;


    function XWindowEvent(_para1:PDisplay; _para2:Window; _para3:longint; _para4:PXEvent):longint;cdecl;

(* error 
    _Xconst char*	/* filename */,
 in declarator_list *)
(* error 
    unsigned int	/* width */,
(* error 
    unsigned int	/* height */,
(* error 
    int			/* x_hot */,
(* error 
    int			/* y_hot */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
    function XSupportsLocale:Bool;cdecl;


    function XSetLocaleModifiers(_para1:Pchar):^char;cdecl;

(* error 
    _Xconst char*		/* res_name */,
(* error 
    _Xconst char*		/* res_class */

 in declarator_list *)
 in declarator_list *)

    function XCloseOM(_para1:XOM):Status;cdecl;

(* error 
) _X_SENTINEL(0);
 in declarator_list *)

      var
 : char;
(* error 
) _X_SENTINEL(0);
 in declarator_list *)
 : char;


    function XDisplayOfOM(_para1:XOM):^Display;cdecl;


    function XLocaleOfOM(_para1:XOM):^char;cdecl;

(* error 
) _X_SENTINEL(0);
 in declarator_list *)

      var
 : XOC;


    procedure XDestroyOC(_para1:XOC);cdecl;


    function XOMOfOC(_para1:XOC):XOM;cdecl;

(* error 
) _X_SENTINEL(0);
 in declarator_list *)

      var
 : char;
(* error 
) _X_SENTINEL(0);
 in declarator_list *)
 : char;
(* error 
    _Xconst char*	/* base_font_name_list */,
(* error 
    char***		/* missing_charset_list */,
(* error 
    int*		/* missing_charset_count */,
(* error 
    char**		/* def_string */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)


    procedure XFreeFontSet(_para1:PDisplay; _para2:XFontSet);cdecl;


    function XFontsOfFontSet(_para1:XFontSet; _para2:PPPXFontStruct; _para3:PPPchar):longint;cdecl;


    function XBaseFontNameListOfFontSet(_para1:XFontSet):^char;cdecl;


    function XLocaleOfFontSet(_para1:XFontSet):^char;cdecl;


    function XContextDependentDrawing(_para1:XFontSet):Bool;cdecl;


    function XDirectionalDependentDrawing(_para1:XFontSet):Bool;cdecl;


    function XContextualDrawing(_para1:XFontSet):Bool;cdecl;


    function XExtentsOfFontSet(_para1:XFontSet):^XFontSetExtents;cdecl;

(* error 
    _Xconst char*	/* text */,
(* error 
    int			/* bytes_text */

 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst wchar_t*	/* text */,
(* error 
    int			/* num_wchars */

 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst char*	/* text */,
(* error 
    int			/* bytes_text */

 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst char*	/* text */,
(* error 
    int			/* bytes_text */,
(* error 
    XRectangle*		/* overall_ink_return */,
(* error 
    XRectangle*		/* overall_logical_return */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst wchar_t*	/* text */,
(* error 
    int			/* num_wchars */,
(* error 
    XRectangle*		/* overall_ink_return */,
(* error 
    XRectangle*		/* overall_logical_return */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst char*	/* text */,
(* error 
    int			/* bytes_text */,
(* error 
    XRectangle*		/* overall_ink_return */,
(* error 
    XRectangle*		/* overall_logical_return */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst char*	/* text */,
(* error 
    int			/* bytes_text */,
(* error 
    XRectangle*		/* ink_extents_buffer */,
(* error 
    XRectangle*		/* logical_extents_buffer */,
(* error 
    int			/* buffer_size */,
(* error 
    int*		/* num_chars */,
(* error 
    XRectangle*		/* overall_ink_return */,
(* error 
    XRectangle*		/* overall_logical_return */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst wchar_t*	/* text */,
(* error 
    int			/* num_wchars */,
(* error 
    XRectangle*		/* ink_extents_buffer */,
(* error 
    XRectangle*		/* logical_extents_buffer */,
(* error 
    int			/* buffer_size */,
(* error 
    int*		/* num_chars */,
(* error 
    XRectangle*		/* overall_ink_return */,
(* error 
    XRectangle*		/* overall_logical_return */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst char*	/* text */,
(* error 
    int			/* bytes_text */,
(* error 
    XRectangle*		/* ink_extents_buffer */,
(* error 
    XRectangle*		/* logical_extents_buffer */,
(* error 
    int			/* buffer_size */,
(* error 
    int*		/* num_chars */,
(* error 
    XRectangle*		/* overall_ink_return */,
(* error 
    XRectangle*		/* overall_logical_return */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

    procedure XmbDrawText(_para1:PDisplay; _para2:Drawable; _para3:GC; _para4:longint; _para5:longint; 
                _para6:PXmbTextItem; _para7:longint);cdecl;


    procedure XwcDrawText(_para1:PDisplay; _para2:Drawable; _para3:GC; _para4:longint; _para5:longint; 
                _para6:PXwcTextItem; _para7:longint);cdecl;


    procedure Xutf8DrawText(_para1:PDisplay; _para2:Drawable; _para3:GC; _para4:longint; _para5:longint; 
                _para6:PXmbTextItem; _para7:longint);cdecl;

(* error 
    _Xconst char*	/* text */,
(* error 
    int			/* bytes_text */

 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst wchar_t*	/* text */,
(* error 
    int			/* num_wchars */

 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst char*	/* text */,
(* error 
    int			/* bytes_text */

 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst char*	/* text */,
(* error 
    int			/* bytes_text */

 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst wchar_t*	/* text */,
(* error 
    int			/* num_wchars */

 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst char*	/* text */,
(* error 
    int			/* bytes_text */

 in declarator_list *)
 in declarator_list *)

    function XOpenIM(_para1:PDisplay; _para2:P_XrmHashBucketRec; _para3:Pchar; _para4:Pchar):XIM;cdecl;


    function XCloseIM(_para1:XIM):Status;cdecl;

(* error 
) _X_SENTINEL(0);
 in declarator_list *)

      var
 : char;
(* error 
) _X_SENTINEL(0);
 in declarator_list *)
 : char;


    function XDisplayOfIM(_para1:XIM):^Display;cdecl;


    function XLocaleOfIM(_para1:XIM):^char;cdecl;

(* error 
) _X_SENTINEL(0);
 in declarator_list *)

      var
 : XIC;


    procedure XDestroyIC(_para1:XIC);cdecl;


    procedure XSetICFocus(_para1:XIC);cdecl;


    procedure XUnsetICFocus(_para1:XIC);cdecl;


    function XwcResetIC(_para1:XIC):^wchar_t;cdecl;


    function XmbResetIC(_para1:XIC):^char;cdecl;


    function Xutf8ResetIC(_para1:XIC):^char;cdecl;

(* error 
) _X_SENTINEL(0);
 in declarator_list *)

      var
 : char;
(* error 
) _X_SENTINEL(0);
 in declarator_list *)
 : char;


    function XIMOfIC(_para1:XIC):XIM;cdecl;


    function XFilterEvent(_para1:PXEvent; _para2:Window):Bool;cdecl;


    function XmbLookupString(_para1:XIC; _para2:PXKeyPressedEvent; _para3:Pchar; _para4:longint; _para5:PKeySym; 
               _para6:PStatus):longint;cdecl;


    function XwcLookupString(_para1:XIC; _para2:PXKeyPressedEvent; _para3:Pwchar_t; _para4:longint; _para5:PKeySym; 
               _para6:PStatus):longint;cdecl;


    function Xutf8LookupString(_para1:XIC; _para2:PXKeyPressedEvent; _para3:Pchar; _para4:longint; _para5:PKeySym; 
               _para6:PStatus):longint;cdecl;

(* error 
) _X_SENTINEL(0);
 in declarator_list *)

      var
 : XVaNestedList;



    function XRegisterIMInstantiateCallback(_para1:PDisplay; _para2:P_XrmHashBucketRec; _para3:Pchar; _para4:Pchar; _para5:XIDProc; 
               _para6:XPointer):Bool;cdecl;


    function XUnregisterIMInstantiateCallback(_para1:PDisplay; _para2:P_XrmHashBucketRec; _para3:Pchar; _para4:Pchar; _para5:XIDProc; 
               _para6:XPointer):Bool;cdecl;




    type

      XConnectionWatchProc = procedure (_para1:PDisplay; _para2:XPointer; _para3:longint; _para4:Bool; _para5:PXPointer);cdecl;


    function XInternalConnectionNumbers(_para1:PDisplay; _para2:PPlongint; _para3:Plongint):Status;cdecl;


    procedure XProcessInternalConnection(_para1:PDisplay; _para2:longint);cdecl;


    function XAddConnectionWatch(_para1:PDisplay; _para2:XConnectionWatchProc; _para3:XPointer):Status;cdecl;


    procedure XRemoveConnectionWatch(_para1:PDisplay; _para2:XConnectionWatchProc; _para3:XPointer);cdecl;


    procedure XSetAuthorization(_para1:Pchar; _para2:longint; _para3:Pchar; _para4:longint);cdecl;


    function _Xmbtowc(_para1:Pwchar_t; _para2:Pchar; _para3:longint):longint;cdecl;


    function _Xwctomb(_para1:Pchar; _para2:wchar_t):longint;cdecl;


    function XGetEventData(_para1:PDisplay; _para2:PXGenericEventCookie):Bool;cdecl;


    procedure XFreeEventData(_para1:PDisplay; _para2:PXGenericEventCookie);cdecl;

{$ifdef __clang__}
{$endif}
{$endif}

(* error 
#endif /* _X11_XLIB_H_ */

implementation

  function ConnectionNumber(dpy : longint) : longint;
  begin
    ConnectionNumber:=(_XPrivDisplay(dpy))^.fd;
  end;

  function RootWindow(dpy,scr : longint) : longint;
  begin
    RootWindow:=(ScreenOfDisplay(dpy,scr))^.root;
  end;

  function DefaultScreen(dpy : longint) : longint;
  begin
    DefaultScreen:=(_XPrivDisplay(dpy))^.default_screen;
  end;

  function DefaultRootWindow(dpy : longint) : longint;
  begin
    DefaultRootWindow:=(ScreenOfDisplay(dpy,DefaultScreen(dpy)))^.root;
  end;

  function DefaultVisual(dpy,scr : longint) : longint;
  begin
    DefaultVisual:=(ScreenOfDisplay(dpy,scr))^.root_visual;
  end;

  function DefaultGC(dpy,scr : longint) : longint;
  begin
    DefaultGC:=(ScreenOfDisplay(dpy,scr))^.default_gc;
  end;

  function BlackPixel(dpy,scr : longint) : longint;
  begin
    BlackPixel:=(ScreenOfDisplay(dpy,scr))^.black_pixel;
  end;

  function WhitePixel(dpy,scr : longint) : longint;
  begin
    WhitePixel:=(ScreenOfDisplay(dpy,scr))^.white_pixel;
  end;

  function AllPlanes : dword;
    begin
      AllPlanes:=dword( not (0));
    end;

  function QLength(dpy : longint) : longint;
  begin
    QLength:=(_XPrivDisplay(dpy))^.qlen;
  end;

  function DisplayWidth(dpy,scr : longint) : longint;
  begin
    DisplayWidth:=(ScreenOfDisplay(dpy,scr))^.width;
  end;

  function DisplayHeight(dpy,scr : longint) : longint;
  begin
    DisplayHeight:=(ScreenOfDisplay(dpy,scr))^.height;
  end;

  function DisplayWidthMM(dpy,scr : longint) : longint;
  begin
    DisplayWidthMM:=(ScreenOfDisplay(dpy,scr))^.mwidth;
  end;

  function DisplayHeightMM(dpy,scr : longint) : longint;
  begin
    DisplayHeightMM:=(ScreenOfDisplay(dpy,scr))^.mheight;
  end;

  function DisplayPlanes(dpy,scr : longint) : longint;
  begin
    DisplayPlanes:=(ScreenOfDisplay(dpy,scr))^.root_depth;
  end;

  function DisplayCells(dpy,scr : longint) : longint;
  begin
    DisplayCells:=(DefaultVisual(dpy,scr))^.map_entries;
  end;

  function ScreenCount(dpy : longint) : longint;
  begin
    ScreenCount:=(_XPrivDisplay(dpy))^.nscreens;
  end;

  function ServerVendor(dpy : longint) : longint;
  begin
    ServerVendor:=(_XPrivDisplay(dpy))^.vendor;
  end;

  function ProtocolVersion(dpy : longint) : longint;
  begin
    ProtocolVersion:=(_XPrivDisplay(dpy))^.proto_major_version;
  end;

  function ProtocolRevision(dpy : longint) : longint;
  begin
    ProtocolRevision:=(_XPrivDisplay(dpy))^.proto_minor_version;
  end;

  function VendorRelease(dpy : longint) : longint;
  begin
    VendorRelease:=(_XPrivDisplay(dpy))^.release;
  end;

  function DisplayString(dpy : longint) : longint;
  begin
    DisplayString:=(_XPrivDisplay(dpy))^.display_name;
  end;

  function DefaultDepth(dpy,scr : longint) : longint;
  begin
    DefaultDepth:=(ScreenOfDisplay(dpy,scr))^.root_depth;
  end;

  function DefaultColormap(dpy,scr : longint) : longint;
  begin
    DefaultColormap:=(ScreenOfDisplay(dpy,scr))^.cmap;
  end;

  function BitmapUnit(dpy : longint) : longint;
  begin
    BitmapUnit:=(_XPrivDisplay(dpy))^.bitmap_unit;
  end;

  function BitmapBitOrder(dpy : longint) : longint;
  begin
    BitmapBitOrder:=(_XPrivDisplay(dpy))^.bitmap_bit_order;
  end;

  function BitmapPad(dpy : longint) : longint;
  begin
    BitmapPad:=(_XPrivDisplay(dpy))^.bitmap_pad;
  end;

  function ImageByteOrder(dpy : longint) : longint;
  begin
    ImageByteOrder:=(_XPrivDisplay(dpy))^.byte_order;
  end;

  function NextRequest(dpy : longint) : longint;
  begin
    NextRequest:=((_XPrivDisplay(dpy))^.request)+1;
  end;

  function LastKnownRequestProcessed(dpy : longint) : longint;
  begin
    LastKnownRequestProcessed:=(_XPrivDisplay(dpy))^.last_request_read;
  end;

  function ScreenOfDisplay(dpy,scr : longint) : longint;
  begin
    ScreenOfDisplay:=@((_XPrivDisplay(dpy))^.(screens[scr]));
  end;

  function DefaultScreenOfDisplay(dpy : longint) : longint;
  begin
    DefaultScreenOfDisplay:=ScreenOfDisplay(dpy,DefaultScreen(dpy));
  end;

  function DisplayOfScreen(s : longint) : longint;
  begin
    DisplayOfScreen:=s^.display;
  end;

  function RootWindowOfScreen(s : longint) : longint;
  begin
    RootWindowOfScreen:=s^.root;
  end;

  function BlackPixelOfScreen(s : longint) : longint;
  begin
    BlackPixelOfScreen:=s^.black_pixel;
  end;

  function WhitePixelOfScreen(s : longint) : longint;
  begin
    WhitePixelOfScreen:=s^.white_pixel;
  end;

  function DefaultColormapOfScreen(s : longint) : longint;
  begin
    DefaultColormapOfScreen:=s^.cmap;
  end;

  function DefaultDepthOfScreen(s : longint) : longint;
  begin
    DefaultDepthOfScreen:=s^.root_depth;
  end;

  function DefaultGCOfScreen(s : longint) : longint;
  begin
    DefaultGCOfScreen:=s^.default_gc;
  end;

  function DefaultVisualOfScreen(s : longint) : longint;
  begin
    DefaultVisualOfScreen:=s^.root_visual;
  end;

  function WidthOfScreen(s : longint) : longint;
  begin
    WidthOfScreen:=s^.width;
  end;

  function HeightOfScreen(s : longint) : longint;
  begin
    HeightOfScreen:=s^.height;
  end;

  function WidthMMOfScreen(s : longint) : longint;
  begin
    WidthMMOfScreen:=s^.mwidth;
  end;

  function HeightMMOfScreen(s : longint) : longint;
  begin
    HeightMMOfScreen:=s^.mheight;
  end;

  function PlanesOfScreen(s : longint) : longint;
  begin
    PlanesOfScreen:=s^.root_depth;
  end;

  function CellsOfScreen(s : longint) : longint;
  begin
    CellsOfScreen:=(DefaultVisualOfScreen(s))^.map_entries;
  end;

  function MinCmapsOfScreen(s : longint) : longint;
  begin
    MinCmapsOfScreen:=s^.min_maps;
  end;

  function MaxCmapsOfScreen(s : longint) : longint;
  begin
    MaxCmapsOfScreen:=s^.max_maps;
  end;

  function DoesSaveUnders(s : longint) : longint;
  begin
    DoesSaveUnders:=s^.save_unders;
  end;

  function DoesBackingStore(s : longint) : longint;
  begin
    DoesBackingStore:=s^.backing_store;
  end;

  function EventMaskOfScreen(s : longint) : longint;
  begin
    EventMaskOfScreen:=s^.root_input_mask;
  end;

  function XAllocID(dpy : longint) : longint;
  begin
    XAllocID:=(_XPrivDisplay(dpy))^.resource_alloc(dpy);
  end;


end.
