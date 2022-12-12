
unit XawImP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/XawImP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/XawImP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/XawImP.pp
}

  Type
  PKeySym  = ^KeySym;
  PStatus  = ^Status;
  Pwchar_t  = ^wchar_t;
  PXKeyPressedEvent  = ^XKeyPressedEvent;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawImP_h}
{$define _XawImP_h}  

  const
    XtNinputMethod = 'inputMethod';    
    XtCInputMethod = 'InputMethod';    
    XtNpreeditType = 'preeditType';    
    XtCPreeditType = 'PreeditType';    
    XtNopenIm = 'openIm';    
    XtCOpenIm = 'OpenIm';    
    XtNsharedIc = 'sharedIc';    
    XtCSharedIc = 'SharedIc';    
{$include <X11/Xaw3d/Text.h>}

  const
    CIICFocus = 1 shl 0;    
    CIFontSet = 1 shl 1;    
    CIFg = 1 shl 2;    
    CIBg = 1 shl 3;    
    CIBgPixmap = 1 shl 4;    
    CICursorP = 1 shl 5;    
    CILineS = 1 shl 6;    

  type
    _XawImPart = record
        xim : XIM;
        resources : XrmResourceList;
        num_resources : Cardinal;
        open_im : Boolean;
        initialized : Boolean;
        area_height : Dimension;
        input_method : String;
        preedit_type : String;
      end;
    XawImPart = _XawImPart;

    _XawIcTablePart = record
        widget : Widget;
        xic : XIC;
        input_style : XIMStyle;
        flg : dword;
        prev_flg : dword;
        ic_focused : Boolean;
        font_set : XFontSet;
        foreground : Pixel;
        background : Pixel;
        bg_pixmap : Pixmap;
        cursor_position : XawTextPosition;
        line_spacing : dword;
        openic_error : Boolean;
        next : ^_XawIcTablePart;
      end;
    XawIcTablePart = _XawIcTablePart;
    XawIcTableList = ^_XawIcTablePart;

    _XawIcPart = record
        input_style : XIMStyle;
        shared_ic : Boolean;
        shared_ic_table : XawIcTableList;
        current_ic_table : XawIcTableList;
        ic_table : XawIcTableList;
      end;
    XawIcPart = _XawIcPart;

    _contextDataRec = record
        parent : Widget;
        ve : Widget;
      end;
    contextDataRec = _contextDataRec;

    _contextErrDataRec = record
        widget : Widget;
        xim : XIM;
      end;
    contextErrDataRec = _contextErrDataRec;
{$if NeedFunctionPrototypes}

{$endif}

  procedure _XawImResizeVendorShell(_para1:Widget);

{$if NeedFunctionPrototypes}

{$endif}

  function _XawImGetShellHeight(_para1:Widget):Dimension;

{$if NeedFunctionPrototypes}

{$endif}

  procedure _XawImRealize(_para1:Widget);

{$if NeedFunctionPrototypes}


{$endif}

  procedure _XawImInitialize(_para1:Widget; _para2:Widget);

{$if NeedFunctionPrototypes}

{$endif}

  procedure _XawImReconnect(_para1:Widget);

{$if NeedFunctionPrototypes}

{$endif}

  procedure _XawImRegister(_para1:Widget);

{$if NeedFunctionPrototypes}

{$endif}

  procedure _XawImUnregister(_para1:Widget);

{$if NeedFunctionPrototypes}



{$endif}

  procedure _XawImSetValues(_para1:Widget; _para2:ArgList; _para3:Cardinal);


{$if NeedVarargsPrototypes}

{$endif}

  procedure _XawImVASetValues(_para1:Widget; args:array of const);

{$if NeedFunctionPrototypes}



{$endif}

  procedure _XawImSetFocusValues(_para1:Widget; _para2:ArgList; _para3:Cardinal);


{$if NeedVarargsPrototypes}

{$endif}

  procedure _XawImVASetFocusValues(_para1:Widget; args:array of const);

{$if NeedFunctionPrototypes}

{$endif}

  procedure _XawImUnsetFocus(_para1:Widget);

{$if NeedFunctionPrototypes}






{$endif}

  function _XawImWcLookupString(_para1:Widget; _para2:PXKeyPressedEvent; _para3:Pwchar_t; _para4:longint; _para5:PKeySym; 
             _para6:PStatus):longint;

{$if NeedFunctionPrototypes}

{$endif}

  function _XawImGetImAreaHeight(_para1:Widget):longint;

{$if NeedFunctionPrototypes}

{$endif}

  procedure _XawImCallVendorShellExtResize(_para1:Widget);

{$if NeedFunctionPrototypes}


{$endif}

  procedure _XawImDestroy(_para1:Widget; _para2:Widget);

{$endif}


implementation

  procedure _XawImResizeVendorShell(_para1:Widget);
  begin
    { You must implement this function }
  end;
  function _XawImGetShellHeight(_para1:Widget):Dimension;
  begin
    { You must implement this function }
  end;
  procedure _XawImRealize(_para1:Widget);
  begin
    { You must implement this function }
  end;
  procedure _XawImInitialize(_para1:Widget; _para2:Widget);
  begin
    { You must implement this function }
  end;
  procedure _XawImReconnect(_para1:Widget);
  begin
    { You must implement this function }
  end;
  procedure _XawImRegister(_para1:Widget);
  begin
    { You must implement this function }
  end;
  procedure _XawImUnregister(_para1:Widget);
  begin
    { You must implement this function }
  end;
  procedure _XawImSetValues(_para1:Widget; _para2:ArgList; _para3:Cardinal);
  begin
    { You must implement this function }
  end;
  procedure _XawImVASetValues(_para1:Widget);
  begin
    { You must implement this function }
  end;
  procedure _XawImSetFocusValues(_para1:Widget; _para2:ArgList; _para3:Cardinal);
  begin
    { You must implement this function }
  end;
  procedure _XawImVASetFocusValues(_para1:Widget);
  begin
    { You must implement this function }
  end;
  procedure _XawImUnsetFocus(_para1:Widget);
  begin
    { You must implement this function }
  end;
  function _XawImWcLookupString(_para1:Widget; _para2:PXKeyPressedEvent; _para3:Pwchar_t; _para4:longint; _para5:PKeySym; 
             _para6:PStatus):longint;
  begin
    { You must implement this function }
  end;
  function _XawImGetImAreaHeight(_para1:Widget):longint;
  begin
    { You must implement this function }
  end;
  procedure _XawImCallVendorShellExtResize(_para1:Widget);
  begin
    { You must implement this function }
  end;
  procedure _XawImDestroy(_para1:Widget; _para2:Widget);
  begin
    { You must implement this function }
  end;

end.
