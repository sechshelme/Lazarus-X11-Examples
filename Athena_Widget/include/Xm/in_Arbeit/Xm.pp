
unit Xm;
interface

{
  Automatically converted by H2Pas 1.0.0 from Xm.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    Xm.h
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
    P_XmParseMappingRec  = ^_XmParseMappingRec;
    P_XmRenderTableRec  = ^_XmRenderTableRec;
    P_XmRenditionRec  = ^_XmRenditionRec;
    P_XmStringContextRec  = ^_XmStringContextRec;
    P_XmStringRec  = ^_XmStringRec;
    P_XmTabListRec  = ^_XmTabListRec;
    P_XmTabRec  = ^_XmTabRec;
    PBoolean  = ^Boolean;
    Pbyte  = ^byte;
    PCardinal  = ^Cardinal;
    Pchar  = ^char;
    PDimension  = ^Dimension;
    PDisplay  = ^Display;
    Pdword  = ^dword;
    PKeySym  = ^KeySym;
    Plongint  = ^longint;
    PPixel  = ^Pixel;
    PScreen  = ^Screen;
    Pwchar_t  = ^wchar_t;
    Pword  = ^word;
    PXColor  = ^XColor;
    PXEvent  = ^XEvent;
    PXFontStruct  = ^XFontStruct;
    PXImage  = ^XImage;
    PXmAnyCallbackStruct  = ^XmAnyCallbackStruct;
    PXmArrowButtonCallbackStruct  = ^XmArrowButtonCallbackStruct;
    PXmButtonType  = ^XmButtonType;
    PXmButtonTypeTable  = ^XmButtonTypeTable;
    PXmColorMode  = ^XmColorMode;
    PXmComboBoxCallbackStruct  = ^XmComboBoxCallbackStruct;
    PXmCommandCallbackStruct  = ^XmCommandCallbackStruct;
    PXmContainerOutlineCallbackStruct  = ^XmContainerOutlineCallbackStruct;
    PXmContainerSelectCallbackStruct  = ^XmContainerSelectCallbackStruct;
    PXmDirection  = ^XmDirection;
    PXmDisplayCallbackStruct  = ^XmDisplayCallbackStruct;
    PXmDragStartCallback  = ^XmDragStartCallback;
    PXmDragStartCallbackStruct  = ^XmDragStartCallbackStruct;
    PXmDrawingAreaCallbackStruct  = ^XmDrawingAreaCallbackStruct;
    PXmDrawnButtonCallbackStruct  = ^XmDrawnButtonCallbackStruct;
    PXmFileSelectionBoxCallbackStruct  = ^XmFileSelectionBoxCallbackStruct;
    PXmFillOption  = ^XmFillOption;
    PXmFontContext  = ^XmFontContext;
    PXmFontList  = ^XmFontList;
    PXmFontListContextRec  = ^XmFontListContextRec;
    PXmFontListEntry  = ^XmFontListEntry;
    PXmFontType  = ^XmFontType;
    PXmHierarchyNodeState  = ^XmHierarchyNodeState;
    PXmHighlightMode  = ^XmHighlightMode;
    PXmICCEncodingStyle  = ^XmICCEncodingStyle;
    PXmIconPlacement  = ^XmIconPlacement;
    PXmIncludeStatus  = ^XmIncludeStatus;
    PXmInputPolicy  = ^XmInputPolicy;
    PXmKeySymTable  = ^XmKeySymTable;
    PXmListCallbackStruct  = ^XmListCallbackStruct;
    PXmMergeMode  = ^XmMergeMode;
    PXmNavigationType  = ^XmNavigationType;
    PXmNotebookCallbackStruct  = ^XmNotebookCallbackStruct;
    PXmOffset  = ^XmOffset;
    PXmOffsetModel  = ^XmOffsetModel;
    PXmOffsetPtr  = ^XmOffsetPtr;
    PXmParseMapping  = ^XmParseMapping;
    PXmParseModel  = ^XmParseModel;
    PXmParseTable  = ^XmParseTable;
    PXmPixmapPlacement  = ^XmPixmapPlacement;
    PXmPopupHandlerCallbackStruct  = ^XmPopupHandlerCallbackStruct;
    PXmPrintShellCallbackStruct  = ^XmPrintShellCallbackStruct;
    PXmPushButtonCallbackStruct  = ^XmPushButtonCallbackStruct;
    PXmRenderTable  = ^XmRenderTable;
    PXmRendition  = ^XmRendition;
    PXmRowColumnCallbackStruct  = ^XmRowColumnCallbackStruct;
    PXmScaleCallbackStruct  = ^XmScaleCallbackStruct;
    PXmScrollBarCallbackStruct  = ^XmScrollBarCallbackStruct;
    PXmSecondaryResourceData  = ^XmSecondaryResourceData;
    PXmSecondaryResourceDataRec  = ^XmSecondaryResourceDataRec;
    PXmSelectionBoxCallbackStruct  = ^XmSelectionBoxCallbackStruct;
    PXmSpinBoxCallbackStruct  = ^XmSpinBoxCallbackStruct;
    PXmString  = ^XmString;
    PXmStringCharSet  = ^XmStringCharSet;
    PXmStringCharSetTable  = ^XmStringCharSetTable;
    PXmStringComponentType  = ^XmStringComponentType;
    PXmStringContext  = ^XmStringContext;
    PXmStringDirection  = ^XmStringDirection;
    PXmStringTable  = ^XmStringTable;
    PXmStringTag  = ^XmStringTag;
    PXmTab  = ^XmTab;
    PXmTabArrowPlacement  = ^XmTabArrowPlacement;
    PXmTabBoxCallbackStruct  = ^XmTabBoxCallbackStruct;
    PXmTabEdge  = ^XmTabEdge;
    PXmTabList  = ^XmTabList;
    PXmTabMode  = ^XmTabMode;
    PXmTabOrientation  = ^XmTabOrientation;
    PXmTabResult  = ^XmTabResult;
    PXmTabSide  = ^XmTabSide;
    PXmTabStackCallbackStruct  = ^XmTabStackCallbackStruct;
    PXmTabStyle  = ^XmTabStyle;
    PXmTabValueMode  = ^XmTabValueMode;
    PXmTextBlock  = ^XmTextBlock;
    PXmTextBlockRec  = ^XmTextBlockRec;
    PXmTextBlockRecWcs  = ^XmTextBlockRecWcs;
    PXmTextBlockWcs  = ^XmTextBlockWcs;
    PXmTextDirection  = ^XmTextDirection;
    PXmTextFormat  = ^XmTextFormat;
    PXmTextPosition  = ^XmTextPosition;
    PXmTextScanType  = ^XmTextScanType;
    PXmTextStatus  = ^XmTextStatus;
    PXmTextType  = ^XmTextType;
    PXmTextVerifyCallbackStruct  = ^XmTextVerifyCallbackStruct;
    PXmTextVerifyCallbackStructWcs  = ^XmTextVerifyCallbackStructWcs;
    PXmTextVerifyPtr  = ^XmTextVerifyPtr;
    PXmTextVerifyPtrWcs  = ^XmTextVerifyPtrWcs;
    PXmToggleButtonCallbackStruct  = ^XmToggleButtonCallbackStruct;
    PXmToggleButtonState  = ^XmToggleButtonState;
    PXmTraversalDirection  = ^XmTraversalDirection;
    PXmTraverseObscuredCallbackStruct  = ^XmTraverseObscuredCallbackStruct;
    PXmTreeCompressStyle  = ^XmTreeCompressStyle;
    PXmTreeConnectStyle  = ^XmTreeConnectStyle;
    PXmVisibility  = ^XmVisibility;
    PXRectangle  = ^XRectangle;
    PXrmValue  = ^XrmValue;
    PXtEnum  = ^XtEnum;
    PXtPointer  = ^XtPointer;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{ lib/Xm/Xm.h.  Generated from Xm.h.in by configure.   }
{ 
 * Motif
 *
 * Copyright (c) 1987-2012, The Open Group. All rights reserved.
 *
 * These libraries and programs are free software; you can
 * redistribute them and/or modify them under the terms of the GNU
 * Lesser General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option)
 * any later version.
 *
 * These libraries and programs are distributed in the hope that
 * they will be useful, but WITHOUT ANY WARRANTY; without even the
 * implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
 * PURPOSE. See the GNU Lesser General Public License for more
 * details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with these librararies and programs; if not, write
 * to the Free Software Foundation, Inc., 51 Franklin Street, Fifth
 * Floor, Boston, MA 02110-1301 USA
 }{ $TOG: Xm.h /main/38 1999/10/18 14:50:22 samborn $  }
{$ifndef _Xm_h}
{$define _Xm_h}
{$ifndef OM22_COMPATIBILITY}

const
  OM22_COMPATIBILITY = 1;  
{$endif}
{$ifndef JPEG_SUPPORTED}

const
  JPEG_SUPPORTED = 1;  
{$endif}
{$ifndef PNG_SUPPORTED}

const
  PNG_SUPPORTED = 1;  
{$endif}
{$ifndef UTF8_SUPPORTED}

