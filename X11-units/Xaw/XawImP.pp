
unit XawImP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/XawImP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/XawImP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/XawImP.pp
}

  Type
  Pchar  = ^char;
  PKeySym  = ^KeySym;
  Pwchar_t  = ^wchar_t;
  PXKeyEvent  = ^XKeyEvent;
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
{$include <X11/Xaw/Text.h>}

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

  procedure _XawImResizeVendorShell(w:Widget);

  function _XawImGetShellHeight(w:Widget):Dimension;

  procedure _XawImRealize(w:Widget);

  procedure _XawImInitialize(w:Widget; ext:Widget);

  procedure _XawImReconnect(w:Widget);

  procedure _XawImRegister(w:Widget);

  procedure _XawImUnregister(w:Widget);

  procedure _XawImSetValues(w:Widget; args:ArgList; num_args:Cardinal);

  procedure _XawImSetFocusValues(w:Widget; args:ArgList; num_args:Cardinal);

  procedure _XawImUnsetFocus(w:Widget);

  function _XawImWcLookupString(w:Widget; event:PXKeyPressedEvent; buffer_return:Pwchar_t; bytes_buffer:longint; keysym_return:PKeySym):longint;

  function _XawLookupString(w:Widget; event:PXKeyEvent; buffer_return:Pchar; buffer_size:longint; keysym_return:PKeySym):longint;

  function _XawImGetImAreaHeight(w:Widget):longint;

  procedure _XawImCallVendorShellExtResize(w:Widget);

  procedure _XawImDestroy(w:Widget; ext:Widget);

{$endif}


implementation

  procedure _XawImResizeVendorShell(w:Widget);
  begin
    { You must implement this function }
  end;
  function _XawImGetShellHeight(w:Widget):Dimension;
  begin
    { You must implement this function }
  end;
  procedure _XawImRealize(w:Widget);
  begin
    { You must implement this function }
  end;
  procedure _XawImInitialize(w:Widget; ext:Widget);
  begin
    { You must implement this function }
  end;
  procedure _XawImReconnect(w:Widget);
  begin
    { You must implement this function }
  end;
  procedure _XawImRegister(w:Widget);
  begin
    { You must implement this function }
  end;
  procedure _XawImUnregister(w:Widget);
  begin
    { You must implement this function }
  end;
  procedure _XawImSetValues(w:Widget; args:ArgList; num_args:Cardinal);
  begin
    { You must implement this function }
  end;
  procedure _XawImSetFocusValues(w:Widget; args:ArgList; num_args:Cardinal);
  begin
    { You must implement this function }
  end;
  procedure _XawImUnsetFocus(w:Widget);
  begin
    { You must implement this function }
  end;
  function _XawImWcLookupString(w:Widget; event:PXKeyPressedEvent; buffer_return:Pwchar_t; bytes_buffer:longint; keysym_return:PKeySym):longint;
  begin
    { You must implement this function }
  end;
  function _XawLookupString(w:Widget; event:PXKeyEvent; buffer_return:Pchar; buffer_size:longint; keysym_return:PKeySym):longint;
  begin
    { You must implement this function }
  end;
  function _XawImGetImAreaHeight(w:Widget):longint;
  begin
    { You must implement this function }
  end;
  procedure _XawImCallVendorShellExtResize(w:Widget);
  begin
    { You must implement this function }
  end;
  procedure _XawImDestroy(w:Widget; ext:Widget);
  begin
    { You must implement this function }
  end;

end.
