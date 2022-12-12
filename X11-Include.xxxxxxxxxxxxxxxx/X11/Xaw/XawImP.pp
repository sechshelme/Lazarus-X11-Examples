
unit XawImP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/XawImP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/XawImP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/XawImP.pp
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
Pchar  = ^char;
PcontextDataRec  = ^contextDataRec;
PcontextErrDataRec  = ^contextErrDataRec;
PKeySym  = ^KeySym;
Pwchar_t  = ^wchar_t;
PXawIcPart  = ^XawIcPart;
PXawIcTableList  = ^XawIcTableList;
PXawIcTablePart  = ^XawIcTablePart;
PXawImPart  = ^XawImPart;
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
  PXawImPart = ^TXawImPart;
  TXawImPart = record
      xim : TXIM;
      resources : TXrmResourceList;
      num_resources : TCardinal;
      open_im : TBoolean;
      initialized : TBoolean;
      area_height : TDimension;
      input_method : TString;
      preedit_type : TString;
    end;

  PXawIcTablePart = ^TXawIcTablePart;
  TXawIcTablePart = record
      widget : TWidget;
      xic : TXIC;
      input_style : TXIMStyle;
      flg : dword;
      prev_flg : dword;
      ic_focused : TBoolean;
      font_set : TXFontSet;
      foreground : TPixel;
      background : TPixel;
      bg_pixmap : TPixmap;
      cursor_position : TXawTextPosition;
      line_spacing : dword;
      openic_error : TBoolean;
      next : PXawIcTablePart;
    end;
  TXawIcTableList = PXawIcTablePart;
  PXawIcTableList = ^TXawIcTableList;

  PXawIcPart = ^TXawIcPart;
  TXawIcPart = record
      input_style : TXIMStyle;
      shared_ic : TBoolean;
      shared_ic_table : TXawIcTableList;
      current_ic_table : TXawIcTableList;
      ic_table : TXawIcTableList;
    end;

  PcontextDataRec = ^TcontextDataRec;
  TcontextDataRec = record
      parent : TWidget;
      ve : TWidget;
    end;

  PcontextErrDataRec = ^TcontextErrDataRec;
  TcontextErrDataRec = record
      widget : TWidget;
      xim : TXIM;
    end;

procedure _XawImResizeVendorShell(w:TWidget);cdecl;external;
function _XawImGetShellHeight(w:TWidget):TDimension;cdecl;external;
procedure _XawImRealize(w:TWidget);cdecl;external;
procedure _XawImInitialize(w:TWidget; ext:TWidget);cdecl;external;
procedure _XawImReconnect(w:TWidget);cdecl;external;
procedure _XawImRegister(w:TWidget);cdecl;external;
procedure _XawImUnregister(w:TWidget);cdecl;external;
procedure _XawImSetValues(w:TWidget; args:TArgList; num_args:TCardinal);cdecl;external;
procedure _XawImSetFocusValues(w:TWidget; args:TArgList; num_args:TCardinal);cdecl;external;
procedure _XawImUnsetFocus(w:TWidget);cdecl;external;
function _XawImWcLookupString(w:TWidget; event:PXKeyPressedEvent; buffer_return:Pwchar_t; bytes_buffer:longint; keysym_return:PKeySym):longint;cdecl;external;
function _XawLookupString(w:TWidget; event:PXKeyEvent; buffer_return:Pchar; buffer_size:longint; keysym_return:PKeySym):longint;cdecl;external;
function _XawImGetImAreaHeight(w:TWidget):longint;cdecl;external;
procedure _XawImCallVendorShellExtResize(w:TWidget);cdecl;external;
procedure _XawImDestroy(w:TWidget; ext:TWidget);cdecl;external;
{$endif}


implementation


end.