const
  UTF8_SUPPORTED = 1;  
{$endif}
{$ifndef PRINTING_SUPPORTED}
{ #undef PRINTING_SUPPORTED  }
{$endif}
{$ifndef USE_XFT}

const
  USE_XFT = 1;  
{$endif}
{#if    !defined(__STDC__) \ }
{    && !defined(__cplusplus) && !defined(c_plusplus) \ }
{    && !defined(FUNCPROTO) && !defined(XTFUNCPROTO) && !defined(XMFUNCPROTO) }
{#define _NO_PROTO }
{#endif /* __STDC__ */ }
{$include <X11/Intrinsic.h>}
{$include <X11/Shell.h>}
{$include <X11/Xatom.h>}
{$ifdef PRINTING_SUPPORTED}
{$include <X11/extensions/Print.h>}
{$endif}
{$include <Xm/XmStrDefs.h>}
{$include <Xm/XmStrDefs22.h>}
{$include <Xm/XmStrDefs23.h>}
{$include <Xm/VirtKeys.h>}
{$include <Xm/Transfer.h>}
{$include <Xm/Primitive.h>}
{$include <Xm/Manager.h>}
{$include <Xm/Gadget.h>}
{ C++ extern C conditionnal removed }

const
  XmVERSION = 2;  
  XmREVISION = 3;  
  XmUPDATE_LEVEL = 8;  
  XmVersion = (2*1000)+3;  
{#define XmVersion	(XmVERSION * 1000 + XmREVISION) }
  XmVERSION_STRING = '@(#)Motif Version 2.3.8';  
  var
    xmUseVersion : longint;cvar;external;
{ define used to denote an unspecified pixmap   }

const
  XmUNSPECIFIED_PIXMAP = 2;  
{ define for an unspecified position  }
  XmUNSPECIFIED_POSITION = -(1);  
{******************
 *  
 * Defines for resources to be defaulted by vendors.
 * String are initialized in Xmos.c
 *
 *************** }
  XmSTRING_OS_CHARSET = XmSTRING_ISO8859_1;  
{$ifndef	XmFALLBACK_CHARSET}

const
  XmFALLBACK_CHARSET = XmSTRING_ISO8859_1;  
{$endif}

const
  XmDEFAULT_FONT = _XmSDEFAULT_FONT;  
  XmDEFAULT_BACKGROUND = _XmSDEFAULT_BACKGROUND;  
  XmDEFAULT_DARK_THRESHOLD = 20;  
  XmDEFAULT_LIGHT_THRESHOLD = 93;  
  XmDEFAULT_FOREGROUND_THRESHOLD = 70;  
  var
    _XmSDEFAULT_FONT : Pchar;cvar;external;
{ In Xmos.c  }
    _XmSDEFAULT_BACKGROUND : Pchar;cvar;external;
{ In Xmos.c  }
type
  PXmDirection = ^TXmDirection;
  TXmDirection = byte;

const
  XmDIRECTION_IGNORED = $30;  
{ 0x01 for bc  }
  XmRIGHT_TO_LEFT_MASK = $01;  
  XmLEFT_TO_RIGHT_MASK = $02;  
  XmHORIZONTAL_MASK = $03;  
  XmTOP_TO_BOTTOM_MASK = $04;  
  XmBOTTOM_TO_TOP_MASK = $08;  
  XmVERTICAL_MASK = $0c;  
  XmPRECEDENCE_HORIZ_MASK = $40;  
  XmPRECEDENCE_VERT_MASK = $80;  
  XmPRECEDENCE_MASK = $c0;  
{  XmDEFAULT_DIRECTION = 0xff }
(* error 
  };
in declaration at line 157 *)

function XmDirectionMatch(d1:TXmDirection; d2:TXmDirection):TBoolean;cdecl;external;
function XmDirectionMatchPartial(d1:TXmDirection; d2:TXmDirection; dmask:TXmDirection):TBoolean;cdecl;external;
    {***************
     *
     * XmString structure defines. These must be here (at the start of the file) 
     * becaused they are used later on.
     *
     *************** }
    type
      PXmFontType = ^TXmFontType;
      TXmFontType =  Longint;
      Const
        XmFONT_IS_FONT = 0;
        XmFONT_IS_FONTSET = 1;
        XmFONT_IS_XFT = 2;
;
(* error 
enum { XmSTRING_DIRECTION_L_TO_R,
in declaration at line 179 *)
    type
      PXmStringDirection = ^TXmStringDirection;
      TXmStringDirection = byte;

      PXmString = ^TXmString;
      TXmString = P_XmStringRec;
    { opaque to outside  }

      PXmStringTable = ^TXmStringTable;
      TXmStringTable = PXmString;
    { opaque to outside  }

      PXmStringCharSet = ^TXmStringCharSet;
      TXmStringCharSet = Pchar;
    { Null term string  }

      PXmStringTag = ^TXmStringTag;
      TXmStringTag = Pchar;
    { Null term string  }

      PXmStringComponentType = ^TXmStringComponentType;
      TXmStringComponentType = byte;
    { component tags  }

      PXmFontListEntry = ^TXmFontListEntry;
      TXmFontListEntry = ^P_XmRenditionRec;
    { opaque to outside  }

      PXmFontList = ^TXmFontList;
      TXmFontList = ^P_XmRenderTableRec;
    { opaque to outside  }

      PXmFontContext = ^TXmFontContext;
      TXmFontContext = PXmFontListContextRec;
    { opaque to outside  }

      PXmStringContext = ^TXmStringContext;
      TXmStringContext = P_XmStringContextRec;
    { opaque to outside  }

      PXmString = ^TXmString;
      TXmString = P_XmStringRec;
    { opaque to outside  }

      PXmStringContext = ^TXmStringContext;
      TXmStringContext = P_XmStringContextRec;
    { opaque to outside  }
(* error 
enum{	XmSTRING_COMPONENT_UNKNOWN,	  XmSTRING_COMPONENT_CHARSET,
    { 13-125 reserved  }
in declaration at line 204 *)

    const
      XmSTRING_COMPONENT_FONTLIST_ELEMENT_TAG = XmSTRING_COMPONENT_CHARSET;      
      XmSTRING_COMPONENT_TAG = XmSTRING_COMPONENT_CHARSET;      

    { was #define dname def_expr }
    function XmSTRING_COMPONENT_END : TXmStringComponentType;      

    { was #define dname def_expr }
    function XmSTRING_COMPONENT_USER_BEGIN : TXmStringComponentType;      

    { 128-255 are user tags  }
    { was #define dname def_expr }
    function XmSTRING_COMPONENT_USER_END : TXmStringComponentType;      

    type
      PXmTextType = ^TXmTextType;
      TXmTextType =  Longint;
      Const
        XmCHARSET_TEXT = 0;
        XmMULTIBYTE_TEXT = 1;
        XmWIDECHAR_TEXT = 2;
        XmNO_TEXT = 3;
;
    type
      PXmParseModel = ^TXmParseModel;
      TXmParseModel =  Longint;
      Const
        XmOUTPUT_ALL = 0;
        XmOUTPUT_BETWEEN = 1;
        XmOUTPUT_BEGINNING = 2;
        XmOUTPUT_END = 3;
        XmOUTPUT_BOTH = 4;
;
    type
      PXmIncludeStatus = ^TXmIncludeStatus;
      TXmIncludeStatus = byte;
(* error 
enum {
in declaration at line 230 *)
    { We are making an attempt (perhaps unnecessaryily) to keep our style
       constants the same as the equivalent Xlib style constants. The first
       Motif specific style constant starts at 32 so that the consortium can
       add constants to their list without overlapping with ours.  }

      PXmICCEncodingStyle = ^TXmICCEncodingStyle;
      TXmICCEncodingStyle =  Longint;
      Const
        XmSTYLE_STRING = XStringStyle;
        XmSTYLE_COMPOUND_TEXT = XCompoundTextStyle;
        XmSTYLE_TEXT = XTextStyle;
        XmSTYLE_STANDARD_ICC_TEXT = XStdICCTextStyle;
        XmSTYLE_LOCALE = 32;
        XmSTYLE_COMPOUND_STRING = 33;
;
    {***************
     *
     * XmParseTable structure defines. These must be here (at the start of
     * the file) because they are used later on.
     *
     *************** }
    type
      PXmParseMapping = ^TXmParseMapping;
      TXmParseMapping = P_XmParseMappingRec;
    { opaque  }

      PXmParseTable = ^TXmParseTable;
      TXmParseTable = PXmParseMapping;
    { A special pattern used to match a change of character direction.  }

    const
      XmDIRECTION_CHANGE = NULL;      
    type

      TXmParseProc = function (in_out:PXtPointer; text_end:TXtPointer; _type:TXmTextType; locale_tag:TXmStringTag; entry:TXmParseMapping; 
                   pattern_length:longint; str_include:PXmString; call_data:TXtPointer):TXmIncludeStatus;cdecl;
    {***************
     *
     * XmTabList structure defines. These must be here (at the start of the file) 
     * becaused they are used later on.
     *
     *************** }

      PXmOffsetModel = ^TXmOffsetModel;
      TXmOffsetModel =  Longint;
      Const
        XmABSOLUTE = 0;
        XmRELATIVE = 1;
;
    type
      PXmTab = ^TXmTab;
      TXmTab = P_XmTabRec;
    { opaque  }

      PXmTabList = ^TXmTabList;
      TXmTabList = P_XmTabListRec;
    { opaque  }
    {***************
     *
     * XmRenderTable structure defines. These must be here (at the start of the file) 
     * becaused they are used later on.
     *
     *************** }
    { XmRendition declarations  }

      PXmRendition = ^TXmRendition;
      TXmRendition = ^P_XmRenditionRec;
    { opaque  }

      PXmRenderTable = ^TXmRenderTable;
      TXmRenderTable = ^P_XmRenderTableRec;
    { opaque  }
    { For XmFontListAdd and XmFontListAppendEntry.  }

      PXmMergeMode = ^TXmMergeMode;
      TXmMergeMode =  Longint;
      Const
        XmSKIP = 0;
        XmMERGE_REPLACE = 1;
        XmMERGE_OLD = 2;
        XmMERGE_NEW = 3;
        XmDUPLICATE = 4;
;
      XmAS_IS = 255;      
      XmFORCE_COLOR = 1;      

    { was #define dname def_expr }
    function XmUNSPECIFIED_PIXEL : TPixel;      

    const
      XmDEFAULT_SELECT_COLOR = XmUNSPECIFIED_PIXEL;      
      XmREVERSED_GROUND_COLORS = XmDEFAULT_SELECT_COLOR-1;      
      XmHIGHLIGHT_COLOR = XmREVERSED_GROUND_COLORS-1;      
(* error 
enum { XmUNSPECIFIED_LOAD_MODEL, XmLOAD_DEFERRED, XmLOAD_IMMEDIATE }; 
in declaration at line 307 *)
    {***********************************************************************
     *  Primitive Resources and define values
     *********************************************************************** }
    { size policy values   }
(* error 
enum{	XmCHANGE_ALL,			XmCHANGE_NONE,
in declaration at line 319 *)
    {  unit type values   }
(* error 
enum{	XmPIXELS,			Xm100TH_MILLIMETERS,
in declaration at line 328 *)
    { DeleteResponse values  }
(* error 
enum{	XmDESTROY,			XmUNMAP,
in declaration at line 334 *)
(* error 
enum{	XmEXPLICIT,			XmPOINTER
in declaration at line 336 *)
    {***********************************************************************
     *  Navigation defines 
     *********************************************************************** }
(* error 
enum{	XmNONE,				XmTAB_GROUP,
in declaration at line 343 *)
      XmDYNAMIC_DEFAULT_TAB_GROUP = 255;      
    {***********************************************************************
     * Audible warning
     *********************************************************************** }
(* error 
enum{	/* XmNONE */			XmBELL = 1
    { XmNONE  }in declaration at line 352 *)
    {***********************************************************************
     * Input Manager defines
     *********************************************************************** }
(* error 
enum {
in declaration at line 361 *)
    type
      PXmInputPolicy = ^TXmInputPolicy;
      TXmInputPolicy = byte;
    {***********************************************************************
     *  Menu defines
     *********************************************************************** }
(* error 
enum{	XmNO_ORIENTATION,		XmVERTICAL,
in declaration at line 371 *)
(* error 
enum{	XmWORK_AREA,			XmMENU_BAR,
in declaration at line 375 *)
(* error 
enum{	XmNO_PACKING,			XmPACK_TIGHT,
in declaration at line 378 *)
(* error 
enum{/* XmALIGNMENT_BASELINE_TOP,	XmALIGNMENT_CENTER,
    { XmALIGNMENT_BASELINE_TOP,	XmALIGNMENT_CENTER,
    	XmALIGNMENT_BASELINE_BOTTOM,  }in declaration at line 382 *)
(* error 
enum{	XmTEAR_OFF_ENABLED,		XmTEAR_OFF_DISABLED
in declaration at line 384 *)
(* error 
enum{	XmUNPOST,		 	XmUNPOST_AND_REPLAY
in declaration at line 386 *)
(* error 
enum{   XmLAST_POSITION = -1,           XmFIRST_POSITION
in declaration at line 388 *)
(* error 
enum{	XmPOPUP_DISABLED = 0,	XmPOPUP_KEYBOARD = 1,
in declaration at line 390 *)
    {***********************************************************************
     *  Color Selector defines
     *********************************************************************** }

      PXmColorMode = ^TXmColorMode;
      TXmColorMode =  Longint;
      Const
        XmListMode = 0;
        XmScaleMode = 1;
;
    {***********************************************************************
     *  Column defines
     *********************************************************************** }
(* error 
enum { XmFILL_UNSPECIFIED, XmFILL_FLUSH, XmFILL_RAGGED };
in declaration at line 402 *)
(* error 
enum { XmDISTRIBUTE_TIGHT, XmDISTRIBUTE_SPREAD };
in declaration at line 404 *)
    {***********************************************************************
     *  ComboBox defines
     *********************************************************************** }
(* error 
enum{	XmCOMBO_BOX=0,		XmDROP_DOWN_COMBO_BOX,
in declaration at line 412 *)
(* error 
enum{	/* XmNONE */ XmQUICK_NAVIGATE = 1, XmINVALID_MATCH_BEHAVIOR
    { XmNONE  }in declaration at line 415 *)
(* error 
enum{   XmZERO_BASED,		XmONE_BASED
in declaration at line 418 *)
      XmINVALID_POSITION = -(1);      
    {***********************************************************************
     *  Icon & Button Box defines
     *********************************************************************** }
    type
      PXmIconPlacement = ^TXmIconPlacement;
      TXmIconPlacement =  Longint;
      Const
        XmIconTop = 0;
        XmIconLeft = 1;
        XmIconRight = 2;
        XmIconBottom = 3;
        XmIconOnly = 4;
        XmIconNone = 5;
;
    type
      PXmFillOption = ^TXmFillOption;
      TXmFillOption =  Longint;
      Const
        XmFillNone = 0;
        XmFillMajor = 1;
        XmFillMinor = 2;
        XmFillAll = 3;
;
    {***********************************************************************
     * Hierarchy/Tree/Outline defines
     *********************************************************************** }
    type
      PXmHierarchyNodeState = ^TXmHierarchyNodeState;
      TXmHierarchyNodeState =  Longint;
      Const
        XmAlwaysOpen = 0;
        XmOpen = 1;
        XmClosed = 2;
        XmHidden = 3;
        XmNotInHierarchy = 4;
;
    type
      PXmTreeConnectStyle = ^TXmTreeConnectStyle;
      TXmTreeConnectStyle =  Longint;
      Const
        XmTreeLadder = 0;
        XmTreeDirect = 1;
;
    type
      PXmTreeCompressStyle = ^TXmTreeCompressStyle;
      TXmTreeCompressStyle =  Longint;
      Const
        XmTreeCompressNone = 0;
        XmTreeCompressLeaves = 1;
        XmTreeCompressAll = 2;
;
    {***********************************************************************
     *  Label/Frame defines
     *********************************************************************** }
(* error 
enum{	XmALIGNMENT_BEGINNING,		XmALIGNMENT_CENTER,
in declaration at line 456 *)
(* error 
enum{   XmALIGNMENT_BASELINE_TOP,    /* XmALIGNMENT_CENTER, */
    { XmALIGNMENT_CENTER,  }
in declaration at line 460 *)
    { new enum introduced in 2.0 to clear up the confusion in
       widget top/bottom attachment  }
      XmALIGNMENT_CHILD_TOP = XmALIGNMENT_WIDGET_BOTTOM;      
      XmALIGNMENT_CHILD_BOTTOM = XmALIGNMENT_WIDGET_TOP;      
    {***********************************************************************
     *  Frame defines
     *********************************************************************** }
(* error 
enum{	XmFRAME_GENERIC_CHILD,          XmFRAME_WORKAREA_CHILD,
in declaration at line 472 *)
    {***********************************************************************
     *  ToggleButton  defines
     *********************************************************************** }
(* error 
enum{	XmN_OF_MANY = 1,		XmONE_OF_MANY,
in declaration at line 479 *)
    {***********************************************************************
     *  Form defines
     *********************************************************************** }
(* error 
enum{	XmATTACH_NONE,			XmATTACH_FORM,
in declaration at line 488 *)
(* error 
enum{	XmRESIZE_NONE,			XmRESIZE_GROW,
in declaration at line 491 *)
    {***********************************************************************
     *  TabBox/TabStack defines
     *********************************************************************** }
    type
      PXmTabStyle = ^TXmTabStyle;
      TXmTabStyle =  Longint;
      Const
        XmTABS_SQUARED = 0;
        XmTABS_ROUNDED = 1;
        XmTABS_BEVELED = 2;
;
    type
      PXmTabMode = ^TXmTabMode;
      TXmTabMode =  Longint;
      Const
        XmTABS_BASIC = 0;
        XmTABS_STACKED = 1;
        XmTABS_STACKED_STATIC = 2;
        XmTABS_SCROLLED = 3;
        XmTABS_OVERLAYED = 4;
;
    type
      PXmTabOrientation = ^TXmTabOrientation;
      TXmTabOrientation =  Longint;
      Const
        XmTAB_ORIENTATION_DYNAMIC = 0;
        XmTABS_RIGHT_TO_LEFT = 1;
        XmTABS_LEFT_TO_RIGHT = 2;
        XmTABS_TOP_TO_BOTTOM = 3;
        XmTABS_BOTTOM_TO_TOP = 4;
;
    type
      PXmTabEdge = ^TXmTabEdge;
      TXmTabEdge =  Longint;
      Const
        XmTAB_EDGE_TOP_LEFT = 0;
        XmTAB_EDGE_BOTTOM_RIGHT = 1;
;
    type
      PXmTabArrowPlacement = ^TXmTabArrowPlacement;
      TXmTabArrowPlacement =  Longint;
      Const
        XmTAB_ARROWS_ON_RIGHT = 0;
        XmTAB_ARROWS_ON_LEFT = 1;
        XmTAB_ARROWS_SPLIT = 2;
;
(* error 
enum {XmCR_TAB_SELECTED, XmCR_TAB_UNSELECTED};
in declaration at line 510 *)
    type
      PXmTabSide = ^TXmTabSide;
      TXmTabSide =  Longint;
      Const
        XmTABS_ON_TOP = 0;
        XmTABS_ON_BOTTOM = 1;
        XmTABS_ON_RIGHT = 2;
        XmTABS_ON_LEFT = 3;
;
    type
      PXmPixmapPlacement = ^TXmPixmapPlacement;
      TXmPixmapPlacement =  Longint;
      Const
        XmPIXMAP_TOP = 0;
        XmPIXMAP_BOTTOM = 1;
        XmPIXMAP_RIGHT = 2;
        XmPIXMAP_LEFT = 3;
        XmPIXMAP_NONE = 4;
        XmPIXMAP_ONLY = 5;
;
    type
      PXmTabValueMode = ^TXmTabValueMode;
      TXmTabValueMode =  Longint;
      Const
        XmTAB_VALUE_COPY = 0;
        XmTAB_VALUE_SHARE = 1;
;
    type
      PXmTabResult = ^TXmTabResult;
      TXmTabResult =  Longint;
      Const
        XmTAB_CMP_VISUAL = 0;
        XmTAB_CMP_SIZE = 1;
        XmTAB_CMP_EQUAL = 2;
;
    type
      PXmTabStackCallbackStruct = ^TXmTabStackCallbackStruct;
      TXmTabStackCallbackStruct = record
          reason : longint;
          event : PXEvent;
          selected_child : TWidget;
        end;

      PXmTabBoxCallbackStruct = ^TXmTabBoxCallbackStruct;
      TXmTabBoxCallbackStruct = record
          reason : longint;
          event : PXEvent;
          tab_index : longint;
          old_index : longint;
        end;
    {***************************************************************************
     *  Callback reasons 
     *************************************************************************** }
(* error 
enum{	XmCR_NONE,			XmCR_HELP,
    { required for BC. See CR 9158  }
in declaration at line 579 *)
    {***********************************************************************
     *  new ScrollBar showArrows  define
     *********************************************************************** }
(* error 
enum{	/* XmNONE */		XmEACH_SIDE = 1,
    { XmNONE  }in declaration at line 587 *)
    {***********************************************************************
     *  Sliding mode
     *********************************************************************** }
(* error 
enum{	XmSLIDER,		XmTHERMOMETER} ;
in declaration at line 594 *)
    {***********************************************************************
     *  Slider Visual
     *********************************************************************** }
(* error 
enum{	XmBACKGROUND_COLOR,     XmFOREGROUND_COLOR, 
in declaration at line 602 *)
    {***********************************************************************
     *  Slider Mark
     *********************************************************************** }
(* error 
enum{	/* XmNONE, */           XmETCHED_LINE = 1, 
    { XmNONE,  }in declaration at line 610 *)
    {***********************************************************************
     *  new Scale showValue 
     *********************************************************************** }
(* error 
enum{	/* XmNONE */		XmNEAR_SLIDER = 1,
    { XmNONE  }in declaration at line 619 *)
    {***********************************************************************
     *  new ScrolledWindow/MainWindow chidType
     *********************************************************************** }
    { XmWORK_AREA, XmMENU_BAR and XmSEPARATOR have to match the existing ones  }
(* error 
enum{	/* XmWORK_AREA = 0, XmMENU_BAR = 1, */ 
    { XmWORK_AREA = 0, XmMENU_BAR = 1,  }    { XmSEPARATOR = 5  }
in declaration at line 635 *)
    {***********************************************************************
     *  new ScrolledWindow auto drag enum
     *********************************************************************** }
(* error 
enum{	XmAUTO_DRAG_ENABLED,		XmAUTO_DRAG_DISABLED
in declaration at line 642 *)
    {***********************************************************************
     *  new Display enable warp enum
     *********************************************************************** }
(* error 
enum{	XmENABLE_WARP_ON,		XmENABLE_WARP_OFF
in declaration at line 649 *)
    {***********************************************************************
     *  new Display enable btn1 transfer enum
     *********************************************************************** }
(* error 
enum{   XmOFF,				XmBUTTON2_ADJUST,
in declaration at line 656 *)
    {***********************************************************************
     * auto_selection_type
     *********************************************************************** }
(* error 
enum{   XmAUTO_UNSET,                   XmAUTO_BEGIN,
in declaration at line 665 *)
    {***********************************************************************
     *  Callback structures 
     *********************************************************************** }

      PXmAnyCallbackStruct = ^TXmAnyCallbackStruct;
      TXmAnyCallbackStruct = record
          reason : longint;
          event : PXEvent;
        end;

      PXmArrowButtonCallbackStruct = ^TXmArrowButtonCallbackStruct;
      TXmArrowButtonCallbackStruct = record
          reason : longint;
          event : PXEvent;
          click_count : longint;
        end;

      PXmDragStartCallbackStruct = ^TXmDragStartCallbackStruct;
      TXmDragStartCallbackStruct = record
          reason : longint;
          event : PXEvent;
          widget : TWidget;
          doit : TBoolean;
        end;
      TXmDragStartCallback = PXmDragStartCallbackStruct;
      PXmDragStartCallback = ^TXmDragStartCallback;

      PXmComboBoxCallbackStruct = ^TXmComboBoxCallbackStruct;
      TXmComboBoxCallbackStruct = record
          reason : longint;
          event : PXEvent;
          item_or_text : TXmString;
          item_position : longint;
        end;

      PXmDrawingAreaCallbackStruct = ^TXmDrawingAreaCallbackStruct;
      TXmDrawingAreaCallbackStruct = record
          reason : longint;
          event : PXEvent;
          window : TWindow;
        end;

      PXmDrawnButtonCallbackStruct = ^TXmDrawnButtonCallbackStruct;
      TXmDrawnButtonCallbackStruct = record
          reason : longint;
          event : PXEvent;
          window : TWindow;
          click_count : longint;
        end;

      PXmPushButtonCallbackStruct = ^TXmPushButtonCallbackStruct;
      TXmPushButtonCallbackStruct = record
          reason : longint;
          event : PXEvent;
          click_count : longint;
        end;

      PXmRowColumnCallbackStruct = ^TXmRowColumnCallbackStruct;
      TXmRowColumnCallbackStruct = record
          reason : longint;
          event : PXEvent;
          widget : TWidget;
          data : Pchar;
          callbackstruct : Pchar;
        end;

      PXmScrollBarCallbackStruct = ^TXmScrollBarCallbackStruct;
      TXmScrollBarCallbackStruct = record
          reason : longint;
          event : PXEvent;
          value : longint;
          pixel : longint;
        end;

      PXmToggleButtonCallbackStruct = ^TXmToggleButtonCallbackStruct;
      TXmToggleButtonCallbackStruct = record
          reason : longint;
          event : PXEvent;
          set : longint;
        end;

      PXmListCallbackStruct = ^TXmListCallbackStruct;
      TXmListCallbackStruct = record
          reason : longint;
          event : PXEvent;
          item : TXmString;
          item_length : longint;
          item_position : longint;
          selected_items : PXmString;
          selected_item_count : longint;
          selected_item_positions : Plongint;
          selection_type : char;
          auto_selection_type : char;
        end;

      PXmSelectionBoxCallbackStruct = ^TXmSelectionBoxCallbackStruct;
      TXmSelectionBoxCallbackStruct = record
          reason : longint;
          event : PXEvent;
          value : TXmString;
          length : longint;
        end;

      PXmCommandCallbackStruct = ^TXmCommandCallbackStruct;
      TXmCommandCallbackStruct = record
          reason : longint;
          event : PXEvent;
          value : TXmString;
          length : longint;
        end;

      PXmFileSelectionBoxCallbackStruct = ^TXmFileSelectionBoxCallbackStruct;
      TXmFileSelectionBoxCallbackStruct = record
          reason : longint;
          event : PXEvent;
          value : TXmString;
          length : longint;
          mask : TXmString;
          mask_length : longint;
          dir : TXmString;
          dir_length : longint;
          pattern : TXmString;
          pattern_length : longint;
        end;

      PXmScaleCallbackStruct = ^TXmScaleCallbackStruct;
      TXmScaleCallbackStruct = record
          reason : longint;
          event : PXEvent;
          value : longint;
        end;

      PXmPopupHandlerCallbackStruct = ^TXmPopupHandlerCallbackStruct;
      TXmPopupHandlerCallbackStruct = record
          reason : longint;
          event : PXEvent;
          menuToPost : TWidget;
          postIt : TBoolean;
          target : TWidget;
        end;

      PXmContainerOutlineCallbackStruct = ^TXmContainerOutlineCallbackStruct;
      TXmContainerOutlineCallbackStruct = record
          reason : longint;
          event : PXEvent;
          item : TWidget;
          new_outline_state : byte;
        end;

      PXmContainerSelectCallbackStruct = ^TXmContainerSelectCallbackStruct;
      TXmContainerSelectCallbackStruct = record
          reason : longint;
          event : PXEvent;
          selected_items : TWidgetList;
          selected_item_count : longint;
          auto_selection_type : byte;
        end;

      PXmNotebookCallbackStruct = ^TXmNotebookCallbackStruct;
      TXmNotebookCallbackStruct = record
          reason : longint;
          event : PXEvent;
          page_number : longint;
          page_widget : TWidget;
          prev_page_number : longint;
          prev_page_widget : TWidget;
        end;

      PXmDisplayCallbackStruct = ^TXmDisplayCallbackStruct;
      TXmDisplayCallbackStruct = record
          reason : longint;
          event : PXEvent;
          rendition : TXmRendition;
          font_name : Pchar;
          render_table : TXmRenderTable;
          tag : TXmStringTag;
        end;
{$ifdef PRINTING_SUPPORTED}
    { XmCR_START_JOB, XmCR_END_JOB, XmCR_PAGE_SETUP  }
    { in_out  }

      PXmPrintShellCallbackStruct = ^TXmPrintShellCallbackStruct;
      TXmPrintShellCallbackStruct = record
          reason : longint;
          event : PXEvent;
          context : TXPContext;
          last_page : TBoolean;
          detail : TXtPointer;
        end;
{$endif}
    { PRINTING_SUPPORTED  }
    {***********************************************************************
     *  PushButton defines
     *********************************************************************** }
(* error 
enum{	XmMULTICLICK_DISCARD,		XmMULTICLICK_KEEP
in declaration at line 859 *)
    {***********************************************************************
     *  DrawnButton defines
     *********************************************************************** }
(* error 
enum{	XmSHADOW_IN = 7,		XmSHADOW_OUT
in declaration at line 865 *)
    {***********************************************************************
     *  Arrow defines
     *********************************************************************** }
(* error 
enum{	XmARROW_UP,			XmARROW_DOWN,
in declaration at line 872 *)
    {***********************************************************************
     *  Separator defines
     *  Note: XmINVALID_SEPARATOR_TYPE marks the last+1 separator type
     *********************************************************************** }
(* error 
enum{	XmNO_LINE,			XmSINGLE_LINE,
in declaration at line 883 *)
(* error 
enum{	XmPIXMAP = 1,			XmSTRING,
in declaration at line 887 *)
    {***********************************************************************
     *  Drag and Drop defines
     *********************************************************************** }
(* error 
enum{	XmWINDOW,		     /* XmPIXMAP, */
    { XmPIXMAP,  }
in declaration at line 895 *)
    {***********************************************************************
     *  ScrollBar defines
     *********************************************************************** }
(* error 
enum{	XmMAX_ON_TOP,			XmMAX_ON_BOTTOM,
in declaration at line 903 *)
    {***********************************************************************
     *									*
     * List Widget defines							*
     *									*
     *********************************************************************** }
(* error 
enum{	XmSINGLE_SELECT,		XmMULTIPLE_SELECT,
in declaration at line 912 *)
(* error 
enum{	XmSTATIC,			XmDYNAMIC
in declaration at line 914 *)
(* error 
enum{ XmNORMAL_MODE,			XmADD_MODE
in declaration at line 916 *)
    {***********************************************************************
     *                                                                      *
     * Container Widget defines                                             *
     *                                                                      *
     *********************************************************************** }
    { XmRAutomaticSelection  }
(* error 
enum {  XmNO_AUTO_SELECT,
in declaration at line 926 *)
    { XmRLineStyle  }
(* error 
enum {  /* XmNO_LINE */
    { XmNO_LINE  }
in declaration at line 931 *)
    { XmREntryViewType  }
(* error 
enum {  /* XmLARGE_ICON */
    { XmLARGE_ICON  }
    { XmSMALL_ICON  }
in declaration at line 937 *)
    { XmRSpatialIncludeModel  }
(* error 
enum {  XmAPPEND,
in declaration at line 943 *)
    { XmRLayoutType  }
(* error 
enum {  XmOUTLINE,
in declaration at line 949 *)
    { XmNoutlineButtonPolicy  }
(* error 
enum {	XmOUTLINE_BUTTON_PRESENT,
in declaration at line 954 *)
    { XmRSpatialPlaceStyle  }
(* error 
enum {  /* XmNONE */
    { XmNONE  }
in declaration at line 960 *)
    { XmRPrimaryOwnership  }
(* error 
enum {	XmOWN_NEVER,
in declaration at line 967 *)
    { XmRSpatialResizeModel  }
(* error 
enum {  XmGROW_MINOR,
in declaration at line 973 *)
    { XmRSelectionTechnique  }
(* error 
enum {  XmMARQUEE,
in declaration at line 981 *)
    { XmRSpatialSnapModel  }
(* error 
enum {  /* XmNONE */
    { XmNONE  }
in declaration at line 987 *)
    { XmROutlineState  }
(* error 
enum {  XmCOLLAPSED,
in declaration at line 992 *)
    {***********************************************************************
     *                                                                      *
     * IconGadget defines                                                   *
     *                                                                      *
     *********************************************************************** }
    { XmRViewType  }
(* error 
enum {  XmLARGE_ICON,
in declaration at line 1003 *)
    { XmRVisualEmphasis  }
(* error 
enum {  XmSELECTED,
in declaration at line 1008 *)
    {***********************************************************************
     *                                                                      *
     * Notebook Widget defines                                              *
     *                                                                      *
     *********************************************************************** }

    const
      XmUNSPECIFIED_PAGE_NUMBER = -(32768);      
    { XmRBindingType  }
(* error 
enum {  /* XmNONE */
    { XmNONE  }
    { XmPIXMAP  }
in declaration at line 1024 *)
    { XmRNBChildType  }
(* error 
enum {  /* XmNONE */
    { XmNONE  }
in declaration at line 1033 *)
    {***********************************************************************
     *									*
     * Spin button defines.							*
     *									*
     *********************************************************************** }
    { XmNarrowOrientation  }
(* error 
{
in declaration at line 1046 *)
    { XmNarrowLayout  }
(* error 
{
in declaration at line 1056 *)
    { XmNarrowSensitivity and XmNdefaultArrowSensitivity  }
    { Please note that these arrows form the proper values 
       for a bit mask.  }
(* error 
{
in declaration at line 1068 *)
    { XmNpositionType  }
(* error 
{
in declaration at line 1075 *)
    { XmNspinButtonChildType  }
(* error 
{
    { XmPIXMAP = 1  }
    { XmSTRING  }
in declaration at line 1083 *)
    { Return values for Xm[Simple]SpinBoxValidatePosition  }
(* error 
{
in declaration at line 1093 *)
    type
      PXmSpinBoxCallbackStruct = ^TXmSpinBoxCallbackStruct;
      TXmSpinBoxCallbackStruct = record
          reason : longint;
          event : PXEvent;
          widget : TWidget;
          doit : TBoolean;
          position : longint;
          value : TXmString;
          crossed_boundary : TBoolean;
        end;
    {***********************************************************************
     *									*
     * Scrolled Window defines.						*
     *									*
     *********************************************************************** }
(* error 
enum{	XmVARIABLE,			XmCONSTANT,
in declaration at line 1115 *)
(* error 
enum{	XmAUTOMATIC,			XmAPPLICATION_DEFINED
in declaration at line 1117 *)
(* error 
enum{	/* XmSTATIC */			XmAS_NEEDED = 1
    { XmSTATIC  }in declaration at line 1119 *)

    const
      SW_TOP = 1;      
      SW_BOTTOM = 0;      
      SW_LEFT = 2;      
      SW_RIGHT = 0;      
      XmTOP_LEFT = SW_TOP or SW_LEFT;      
      XmBOTTOM_LEFT = SW_BOTTOM or SW_LEFT;      
      XmTOP_RIGHT = SW_TOP or SW_RIGHT;      
      XmBOTTOM_RIGHT = SW_BOTTOM or SW_RIGHT;      
    {***********************************************************************
     *									*
     * MainWindow Resources                                                 *
     *									*
     *********************************************************************** }
(* error 
enum{	XmCOMMAND_ABOVE_WORKSPACE,	XmCOMMAND_BELOW_WORKSPACE
in declaration at line 1138 *)
    {***********************************************************************
     *									*
     * Text Widget defines							*
     *									*
     *********************************************************************** }
(* error 
enum{	XmMULTI_LINE_EDIT,		XmSINGLE_LINE_EDIT
in declaration at line 1146 *)
    type
      PXmTextDirection = ^TXmTextDirection;
      TXmTextDirection =  Longint;
      Const
        XmTEXT_FORWARD = 0;
        XmTEXT_BACKWARD = 1;
;
    type
      PXmTextPosition = ^TXmTextPosition;
      TXmTextPosition = longint;

      PXmTextFormat = ^TXmTextFormat;
      TXmTextFormat = TAtom;
    { 8-bit text.  }

    { was #define dname def_expr }
    function XmFMT_8_BIT : TXmTextFormat;      

    { 16-bit text.  }
    { was #define dname def_expr }
    function XmFMT_16_BIT : TXmTextFormat;      

    { For backwards compatibility only. }
    const
      FMT8BIT = XmFMT_8_BIT;      
    { For backwards compatibility only. }
      FMT16BIT = XmFMT_16_BIT;      
    type
      PXmTextScanType = ^TXmTextScanType;
      TXmTextScanType =  Longint;
      Const
        XmSELECT_POSITION = 0;
        XmSELECT_WHITESPACE = 1;
        XmSELECT_WORD = 2;
        XmSELECT_LINE = 3;
        XmSELECT_ALL = 4;
        XmSELECT_PARAGRAPH = 5;
        XmSELECT_OUT_LINE = 6;
;
    type
      PXmHighlightMode = ^TXmHighlightMode;
      TXmHighlightMode =  Longint;
      Const
        XmHIGHLIGHT_NORMAL = 0;
        XmHIGHLIGHT_SELECTED = 1;
        XmHIGHLIGHT_SECONDARY_SELECTED = 2;
        XmSEE_DETAIL = 3;
;
    { XmTextBlock's are used to pass text around.  }
    { Pointer to data.  }
    { Number of bytes of data.  }
    { Representations format  }
    type
      PXmTextBlockRec = ^TXmTextBlockRec;
      TXmTextBlockRec = record
          ptr : Pchar;
          length : longint;
          format : TXmTextFormat;
        end;
      TXmTextBlock = PXmTextBlockRec;
      PXmTextBlock = ^TXmTextBlock;

      PXmTextVerifyCallbackStruct = ^TXmTextVerifyCallbackStruct;
      TXmTextVerifyCallbackStruct = record
          reason : longint;
          event : PXEvent;
          doit : TBoolean;
          currInsert : longint;
          newInsert : longint;
          startPos : longint;
          endPos : longint;
          text : TXmTextBlock;
        end;
      TXmTextVerifyPtr = PXmTextVerifyCallbackStruct;
      PXmTextVerifyPtr = ^TXmTextVerifyPtr;
    { XmTextBlockWcs's are used in 1.2 modifyVerifyWcs callbacks for Text[Field]
     * widgets.  }
    { Pointer to data.  }
    { Number of characters (not bytes) of data.  }

      PXmTextBlockRecWcs = ^TXmTextBlockRecWcs;
      TXmTextBlockRecWcs = record
          wcsptr : Pwchar_t;
          length : longint;
        end;
      TXmTextBlockWcs = PXmTextBlockRecWcs;
      PXmTextBlockWcs = ^TXmTextBlockWcs;

      PXmTextVerifyCallbackStructWcs = ^TXmTextVerifyCallbackStructWcs;
      TXmTextVerifyCallbackStructWcs = record
          reason : longint;
          event : PXEvent;
          doit : TBoolean;
          currInsert : longint;
          newInsert : longint;
          startPos : longint;
          endPos : longint;
          text : TXmTextBlockWcs;
        end;
      TXmTextVerifyPtrWcs = PXmTextVerifyCallbackStructWcs;
      PXmTextVerifyPtrWcs = ^TXmTextVerifyPtrWcs;
    { functions renamed after 1.0 release due to resource name overlap  }

    const
      XmTextGetTopPosition = XmTextGetTopCharacter;      
      XmTextSetTopPosition = XmTextSetTopCharacter;      
      XmCOPY_FAILED = 0;      
      XmCOPY_SUCCEEDED = 1;      
      XmCOPY_TRUNCATED = 2;      
    {***********************************************************************
     *									*
     *  DIALOG defines..  BulletinBoard and things common to its subclasses *
     *          CommandBox    MessageBox    Selection    FileSelection      *
     *									*
     *********************************************************************** }
    { child type defines for Xm...GetChild()  }
(* error 
enum{	XmDIALOG_NONE,			XmDIALOG_APPLY_BUTTON,
in declaration at line 1236 *)
      XmDIALOG_HISTORY_LIST = XmDIALOG_LIST;      
      XmDIALOG_PROMPT_LABEL = XmDIALOG_SELECTION_LABEL;      
      XmDIALOG_VALUE_TEXT = XmDIALOG_TEXT;      
      XmDIALOG_COMMAND_TEXT = XmDIALOG_TEXT;      
      XmDIALOG_FILE_LIST = XmDIALOG_LIST;      
      XmDIALOG_FILE_LIST_LABEL = XmDIALOG_LIST_LABEL;      
    {  dialog style defines   }
(* error 
enum{	XmDIALOG_MODELESS,		XmDIALOG_PRIMARY_APPLICATION_MODAL,
in declaration at line 1249 *)
    { The following is for compatibility only. Its use is deprecated.
      }
      XmDIALOG_APPLICATION_MODAL = XmDIALOG_PRIMARY_APPLICATION_MODAL;      
    {***********************************************************************
     * XmSelectionBox, XmFileSelectionBox and XmCommand - misc. stuff       *
     ********************************************************************** }
    { Defines for Selection child placement
     }
(* error 
enum{	XmPLACE_TOP,			XmPLACE_ABOVE_SELECTION,
in declaration at line 1263 *)
    { Defines for file type mask:
     }
      XmFILE_DIRECTORY = 1 shl 0;      
      XmFILE_REGULAR = 1 shl 1;      
      XmFILE_ANY_TYPE = XmFILE_DIRECTORY or XmFILE_REGULAR;      
    { Defines for selection dialog type:
     }
(* error 
enum{	XmDIALOG_WORK_AREA,		XmDIALOG_PROMPT,
in declaration at line 1276 *)
    {***********************************************************************
     *  XmMessageBox           stuff not common to other dialogs            *
     ********************************************************************** }
    { defines for dialog type  }
(* error 
enum{	XmDIALOG_TEMPLATE,		XmDIALOG_ERROR,
in declaration at line 1288 *)
    {  Traversal types   }
    type
      PXmVisibility = ^TXmVisibility;
      TXmVisibility =  Longint;
      Const
        XmVISIBILITY_UNOBSCURED = 0;
        XmVISIBILITY_PARTIALLY_OBSCURED = 1;
        XmVISIBILITY_FULLY_OBSCURED = 2;
;
    type
      PXmTraversalDirection = ^TXmTraversalDirection;
      TXmTraversalDirection =  Longint;
      Const
        XmTRAVERSE_CURRENT = 0;
        XmTRAVERSE_NEXT = 1;
        XmTRAVERSE_PREV = 2;
        XmTRAVERSE_HOME = 3;
        XmTRAVERSE_NEXT_TAB_GROUP = 4;
        XmTRAVERSE_PREV_TAB_GROUP = 5;
        XmTRAVERSE_UP = 6;
        XmTRAVERSE_DOWN = 7;
        XmTRAVERSE_LEFT = 8;
        XmTRAVERSE_RIGHT = 9;
        XmTRAVERSE_GLOBALLY_FORWARD = 10;
        XmTRAVERSE_GLOBALLY_BACKWARD = 11;
;
    type
      PXmTraverseObscuredCallbackStruct = ^TXmTraverseObscuredCallbackStruct;
      TXmTraverseObscuredCallbackStruct = record
          reason : longint;
          event : PXEvent;
          traversal_destination : TWidget;
          direction : TXmTraversalDirection;
        end;

      PXmNavigationType = ^TXmNavigationType;
      TXmNavigationType = byte;
    {**********************************************************************
     *
     * SimpleMenu declarations and definitions.
     *
     ********************************************************************** }

      PXmButtonType = ^TXmButtonType;
      TXmButtonType = byte;

      PXmButtonTypeTable = ^TXmButtonTypeTable;
      TXmButtonTypeTable = PXmButtonType;

      PXmKeySymTable = ^TXmKeySymTable;
      TXmKeySymTable = PKeySym;

      PXmStringCharSetTable = ^TXmStringCharSetTable;
      TXmStringCharSetTable = PXmStringCharSet;
(* error 
enum{	XmPUSHBUTTON = 1,		XmTOGGLEBUTTON,
in declaration at line 1332 *)

    const
      XmCHECKBUTTON = XmTOGGLEBUTTON;      
    {**********************************************************************
     *
     * BitmapConversionModel
     *
     ********************************************************************** }
(* error 
enum{	XmMATCH_DEPTH, XmDYNAMIC_DEPTH } ;
in declaration at line 1342 *)
    {***********************************************************************
     *  PrintShell defines
     *********************************************************************** }
(* error 
enum { XmPDM_NOTIFY_FAIL, XmPDM_NOTIFY_SUCCESS } ;
in declaration at line 1349 *)
    {***********************************************************************
     *  MultiList defines
     *********************************************************************** }
(* error 
enum { XmMULTILIST_FOUND, XmMULTILIST_NOT_FOUND };
in declaration at line 1355 *)
    {***********************************************************************
     *  DropDown defines
     *********************************************************************** }
(* error 
enum {
in declaration at line 1366 *)
    { This one cannot be put at the beginning because it needs 
       XmStringTable  }
{$include <Xm/TxtPropCv.h>}
    {*******    BaseClass.c    ******* }
    type

      TXmResourceBaseProc = function (para1:TWidget; para2:TXtPointer):TXtPointer;cdecl;

      PXmSecondaryResourceDataRec = ^TXmSecondaryResourceDataRec;
      TXmSecondaryResourceDataRec = record
          base_proc : TXmResourceBaseProc;
          client_data : TXtPointer;
          name : TString;
          res_class : TString;
          resources : TXtResourceList;
          num_resources : TCardinal;
        end;
      TXmSecondaryResourceData = PXmSecondaryResourceDataRec;
      PXmSecondaryResourceData = ^TXmSecondaryResourceData;
    {*******    Public Function Declarations for BaseClass.c    ******* }

function XmGetSecondaryResourceData(w_class:TWidgetClass; secondaryDataRtn:PPXmSecondaryResourceData):TCardinal;cdecl;external;
    {*******    End Public Function Declarations    ******* }
    {*******    Public Function Declarations for ImageCache.c    ******* }
function XmInstallImage(image:PXImage; image_name:Pchar):TBoolean;cdecl;external;
function XmUninstallImage(image:PXImage):TBoolean;cdecl;external;
function XmGetPixmap(screen:PScreen; image_name:Pchar; foreground:TPixel; background:TPixel):TPixmap;cdecl;external;
function XmGetPixmapByDepth(screen:PScreen; image_name:Pchar; foreground:TPixel; background:TPixel; depth:longint):TPixmap;cdecl;external;
function XmDestroyPixmap(screen:PScreen; pixmap:TPixmap):TBoolean;cdecl;external;
    {*******    End Public Function Declarations    ******* }
    {*******    Public Function Declarations for Resolve.c    ******* }
    {-- XmeResolvePartOffsets is defined in XmP.h.
         These also belong there but for source compatibility, we let 
         them here ---  }
    type
      PXmOffset = ^TXmOffset;
      TXmOffset = longint;

      PXmOffsetPtr = ^TXmOffsetPtr;
      TXmOffsetPtr = PXmOffset;

procedure XmResolveAllPartOffsets(w_class:TWidgetClass; offset:PXmOffsetPtr; constraint_offset:PXmOffsetPtr);cdecl;external;
procedure XmResolvePartOffsets(w_class:TWidgetClass; offset:PXmOffsetPtr);cdecl;external;
    {*******    End Public Function Declarations    ******* }
    {*******    Public Function Declarations for Xm.c    ******* }
procedure XmUpdateDisplay(w:TWidget);cdecl;external;
function XmObjectAtPoint(wid:TWidget; x:TPosition; y:TPosition):TWidget;cdecl;external;
function XmWidgetGetBaselines(wid:TWidget; baselines:PPDimension; line_count:Plongint):TBoolean;cdecl;external;
function XmWidgetGetDisplayRect(wid:TWidget; displayrect:PXRectangle):TBoolean;cdecl;external;
    {*******    End Public Function Declarations    ******* }
    {*******    Primitive.c    ******* }
    {*******    Public Function Declarations for Primitive.c    ******* }
    {*******    End Public Function Declarations    ******* }
    {*******    Public Function Declarations for ResConvert.c    ******* }
procedure XmCvtStringToUnitType(args:TXrmValuePtr; num_args:PCardinal; from_val:PXrmValue; to_val:PXrmValue);cdecl;external;
function XmRegisterSegmentEncoding(fontlist_tag:Pchar; ct_encoding:Pchar):Pchar;cdecl;external;
function XmMapSegmentEncoding(fontlist_tag:Pchar):Pchar;cdecl;external;
function XmCvtCTToXmString(text:Pchar):TXmString;cdecl;external;
function XmCvtTextToXmString(display:PDisplay; args:TXrmValuePtr; num_args:PCardinal; from_val:PXrmValue; to_val:PXrmValue; 
               converter_data:PXtPointer):TBoolean;cdecl;external;
function XmCvtXmStringToCT(_string:TXmString):Pchar;cdecl;external;
function XmCvtXmStringToText(display:PDisplay; args:TXrmValuePtr; num_args:PCardinal; from_val:PXrmValue; to_val:PXrmValue; 
               converter_data:PXtPointer):TBoolean;cdecl;external;
{$ifdef UTF8_SUPPORTED}
function XmCvtXmStringToUTF8String(_string:TXmString):Pchar;cdecl;external;
{$endif}
    {*******    End Public Function Declarations    ******* }
    {*******    Public Function Declarations for ResInd.c    ******* }

function XmConvertStringToUnits(screen:PScreen; spec:TString; orientation:longint; to_type:longint; parse_error:PXtEnum):longint;cdecl;external;
(* error 
                        register int from_type,
(* error 
                        register int from_val,
(* error 
                        register int to_type) ;
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
                        register int from_val,
(* error 
                        register int from_type) ;
 in declarator_list *)
 in declarator_list *)
(* error 
                        register int from_val,
(* error 
                        register int from_type) ;
 in declarator_list *)
 in declarator_list *)
(* error 
                        register int from_val,
(* error 
                        register int to_type) ;
 in declarator_list *)
 in declarator_list *)
(* error 
                        register int from_val,
(* error 
                        register int to_type) ;
 in declarator_list *)
 in declarator_list *)
procedure XmSetFontUnits(display:PDisplay; h_value:longint; v_value:longint);cdecl;external;
procedure XmSetFontUnit(display:PDisplay; value:longint);cdecl;external;
    {*******    End Public Function Declarations    ******* }
    {*******    Public Function Declarations for MenuUtil.c    ******* }
procedure XmSetMenuCursor(display:PDisplay; cursorId:TCursor);cdecl;external;
function XmGetMenuCursor(display:PDisplay):TCursor;cdecl;external;
    {*******    End Public Function Declarations    ******* }
    {*******    Public Function Declarations for Simple.c    ******* }
function XmCreateSimpleMenuBar(parent:TWidget; name:TString; args:TArgList; arg_count:TCardinal):TWidget;cdecl;external;
function XmCreateSimplePopupMenu(parent:TWidget; name:TString; args:TArgList; arg_count:TCardinal):TWidget;cdecl;external;
function XmCreateSimplePulldownMenu(parent:TWidget; name:TString; args:TArgList; arg_count:TCardinal):TWidget;cdecl;external;
function XmCreateSimpleOptionMenu(parent:TWidget; name:TString; args:TArgList; arg_count:TCardinal):TWidget;cdecl;external;
function XmCreateSimpleRadioBox(parent:TWidget; name:TString; args:TArgList; arg_count:TCardinal):TWidget;cdecl;external;
function XmCreateSimpleCheckBox(parent:TWidget; name:TString; args:TArgList; arg_count:TCardinal):TWidget;cdecl;external;
    {*******    End Public Function Declarations    ******* }
    {*******    Public Function Declarations for VaSimple.c   ******* }
function XmVaCreateSimpleMenuBar(parent:TWidget; name:TString; args:array of const):TWidget;cdecl;external;
function XmVaCreateSimpleMenuBar(parent:TWidget; name:TString):TWidget;cdecl;external;
function XmVaCreateSimplePopupMenu(parent:TWidget; name:TString; callback:TXtCallbackProc; args:array of const):TWidget;cdecl;external;
function XmVaCreateSimplePopupMenu(parent:TWidget; name:TString; callback:TXtCallbackProc):TWidget;cdecl;external;
function XmVaCreateSimplePulldownMenu(parent:TWidget; name:TString; post_from_button:longint; callback:TXtCallbackProc; args:array of const):TWidget;cdecl;external;
function XmVaCreateSimplePulldownMenu(parent:TWidget; name:TString; post_from_button:longint; callback:TXtCallbackProc):TWidget;cdecl;external;
function XmVaCreateSimpleOptionMenu(parent:TWidget; name:TString; option_label:TXmString; option_mnemonic:TKeySym; button_set:longint; 
               callback:TXtCallbackProc; args:array of const):TWidget;cdecl;external;
function XmVaCreateSimpleOptionMenu(parent:TWidget; name:TString; option_label:TXmString; option_mnemonic:TKeySym; button_set:longint; 
               callback:TXtCallbackProc):TWidget;cdecl;external;
function XmVaCreateSimpleRadioBox(parent:TWidget; name:TString; button_set:longint; callback:TXtCallbackProc; args:array of const):TWidget;cdecl;external;
function XmVaCreateSimpleRadioBox(parent:TWidget; name:TString; button_set:longint; callback:TXtCallbackProc):TWidget;cdecl;external;
function XmVaCreateSimpleCheckBox(parent:TWidget; name:TString; callback:TXtCallbackProc; args:array of const):TWidget;cdecl;external;
function XmVaCreateSimpleCheckBox(parent:TWidget; name:TString; callback:TXtCallbackProc):TWidget;cdecl;external;
    {*******    End Public Function Declarations    ******* }
    {*******    Public Function Declarations for TrackLoc.c    ******* }
{$if NeedWidePrototypes}
{$else}
{$endif}
    { NeedWidePrototypes  }

function XmTrackingEvent(widget:TWidget; cursor:TCursor; confineTo:longint; confineTo:TBoolean; pev:PXEvent):TWidget;cdecl;external;
{$if NeedWidePrototypes}

function XmTrackingLocate(widget:TWidget; cursor:TCursor; confineTo:longint):TWidget;cdecl;external;
{$else}
(* error 
                        Boolean confineTo) ;
 in declarator_list *)
{$endif}
    { NeedWidePrototypes  }
    {*******    End Public Function Declarations    ******* }
    {*******    Visual.c    ******* }
    type

      TXmColorProc = procedure (bg_color:PXColor; fg_color:PXColor; sel_color:PXColor; ts_color:PXColor; bs_color:PXColor);cdecl;
    {*******    Public Function Declarations for Visual.c    ******* }

function XmSetColorCalculation(proc:TXmColorProc):TXmColorProc;cdecl;external;
function XmGetColorCalculation:TXmColorProc;cdecl;external;
procedure XmGetColors(screen:PScreen; color_map:TColormap; background:TPixel; foreground_ret:PPixel; top_shadow_ret:PPixel; 
                bottom_shadow_ret:PPixel; select_ret:PPixel);cdecl;external;
procedure XmChangeColor(widget:TWidget; background:TPixel);cdecl;external;
    {*******    End Public Function Declarations    ******* }
    {*******    Public Function Declarations for XmString.c    ******* }
function XmStringCreate(text:Pchar; charset:TXmStringCharSet):TXmString;cdecl;external;
function XmStringCreateSimple(text:Pchar):TXmString;cdecl;external;
function XmStringCreateLocalized(text:TString):TXmString;cdecl;external;
{$if NeedWidePrototypes}

function XmStringDirectionCreate(direction:longint):TXmString;cdecl;external;
{$else}
(* error 
                        XmStringDirection direction) ;
 in declarator_list *)
{$endif}
    { NeedWidePrototypes  }

function XmStringSeparatorCreate:TXmString;cdecl;external;
{$if NeedWidePrototypes}

function XmStringSegmentCreate(text:Pchar; charset:TXmStringCharSet; direction:longint; separator:longint):TXmString;cdecl;external;
{$else}
(* error 
                        Boolean separator) ;
 in declarator_list *)
{$endif}
    { NeedWidePrototypes  }

function XmStringLtoRCreate(text:Pchar; charset:TXmStringCharSet):TXmString;cdecl;external;
function XmStringCreateLtoR(text:Pchar; charset:TXmStringCharSet):TXmString;cdecl;external;
function XmStringInitContext(context:PXmStringContext; _string:TXmString):TBoolean;cdecl;external;
procedure XmStringFreeContext(context:TXmStringContext);cdecl;external;
function XmStringGetNextComponent(context:TXmStringContext; text:PPchar; charset:PXmStringCharSet; direction:PXmStringDirection; unknown_tag:PXmStringComponentType; 
               unknown_length:Pword; unknown_value:PPbyte):TXmStringComponentType;cdecl;external;
function XmStringPeekNextComponent(context:TXmStringContext):TXmStringComponentType;cdecl;external;
function XmStringGetNextSegment(context:TXmStringContext; text:PPchar; charset:PXmStringCharSet; direction:PXmStringDirection; separator:PBoolean):TBoolean;cdecl;external;
function XmStringGetLtoR(_string:TXmString; charset:TXmStringCharSet; text:PPchar):TBoolean;cdecl;external;
function XmFontListEntryCreate(tag:Pchar; _type:TXmFontType; font:TXtPointer):TXmFontListEntry;cdecl;external;
function XmFontListEntryCreate_r(tag:Pchar; _type:TXmFontType; font:TXtPointer; wid:TWidget):TXmFontListEntry;cdecl;external;
procedure XmFontListEntryFree(entry:PXmFontListEntry);cdecl;external;
function XmFontListEntryGetFont(entry:TXmFontListEntry; typeReturn:PXmFontType):TXtPointer;cdecl;external;
function XmFontListEntryGetTag(entry:TXmFontListEntry):Pchar;cdecl;external;
function XmFontListAppendEntry(old:TXmFontList; entry:TXmFontListEntry):TXmFontList;cdecl;external;
function XmFontListNextEntry(context:TXmFontContext):TXmFontListEntry;cdecl;external;
function XmFontListRemoveEntry(old:TXmFontList; entry:TXmFontListEntry):TXmFontList;cdecl;external;
function XmFontListEntryLoad(display:PDisplay; fontName:Pchar; _type:TXmFontType; tag:Pchar):TXmFontListEntry;cdecl;external;
function XmFontListCreate(font:PXFontStruct; charset:TXmStringCharSet):TXmFontList;cdecl;external;
function XmFontListCreate_r(font:PXFontStruct; charset:TXmStringCharSet; wid:TWidget):TXmFontList;cdecl;external;
function XmStringCreateFontList(font:PXFontStruct; charset:TXmStringCharSet):TXmFontList;cdecl;external;
function XmStringCreateFontList_r(font:PXFontStruct; charset:TXmStringCharSet; wid:TWidget):TXmFontList;cdecl;external;
procedure XmFontListFree(fontlist:TXmFontList);cdecl;external;
function XmFontListAdd(old:TXmFontList; font:PXFontStruct; charset:TXmStringCharSet):TXmFontList;cdecl;external;
function XmFontListCopy(fontlist:TXmFontList):TXmFontList;cdecl;external;
function XmFontListInitFontContext(context:PXmFontContext; fontlist:TXmFontList):TBoolean;cdecl;external;
function XmFontListGetNextFont(context:TXmFontContext; charset:PXmStringCharSet; font:PPXFontStruct):TBoolean;cdecl;external;
procedure XmFontListFreeFontContext(context:TXmFontContext);cdecl;external;
function XmStringConcat(a:TXmString; b:TXmString):TXmString;cdecl;external;
function XmStringConcatAndFree(a:TXmString; b:TXmString):TXmString;cdecl;external;
function XmStringNConcat(first:TXmString; second:TXmString; n:longint):TXmString;cdecl;external;
function XmStringCopy(_string:TXmString):TXmString;cdecl;external;
function XmStringNCopy(str:TXmString; n:longint):TXmString;cdecl;external;
function XmStringByteCompare(a1:TXmString; b1:TXmString):TBoolean;cdecl;external;
function XmStringCompare(a:TXmString; b:TXmString):TBoolean;cdecl;external;
function XmStringLength(_string:TXmString):longint;cdecl;external;
function XmStringEmpty(_string:TXmString):TBoolean;cdecl;external;
function XmStringIsVoid(_string:TXmString):TBoolean;cdecl;external;
function XmStringHasSubstring(_string:TXmString; substring:TXmString):TBoolean;cdecl;external;
procedure XmStringFree(_string:TXmString);cdecl;external;
function XmStringBaseline(fontlist:TXmFontList; _string:TXmString):TDimension;cdecl;external;
function XmStringWidth(fontlist:TXmFontList; _string:TXmString):TDimension;cdecl;external;
function XmStringHeight(fontlist:TXmFontList; _string:TXmString):TDimension;cdecl;external;
procedure XmStringExtent(fontlist:TXmFontList; _string:TXmString; width:PDimension; height:PDimension);cdecl;external;
function XmStringLineCount(_string:TXmString):longint;cdecl;external;
{$if NeedWidePrototypes}
{$else}
{$endif}
    { NeedWidePrototypes  }

procedure XmStringDraw(d:PDisplay; w:TWindow; fontlist:TXmFontList; _string:TXmString; gc:TGC; 
                x:longint; y:longint; width:longint; align:dword; lay_dir:dword; 
                x:TPosition; y:TPosition; width:TDimension; align:byte; lay_dir:byte; 
                clip:PXRectangle);cdecl;external;
{$if NeedWidePrototypes}
{$else}
{$endif}
    { NeedWidePrototypes  }

procedure XmStringDrawImage(d:PDisplay; w:TWindow; fontlist:TXmFontList; _string:TXmString; gc:TGC; 
                x:longint; y:longint; width:longint; align:dword; lay_dir:dword; 
                x:TPosition; y:TPosition; width:TDimension; align:byte; lay_dir:byte; 
                clip:PXRectangle);cdecl;external;
{$if NeedWidePrototypes}
{$else}
{$endif}
    { NeedWidePrototypes  }

procedure XmStringDrawUnderline(d:PDisplay; w:TWindow; fntlst:TXmFontList; str:TXmString; gc:TGC; 
                x:longint; y:longint; width:longint; align:dword; lay_dir:dword; 
                x:TPosition; y:TPosition; width:TDimension; align:byte; lay_dir:byte; 
                clip:PXRectangle; under:TXmString);cdecl;external;
function XmCvtXmStringToByteStream(_string:TXmString; prop_return:PPbyte):dword;cdecl;external;
function XmCvtByteStreamToXmString(_property:Pbyte):TXmString;cdecl;external;
function XmStringByteStreamLength(_string:Pbyte):dword;cdecl;external;
function XmStringPeekNextTriple(context:TXmStringContext):TXmStringComponentType;cdecl;external;
function XmStringGetNextTriple(context:TXmStringContext; length:Pdword; value:PXtPointer):TXmStringComponentType;cdecl;external;
function XmStringComponentCreate(tag:TXmStringComponentType; length:dword; value:TXtPointer):TXmString;cdecl;external;
function XmStringUnparse(_string:TXmString; tag:TXmStringTag; tag_type:TXmTextType; output_type:TXmTextType; parse_table:TXmParseTable; 
               parse_count:TCardinal; parse_model:TXmParseModel):TXtPointer;cdecl;external;
function XmStringParseText(text:TXtPointer; text_end:PXtPointer; tag:TXmStringTag; _type:TXmTextType; parse_table:TXmParseTable; 
               parse_count:TCardinal; call_data:TXtPointer):TXmString;cdecl;external;
function XmStringToXmStringTable(_string:TXmString; break_comp:TXmString; table:PXmStringTable):TCardinal;cdecl;external;
function XmStringTableToXmString(table:TXmStringTable; count:TCardinal; break_component:TXmString):TXmString;cdecl;external;
function XmStringTableUnparse(table:TXmStringTable; count:TCardinal; tag:TXmStringTag; tag_type:TXmTextType; output_type:TXmTextType; 
               parse:TXmParseTable; parse_count:TCardinal; parse_model:TXmParseModel):PXtPointer;cdecl;external;
function XmStringTableParseStringArray(strings:PXtPointer; count:TCardinal; tag:TXmStringTag; _type:TXmTextType; parse:TXmParseTable; 
               parse_count:TCardinal; call_data:TXtPointer):TXmStringTable;cdecl;external;
function XmDirectionToStringDirection(dir:TXmDirection):TXmStringDirection;cdecl;external;
function XmStringDirectionToDirection(dir:TXmStringDirection):TXmDirection;cdecl;external;
function XmStringGenerate(text:TXtPointer; tag:TXmStringTag; _type:TXmTextType; rendition:TXmStringTag):TXmString;cdecl;external;
function XmStringPutRendition(_string:TXmString; rendition:TXmStringTag):TXmString;cdecl;external;
function XmParseMappingCreate(arg_list:TArgList; arg_count:TCardinal):TXmParseMapping;cdecl;external;
procedure XmParseMappingSetValues(parse_mapping:TXmParseMapping; arg_list:TArgList; arg_count:TCardinal);cdecl;external;
procedure XmParseMappingGetValues(parse_mapping:TXmParseMapping; arg_list:TArgList; arg_count:TCardinal);cdecl;external;
procedure XmParseMappingFree(parse_mapping:TXmParseMapping);cdecl;external;
procedure XmParseTableFree(parse_table:TXmParseTable; parse_count:TCardinal);cdecl;external;
    {*******    End Public Function Declarations    ******* }
    {*******    Public Function Declarations for XmTabList.c    ******* }
function XmStringTableProposeTablist(strings:TXmStringTable; num_strings:TCardinal; widget:TWidget; pad_value:single; offset_model:TXmOffsetModel):TXmTabList;cdecl;external;
procedure XmTabSetValue(xmtab:TXmTab; value:single);cdecl;external;
function XmTabGetValues(xmtab:TXmTab; units:Pbyte; offset:PXmOffsetModel; alignment:Pbyte; decimal:PPchar):single;cdecl;external;
procedure XmTabFree(xmtab:TXmTab);cdecl;external;
function XmTabCreate(value:single; units:byte; offset_model:TXmOffsetModel; alignment:byte; decimal:Pchar):TXmTab;cdecl;external;
function XmTabListRemoveTabs(oldlist:TXmTabList; position_list:PCardinal; position_count:TCardinal):TXmTabList;cdecl;external;
function XmTabListReplacePositions(oldlist:TXmTabList; position_list:PCardinal; tabs:PXmTab; tab_count:TCardinal):TXmTabList;cdecl;external;
function XmTabListGetTab(tablist:TXmTabList; position:TCardinal):TXmTab;cdecl;external;
function XmTabListTabCount(tablist:TXmTabList):TCardinal;cdecl;external;
function XmTabListCopy(tablist:TXmTabList; offset:longint; count:TCardinal):TXmTabList;cdecl;external;
procedure XmTabListFree(tablist:TXmTabList);cdecl;external;
function XmTabListInsertTabs(oldlist:TXmTabList; tabs:PXmTab; tab_count:TCardinal; position:longint):TXmTabList;cdecl;external;
    {*******    End Public Function Declarations    ******* }
    {*******    Public Function Declarations for XmRenderTable.c    ******* }
function XmRenderTableCvtFromProp(para1:TWidget; prop:Pchar; len:dword):TXmRenderTable;cdecl;external;
function XmRenderTableCvtToProp(para1:TWidget; table:TXmRenderTable; prop_return:PPchar):dword;cdecl;external;
procedure XmRenditionUpdate(rendition:TXmRendition; arglist:TArgList; argcount:TCardinal);cdecl;external;
procedure XmRenditionRetrieve(rendition:TXmRendition; arglist:TArgList; argcount:TCardinal);cdecl;external;
procedure XmRenditionFree(rendition:TXmRendition);cdecl;external;
function XmRenditionCreate(widget:TWidget; tag:TXmStringTag; arglist:TArgList; argcount:TCardinal):TXmRendition;cdecl;external;
function XmRenderTableGetRenditions(table:TXmRenderTable; tags:PXmStringTag; tag_count:TCardinal):PXmRendition;cdecl;external;
function XmRenderTableGetRendition(table:TXmRenderTable; tag:TXmStringTag):TXmRendition;cdecl;external;
function XmRenderTableGetTags(table:TXmRenderTable; tag_list:PPXmStringTag):longint;cdecl;external;
procedure XmRenderTableFree(table:TXmRenderTable);cdecl;external;
function XmRenderTableCopy(table:TXmRenderTable; tags:PXmStringTag; tag_count:longint):TXmRenderTable;cdecl;external;
function XmRenderTableRemoveRenditions(oldtable:TXmRenderTable; tags:PXmStringTag; tag_count:longint):TXmRenderTable;cdecl;external;
function XmRenderTableAddRenditions(oldtable:TXmRenderTable; renditions:PXmRendition; rendition_count:TCardinal; merge_mode:TXmMergeMode):TXmRenderTable;cdecl;external;
    {*******    End Public Function Declarations    ******* }
    {*******    Public Function Declarations for Dest.c    ******* }
function XmGetDestination(display:PDisplay):TWidget;cdecl;external;
    {*******    End Public Function Declarations    ******* }
    {*******    Public Function Declarations for Traversal.c    ******* }
function XmIsTraversable(wid:TWidget):TBoolean;cdecl;external;
function XmGetVisibility(wid:TWidget):TXmVisibility;cdecl;external;
function XmGetTabGroup(wid:TWidget):TWidget;cdecl;external;
function XmGetFocusWidget(wid:TWidget):TWidget;cdecl;external;
function XmProcessTraversal(w:TWidget; dir:TXmTraversalDirection):TBoolean;cdecl;external;
procedure XmAddTabGroup(tabGroup:TWidget);cdecl;external;
procedure XmRemoveTabGroup(w:TWidget);cdecl;external;
    {*******    End Public Function Declarations    ******* }
    {*******        ******* }
    {
     * The following includes are for source compatibility.  They might be
     *    removed at some future time.
      }
{$include <Xm/VendorS.h>}
{$include <Xm/XmIm.h>}
(* error 
#define XmINDICATOR_3D_BOX		0x01
in define line 2086 *)

    const
      XmINDICATOR_FLAT_BOX = $02;      
      XmINDICATOR_CHECK_GLYPH = $10;      
      XmINDICATOR_CROSS_GLYPH = $20;      
(* error 
enum {
    { Treated as _BOX or _CHECK_BOX  }
    { Treated as XmINDICATOR_3D_BOX  }
in declaration at line 2099 *)
(* error 
enum { XmUNSET, XmSET, XmINDETERMINATE };
in declaration at line 2101 *)
(* error 
enum { XmTOGGLE_BOOLEAN, XmTOGGLE_INDETERMINATE };
in declaration at line 2102 *)
    type
      PXmToggleButtonState = ^TXmToggleButtonState;
      TXmToggleButtonState = byte;
    { Shared text enum.  }

      PXmTextStatus = ^TXmTextStatus;
      TXmTextStatus =  Longint;
      Const
        EditDone = 0;
        EditError = 1;
        EditReject = 2;
;
    { XmDisplay.XmNdefaultButtonEmphasis enum  }
(* error 
enum { XmEXTERNAL_HIGHLIGHT, XmINTERNAL_HIGHLIGHT };
in declaration at line 2109 *)
    { new for XmString  }
      _MOTIF_DEFAULT_LOCALE = '_MOTIF_DEFAULT_LOCALE';      
(* error 
enum { XmPATH_MODE_FULL, XmPATH_MODE_RELATIVE };
in declaration at line 2114 *)
(* error 
enum { XmFILTER_NONE, XmFILTER_HIDDEN_FILES} ;
in declaration at line 2115 *)
{$endif}
    { _Xm_h  }
    { DON'T ADD STUFF AFTER THIS #endif  }

implementation

    { was #define dname def_expr }
    function XmSTRING_COMPONENT_END : TXmStringComponentType;
      begin
        XmSTRING_COMPONENT_END:=TXmStringComponentType(126);
      end;

    { was #define dname def_expr }
    function XmSTRING_COMPONENT_USER_BEGIN : TXmStringComponentType;
      begin
        XmSTRING_COMPONENT_USER_BEGIN:=TXmStringComponentType(128);
      end;

    { was #define dname def_expr }
    function XmSTRING_COMPONENT_USER_END : TXmStringComponentType;
      begin
        XmSTRING_COMPONENT_USER_END:=TXmStringComponentType(255);
      end;

    { was #define dname def_expr }
    function XmUNSPECIFIED_PIXEL : TPixel;
      begin
        XmUNSPECIFIED_PIXEL:=TPixel( not (0));
      end;

    { was #define dname def_expr }
    function XmFMT_8_BIT : TXmTextFormat;
      begin
        XmFMT_8_BIT:=TXmTextFormat(XA_STRING);
      end;

    { was #define dname def_expr }
    function XmFMT_16_BIT : TXmTextFormat;
      begin
        XmFMT_16_BIT:=TXmTextFormat(2);
      end;


end.
