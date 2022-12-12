
unit XawImP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/XawImP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/XawImP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/XawImP.pp
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
PcontextDataRec  = ^contextDataRec;
PcontextErrDataRec  = ^contextErrDataRec;
PKeySym  = ^KeySym;
PStatus  = ^Status;
Pwchar_t  = ^wchar_t;
PXawIcPart  = ^XawIcPart;
PXawIcTableList  = ^XawIcTableList;
PXawIcTablePart  = ^XawIcTablePart;
PXawImPart  = ^XawImPart;
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
{$if NeedFunctionPrototypes}

{$endif}

procedure _XawImResizeVendorShell(para1:TWidget);cdecl;external;
{$if NeedFunctionPrototypes}

{$endif}

function _XawImGetShellHeight(para1:TWidget):TDimension;cdecl;external;
{$if NeedFunctionPrototypes}

{$endif}

procedure _XawImRealize(para1:TWidget);cdecl;external;
{$if NeedFunctionPrototypes}


{$endif}

procedure _XawImInitialize(para1:TWidget; para2:TWidget);cdecl;external;
{$if NeedFunctionPrototypes}

{$endif}

procedure _XawImReconnect(para1:TWidget);cdecl;external;
{$if NeedFunctionPrototypes}

{$endif}

procedure _XawImRegister(para1:TWidget);cdecl;external;
{$if NeedFunctionPrototypes}

{$endif}

procedure _XawImUnregister(para1:TWidget);cdecl;external;
{$if NeedFunctionPrototypes}



{$endif}

procedure _XawImSetValues(para1:TWidget; para2:TArgList; para3:TCardinal);cdecl;external;

{$if NeedVarargsPrototypes}

{$endif}

procedure _XawImVASetValues(para1:TWidget; args:array of const);cdecl;external;
procedure _XawImVASetValues(para1:TWidget);cdecl;external;
{$if NeedFunctionPrototypes}



{$endif}

procedure _XawImSetFocusValues(para1:TWidget; para2:TArgList; para3:TCardinal);cdecl;external;

{$if NeedVarargsPrototypes}

{$endif}

procedure _XawImVASetFocusValues(para1:TWidget; args:array of const);cdecl;external;
procedure _XawImVASetFocusValues(para1:TWidget);cdecl;external;
{$if NeedFunctionPrototypes}

{$endif}

procedure _XawImUnsetFocus(para1:TWidget);cdecl;external;
{$if NeedFunctionPrototypes}






{$endif}

function _XawImWcLookupString(para1:TWidget; para2:PXKeyPressedEvent; para3:Pwchar_t; para4:longint; para5:PKeySym; 
           para6:PStatus):longint;cdecl;external;
{$if NeedFunctionPrototypes}

{$endif}

function _XawImGetImAreaHeight(para1:TWidget):longint;cdecl;external;
{$if NeedFunctionPrototypes}

{$endif}

procedure _XawImCallVendorShellExtResize(para1:TWidget);cdecl;external;
{$if NeedFunctionPrototypes}


{$endif}

procedure _XawImDestroy(para1:TWidget; para2:TWidget);cdecl;external;
{$endif}


implementation


end.
