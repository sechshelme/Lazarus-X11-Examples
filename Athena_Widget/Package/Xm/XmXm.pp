unit XmXm;

interface

uses
  XTIntrinsic,
  XmXmStrDefs;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

const
  OM22_COMPATIBILITY = 1;  

const
  JPEG_SUPPORTED = 1;  

const
  PNG_SUPPORTED = 1;  

const
  UTF8_SUPPORTED = 1;  

const
  USE_XFT = 1;  
//{$include <X11/Intrinsic.h>}
//{$include <X11/Shell.h>}
//{$include <X11/Xatom.h>}
//{$ifdef PRINTING_SUPPORTED}
//{$include <X11/extensions/Print.h>}
//{$endif}
//{$include <Xm/XmStrDefs.h>}
//{$include <Xm/XmStrDefs22.h>}
//{$include <Xm/XmStrDefs23.h>}
//{$include <Xm/VirtKeys.h>}
//{$include <Xm/Transfer.h>}
//{$include <Xm/Primitive.h>}
//{$include <Xm/Manager.h>}
//{$include <Xm/Gadget.h>}
{ C++ extern C conditionnal removed }

const
  XmVERSION = 2;  
  XmREVISION = 3;  
  XmUPDATE_LEVEL = 8;  
//  XmVersion = (2*1000)+3;  { #define XmVersion	(XmVERSION * 1000 + XmREVISION) }
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
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmRIGHT_TO_LEFT_TOP_TO_BOTTOM = (XmRIGHT_TO_LEFT_MASK or XmTOP_TO_BOTTOM_MASK) or XmPRECEDENCE_HORIZ_MASK;
    XmLEFT_TO_RIGHT_TOP_TO_BOTTOM = (XmLEFT_TO_RIGHT_MASK or XmTOP_TO_BOTTOM_MASK) or XmPRECEDENCE_HORIZ_MASK;
    XmRIGHT_TO_LEFT_BOTTOM_TO_TOP = (XmRIGHT_TO_LEFT_MASK or XmBOTTOM_TO_TOP_MASK) or XmPRECEDENCE_HORIZ_MASK;
    XmLEFT_TO_RIGHT_BOTTOM_TO_TOP = (XmLEFT_TO_RIGHT_MASK or XmBOTTOM_TO_TOP_MASK) or XmPRECEDENCE_HORIZ_MASK;
    XmTOP_TO_BOTTOM_RIGHT_TO_LEFT = (XmRIGHT_TO_LEFT_MASK or XmTOP_TO_BOTTOM_MASK) or XmPRECEDENCE_VERT_MASK;
    XmTOP_TO_BOTTOM_LEFT_TO_RIGHT = (XmLEFT_TO_RIGHT_MASK or XmTOP_TO_BOTTOM_MASK) or XmPRECEDENCE_VERT_MASK;
    XmBOTTOM_TO_TOP_RIGHT_TO_LEFT = (XmRIGHT_TO_LEFT_MASK or XmBOTTOM_TO_TOP_MASK) or XmPRECEDENCE_VERT_MASK;
    XmBOTTOM_TO_TOP_LEFT_TO_RIGHT = (XmLEFT_TO_RIGHT_MASK or XmBOTTOM_TO_TOP_MASK) or XmPRECEDENCE_VERT_MASK;
    XmTOP_TO_BOTTOM = (XmTOP_TO_BOTTOM_MASK or XmHORIZONTAL_MASK) or XmPRECEDENCE_MASK;
    XmBOTTOM_TO_TOP = (XmBOTTOM_TO_TOP_MASK or XmHORIZONTAL_MASK) or XmPRECEDENCE_MASK;
    XmRIGHT_TO_LEFT = (XmRIGHT_TO_LEFT_MASK or XmVERTICAL_MASK) or XmPRECEDENCE_MASK;
    XmLEFT_TO_RIGHT = (XmLEFT_TO_RIGHT_MASK or XmVERTICAL_MASK) or XmPRECEDENCE_MASK;
    XmDEFAULT_DIRECTION = $ff;
;

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
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmSTRING_DIRECTION_L_TO_R = 0;
    XmSTRING_DIRECTION_R_TO_L = 1;
    XmSTRING_DIRECTION_UNSET = 3;
    XmSTRING_DIRECTION_DEFAULT = XmDEFAULT_DIRECTION;
;
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
{ 13-125 reserved  }

  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmSTRING_COMPONENT_UNKNOWN = 0;
    XmSTRING_COMPONENT_CHARSET = 1;
    XmSTRING_COMPONENT_TEXT = 2;
    XmSTRING_COMPONENT_DIRECTION = 3;
    XmSTRING_COMPONENT_SEPARATOR = 4;
    XmSTRING_COMPONENT_LOCALE_TEXT = 5;
    XmSTRING_COMPONENT_LOCALE = 6;
    XmSTRING_COMPONENT_WIDECHAR_TEXT = 7;
    XmSTRING_COMPONENT_LAYOUT_PUSH = 8;
    XmSTRING_COMPONENT_LAYOUT_POP = 9;
    XmSTRING_COMPONENT_RENDITION_BEGIN = 10;
    XmSTRING_COMPONENT_RENDITION_END = 11;
    XmSTRING_COMPONENT_TAB = 12;
;
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

  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmINSERT = 0;
    XmTERMINATE = 1;
    XmINVOKE = 2;
;
{ We are making an attempt (perhaps unnecessaryily) to keep our style
   constants the same as the equivalent Xlib style constants. The first
   Motif specific style constant starts at 32 so that the consortium can
   add constants to their list without overlapping with ours.  }
type
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
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmUNSPECIFIED_LOAD_MODEL = 0;
    XmLOAD_DEFERRED = 1;
    XmLOAD_IMMEDIATE = 2;
;
{***********************************************************************
 *  Primitive Resources and define values
 *********************************************************************** }
{ size policy values   }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmCHANGE_ALL = 0;
    XmCHANGE_NONE = 1;
    XmCHANGE_WIDTH = 2;
    XmCHANGE_HEIGHT = 3;
;
{  unit type values   }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmPIXELS = 0;
    Xm100TH_MILLIMETERS = 1;
    Xm1000TH_INCHES = 2;
    Xm100TH_POINTS = 3;
    Xm100TH_FONT_UNITS = 4;
    XmINCHES = 5;
    XmCENTIMETERS = 6;
    XmMILLIMETERS = 7;
    XmPOINTS = 8;
    XmFONT_UNITS = 9;
;
{ DeleteResponse values  }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmDESTROY = 0;
    XmUNMAP = 1;
    XmDO_NOTHING = 2;
;
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmEXPLICIT = 0;
    XmPOINTER = 1;
;
{***********************************************************************
 *  Navigation defines 
 *********************************************************************** }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmNONE = 0;
    XmTAB_GROUP = 1;
    XmSTICKY_TAB_GROUP = 2;
    XmEXCLUSIVE_TAB_GROUP = 3;
;
  XmDYNAMIC_DEFAULT_TAB_GROUP = 255;  
{***********************************************************************
 * Audible warning
 *********************************************************************** }
{ XmNONE  }type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmBELL = 1;
;
{***********************************************************************
 * Input Manager defines
 *********************************************************************** }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmPER_SHELL = 0;
    XmPER_WIDGET = 1;
    XmINHERIT_POLICY = 255;
;
type
  PXmInputPolicy = ^TXmInputPolicy;
  TXmInputPolicy = byte;
{***********************************************************************
 *  Menu defines
 *********************************************************************** }

  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmNO_ORIENTATION = 0;
    XmVERTICAL = 1;
    XmHORIZONTAL = 2;
;
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmWORK_AREA = 0;
    XmMENU_BAR = 1;
    XmMENU_PULLDOWN = 2;
    XmMENU_POPUP = 3;
    XmMENU_OPTION = 4;
;
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmNO_PACKING = 0;
    XmPACK_TIGHT = 1;
    XmPACK_COLUMN = 2;
    XmPACK_NONE = 3;
;
{ XmALIGNMENT_BASELINE_TOP,	XmALIGNMENT_CENTER,
	XmALIGNMENT_BASELINE_BOTTOM,  }type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmALIGNMENT_CONTENTS_TOP = 3;
    XmALIGNMENT_CONTENTS_BOTTOM = 4;
;
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmTEAR_OFF_ENABLED = 0;
    XmTEAR_OFF_DISABLED = 1;
;
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmUNPOST = 0;
    XmUNPOST_AND_REPLAY = 1;
;
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmLAST_POSITION = -(1);
    XmFIRST_POSITION = (-(1))+1;
;
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmPOPUP_DISABLED = 0;
    XmPOPUP_KEYBOARD = 1;
    XmPOPUP_AUTOMATIC = 2;
    XmPOPUP_AUTOMATIC_RECURSIVE = 3;
;
{***********************************************************************
 *  Color Selector defines
 *********************************************************************** }
type
  PXmColorMode = ^TXmColorMode;
  TXmColorMode =  Longint;
  Const
    XmListMode = 0;
    XmScaleMode = 1;
;
{***********************************************************************
 *  Column defines
 *********************************************************************** }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmFILL_UNSPECIFIED = 0;
    XmFILL_FLUSH = 1;
    XmFILL_RAGGED = 2;
;
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmDISTRIBUTE_TIGHT = 0;
    XmDISTRIBUTE_SPREAD = 1;
;
{***********************************************************************
 *  ComboBox defines
 *********************************************************************** }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmCOMBO_BOX = 0;
    XmDROP_DOWN_COMBO_BOX = 1;
    XmDROP_DOWN_LIST = 2;
;
{ XmNONE  }type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmQUICK_NAVIGATE = 1;
    XmINVALID_MATCH_BEHAVIOR = 2;
;
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmZERO_BASED = 0;
    XmONE_BASED = 1;
;
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
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmALIGNMENT_BEGINNING = 0;
    XmALIGNMENT_CENTER = 1;
    XmALIGNMENT_END = 2;
    XmALIGNMENT_UNSPECIFIED = 3;
;
{ XmALIGNMENT_CENTER,  }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmALIGNMENT_BASELINE_TOP = 0;
    XmALIGNMENT_BASELINE_BOTTOM = 2;
    XmALIGNMENT_WIDGET_TOP = 3;
    XmALIGNMENT_WIDGET_BOTTOM = 4;
;
{ new enum introduced in 2.0 to clear up the confusion in
   widget top/bottom attachment  }
  XmALIGNMENT_CHILD_TOP = XmALIGNMENT_WIDGET_BOTTOM;  
  XmALIGNMENT_CHILD_BOTTOM = XmALIGNMENT_WIDGET_TOP;  
{***********************************************************************
 *  Frame defines
 *********************************************************************** }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmFRAME_GENERIC_CHILD = 0;
    XmFRAME_WORKAREA_CHILD = 1;
    XmFRAME_TITLE_CHILD = 2;
;
{***********************************************************************
 *  ToggleButton  defines
 *********************************************************************** }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmN_OF_MANY = 1;
    XmONE_OF_MANY = 2;
    XmONE_OF_MANY_ROUND = 3;
    XmONE_OF_MANY_DIAMOND = 4;
;
{***********************************************************************
 *  Form defines
 *********************************************************************** }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmATTACH_NONE = 0;
    XmATTACH_FORM = 1;
    XmATTACH_OPPOSITE_FORM = 2;
    XmATTACH_WIDGET = 3;
    XmATTACH_OPPOSITE_WIDGET = 4;
    XmATTACH_POSITION = 5;
    XmATTACH_SELF = 6;
;
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmRESIZE_NONE = 0;
    XmRESIZE_GROW = 1;
    XmRESIZE_ANY = 2;
;
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
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmCR_TAB_SELECTED = 0;
    XmCR_TAB_UNSELECTED = 1;
;
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
{ required for BC. See CR 9158  }

  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmCR_NONE = 0;
    XmCR_HELP = 1;
    XmCR_VALUE_CHANGED = 2;
    XmCR_INCREMENT = 3;
    XmCR_DECREMENT = 4;
    XmCR_PAGE_INCREMENT = 5;
    XmCR_PAGE_DECREMENT = 6;
    XmCR_TO_TOP = 7;
    XmCR_TO_BOTTOM = 8;
    XmCR_DRAG = 9;
    XmCR_ACTIVATE = 10;
    XmCR_ARM = 11;
    XmCR_DISARM = 12;
    XmCR_MAP = 16;
    XmCR_UNMAP = 17;
    XmCR_FOCUS = 18;
    XmCR_LOSING_FOCUS = 19;
    XmCR_MODIFYING_TEXT_VALUE = 20;
    XmCR_MOVING_INSERT_CURSOR = 21;
    XmCR_EXECUTE = 22;
    XmCR_SINGLE_SELECT = 23;
    XmCR_MULTIPLE_SELECT = 24;
    XmCR_EXTENDED_SELECT = 25;
    XmCR_BROWSE_SELECT = 26;
    XmCR_DEFAULT_ACTION = 27;
    XmCR_CLIPBOARD_DATA_REQUEST = 28;
    XmCR_CLIPBOARD_DATA_DELETE = 29;
    XmCR_CASCADING = 30;
    XmCR_OK = 31;
    XmCR_CANCEL = 32;
    XmCR_APPLY = 34;
    XmCR_NO_MATCH = 35;
    XmCR_COMMAND_ENTERED = 36;
    XmCR_COMMAND_CHANGED = 37;
    XmCR_EXPOSE = 38;
    XmCR_RESIZE = 39;
    XmCR_INPUT = 40;
    XmCR_GAIN_PRIMARY = 41;
    XmCR_LOSE_PRIMARY = 42;
    XmCR_CREATE = 43;
    XmCR_TEAR_OFF_ACTIVATE = 44;
    XmCR_TEAR_OFF_DEACTIVATE = 45;
    XmCR_OBSCURED_TRAVERSAL = 46;
    XmCR_FOCUS_MOVED = 47;
    XmCR_REPOST = 54;
    XmCR_COLLAPSED = 55;
    XmCR_EXPANDED = 56;
    XmCR_SELECT = 57;
    XmCR_DRAG_START = 58;
    XmCR_NO_FONT = 59;
    XmCR_NO_RENDITION = 60;
    XmCR_POST = 61;
    XmCR_SPIN_NEXT = 62;
    XmCR_SPIN_PRIOR = 63;
    XmCR_SPIN_FIRST = 64;
    XmCR_SPIN_LAST = 65;
    XmCR_PAGE_SCROLLER_INCREMENT = 66;
    XmCR_PAGE_SCROLLER_DECREMENT = 67;
    XmCR_MAJOR_TAB = 68;
    XmCR_MINOR_TAB = 69;
    XmCR_START_JOB = 70;
    XmCR_END_JOB = 71;
    XmCR_PAGE_SETUP = 72;
    XmCR_PDM_NONE = 73;
    XmCR_PDM_UP = 74;
    XmCR_PDM_START_ERROR = 75;
    XmCR_PDM_START_VXAUTH = 76;
    XmCR_PDM_START_PXAUTH = 77;
    XmCR_PDM_OK = 78;
    XmCR_PDM_CANCEL = 79;
    XmCR_PDM_EXIT_ERROR = 80;
    XmCR_UPDATE_SHELL = 81;
    XmCR_UPDATE_TEXT = 82;
    XmCR_VERIFY_TEXT = 83;
    XmCR_VERIFY_TEXT_FAILED = 84;
    XmCR_ENTER_CHILD = 85;
    XmCR_LEAVE_CHILD = 86;
    XmCR_PROTOCOLS = 6666;
;
{***********************************************************************
 *  new ScrollBar showArrows  define
 *********************************************************************** }
{ XmNONE  }type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmEACH_SIDE = 1;
    XmMAX_SIDE = 2;
    XmMIN_SIDE = 3;
;
{***********************************************************************
 *  Sliding mode
 *********************************************************************** }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmSLIDER = 0;
    XmTHERMOMETER = 1;
;
{***********************************************************************
 *  Slider Visual
 *********************************************************************** }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmBACKGROUND_COLOR = 0;
    XmFOREGROUND_COLOR = 1;
    XmTROUGH_COLOR = 2;
    XmSHADOWED_BACKGROUND = 3;
;
{***********************************************************************
 *  Slider Mark
 *********************************************************************** }
{ XmNONE,  }type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmETCHED_LINE = 1;
    XmTHUMB_MARK = 2;
    XmROUND_MARK = 3;
;
{***********************************************************************
 *  new Scale showValue 
 *********************************************************************** }
{ XmNONE  }type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmNEAR_SLIDER = 1;
    XmNEAR_BORDER = 2;
;
{***********************************************************************
 *  new ScrolledWindow/MainWindow chidType
 *********************************************************************** }
{ XmWORK_AREA, XmMENU_BAR and XmSEPARATOR have to match the existing ones  }
{ XmWORK_AREA = 0, XmMENU_BAR = 1,  }{ XmSEPARATOR = 5  }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmHOR_SCROLLBAR = 2;
    XmVERT_SCROLLBAR = 3;
    XmCOMMAND_WINDOW = 4;
    XmMESSAGE_WINDOW = 6;
    XmSCROLL_HOR = 7;
    XmSCROLL_VERT = 8;
    XmNO_SCROLL = 9;
    XmCLIP_WINDOW = 10;
    XmGENERIC_CHILD = 11;
;
{***********************************************************************
 *  new ScrolledWindow auto drag enum
 *********************************************************************** }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmAUTO_DRAG_ENABLED = 0;
    XmAUTO_DRAG_DISABLED = 1;
;
{***********************************************************************
 *  new Display enable warp enum
 *********************************************************************** }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmENABLE_WARP_ON = 0;
    XmENABLE_WARP_OFF = 1;
;
{***********************************************************************
 *  new Display enable btn1 transfer enum
 *********************************************************************** }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmOFF = 0;
    XmBUTTON2_ADJUST = 1;
    XmBUTTON2_TRANSFER = 2;
;
{***********************************************************************
 * auto_selection_type
 *********************************************************************** }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmAUTO_UNSET = 0;
    XmAUTO_BEGIN = 1;
    XmAUTO_MOTION = 2;
    XmAUTO_CANCEL = 3;
    XmAUTO_NO_CHANGE = 4;
    XmAUTO_CHANGE = 5;
;
{***********************************************************************
 *  Callback structures 
 *********************************************************************** }
type
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
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmMULTICLICK_DISCARD = 0;
    XmMULTICLICK_KEEP = 1;
;
{***********************************************************************
 *  DrawnButton defines
 *********************************************************************** }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmSHADOW_IN = 7;
    XmSHADOW_OUT = 8;
;
{***********************************************************************
 *  Arrow defines
 *********************************************************************** }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmARROW_UP = 0;
    XmARROW_DOWN = 1;
    XmARROW_LEFT = 2;
    XmARROW_RIGHT = 3;
;
{***********************************************************************
 *  Separator defines
 *  Note: XmINVALID_SEPARATOR_TYPE marks the last+1 separator type
 *********************************************************************** }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmNO_LINE = 0;
    XmSINGLE_LINE = 1;
    XmDOUBLE_LINE = 2;
    XmSINGLE_DASHED_LINE = 3;
    XmDOUBLE_DASHED_LINE = 4;
    XmSHADOW_ETCHED_IN = 5;
    XmSHADOW_ETCHED_OUT = 6;
    XmSHADOW_ETCHED_IN_DASH = 7;
    XmSHADOW_ETCHED_OUT_DASH = 8;
    XmINVALID_SEPARATOR_TYPE = 9;
;
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmPIXMAP = 1;
    XmSTRING = 2;
    XmPIXMAP_AND_STRING = 3;
;
{***********************************************************************
 *  Drag and Drop defines
 *********************************************************************** }
{ XmPIXMAP,  }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmWINDOW = 0;
    XmCURSOR = 2;
    XmDRAG_WINDOW = 3;
;
{***********************************************************************
 *  ScrollBar defines
 *********************************************************************** }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmMAX_ON_TOP = 0;
    XmMAX_ON_BOTTOM = 1;
    XmMAX_ON_LEFT = 2;
    XmMAX_ON_RIGHT = 3;
;
{***********************************************************************
 *									*
 * List Widget defines							*
 *									*
 *********************************************************************** }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmSINGLE_SELECT = 0;
    XmMULTIPLE_SELECT = 1;
    XmEXTENDED_SELECT = 2;
    XmBROWSE_SELECT = 3;
;
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmSTATIC = 0;
    XmDYNAMIC = 1;
;
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmNORMAL_MODE = 0;
    XmADD_MODE = 1;
;
{***********************************************************************
 *                                                                      *
 * Container Widget defines                                             *
 *                                                                      *
 *********************************************************************** }
{ XmRAutomaticSelection  }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmNO_AUTO_SELECT = 0;
    XmAUTO_SELECT = 1;
;
{ XmRLineStyle  }
{ XmNO_LINE  }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmSINGLE = 1;
;
{ XmREntryViewType  }
{ XmLARGE_ICON  }
{ XmSMALL_ICON  }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmANY_ICON = 2;
;
{ XmRSpatialIncludeModel  }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmAPPEND = 0;
    XmCLOSEST = 1;
    XmFIRST_FIT = 2;
;
{ XmRLayoutType  }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmOUTLINE = 0;
    XmSPATIAL = 1;
    XmDETAIL = 2;
;
{ XmNoutlineButtonPolicy  }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmOUTLINE_BUTTON_PRESENT = 0;
    XmOUTLINE_BUTTON_ABSENT = 1;
;
{ XmRSpatialPlaceStyle  }
{ XmNONE  }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmGRID = 1;
    XmCELLS = 2;
;
{ XmRPrimaryOwnership  }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmOWN_NEVER = 0;
    XmOWN_ALWAYS = 1;
    XmOWN_MULTIPLE = 2;
    XmOWN_POSSIBLE_MULTIPLE = 3;
;
{ XmRSpatialResizeModel  }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmGROW_MINOR = 0;
    XmGROW_MAJOR = 1;
    XmGROW_BALANCED = 2;
;
{ XmRSelectionTechnique  }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmMARQUEE = 0;
    XmMARQUEE_EXTEND_START = 1;
    XmMARQUEE_EXTEND_BOTH = 2;
    XmTOUCH_ONLY = 3;
    XmTOUCH_OVER = 4;
;
{ XmRSpatialSnapModel  }
{ XmNONE  }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmSNAP_TO_GRID = 1;
    XmCENTER = 2;
;
{ XmROutlineState  }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmCOLLAPSED = 0;
    XmEXPANDED = 1;
;
{***********************************************************************
 *                                                                      *
 * IconGadget defines                                                   *
 *                                                                      *
 *********************************************************************** }
{ XmRViewType  }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmLARGE_ICON = 0;
    XmSMALL_ICON = 1;
;
{ XmRVisualEmphasis  }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmSELECTED = 0;
    XmNOT_SELECTED = 1;
;
{***********************************************************************
 *                                                                      *
 * Notebook Widget defines                                              *
 *                                                                      *
 *********************************************************************** }
  XmUNSPECIFIED_PAGE_NUMBER = -(32768);  
{ XmRBindingType  }
{ XmNONE  }
{ XmPIXMAP  }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmSOLID = 2;
    XmSPIRAL = 3;
    XmPIXMAP_OVERLAP_ONLY = 4;
;
{ XmRNBChildType  }
{ XmNONE  }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmPAGE = 1;
    XmMAJOR_TAB = 2;
    XmMINOR_TAB = 3;
    XmSTATUS_AREA = 4;
    XmPAGE_SCROLLER = 5;
;
{***********************************************************************
 *									*
 * Spin button defines.							*
 *									*
 *********************************************************************** }
{ XmNarrowOrientation  }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmARROWS_VERTICAL = 0;
    XmARROWS_HORIZONTAL = 1;
;
{ XmNarrowLayout  }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmARROWS_END = 0;
    XmARROWS_BEGINNING = 1;
    XmARROWS_SPLIT = 2;
    XmARROWS_FLAT_END = 3;
    XmARROWS_FLAT_BEGINNING = 4;
;
{ XmNarrowSensitivity and XmNdefaultArrowSensitivity  }
{ Please note that these arrows form the proper values 
   for a bit mask.  }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmARROWS_INSENSITIVE = 0;
    XmARROWS_INCREMENT_SENSITIVE = 1;
    XmARROWS_DECREMENT_SENSITIVE = 2;
    XmARROWS_SENSITIVE = 3;
    XmARROWS_DEFAULT_SENSITIVITY = 4;
;
{ XmNpositionType  }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmPOSITION_INDEX = 0;
    XmPOSITION_VALUE = 1;
;
{ XmNspinButtonChildType  }
{ XmPIXMAP = 1  }
{ XmSTRING  }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmNUMERIC = 3;
;
{ Return values for Xm[Simple]SpinBoxValidatePosition  }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmVALID_VALUE = 0;
    XmCURRENT_VALUE = 1;
    XmMAXIMUM_VALUE = 2;
    XmMINIMUM_VALUE = 3;
    XmINCREMENT_VALUE = 4;
;
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

  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmVARIABLE = 0;
    XmCONSTANT = 1;
    XmRESIZE_IF_POSSIBLE = 2;
;
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmAUTOMATIC = 0;
    XmAPPLICATION_DEFINED = 1;
;
{ XmSTATIC  }type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmAS_NEEDED = 1;
;
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
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmCOMMAND_ABOVE_WORKSPACE = 0;
    XmCOMMAND_BELOW_WORKSPACE = 1;
;
{***********************************************************************
 *									*
 * Text Widget defines							*
 *									*
 *********************************************************************** }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmMULTI_LINE_EDIT = 0;
    XmSINGLE_LINE_EDIT = 1;
;
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
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmDIALOG_NONE = 0;
    XmDIALOG_APPLY_BUTTON = 1;
    XmDIALOG_CANCEL_BUTTON = 2;
    XmDIALOG_DEFAULT_BUTTON = 3;
    XmDIALOG_OK_BUTTON = 4;
    XmDIALOG_FILTER_LABEL = 5;
    XmDIALOG_FILTER_TEXT = 6;
    XmDIALOG_HELP_BUTTON = 7;
    XmDIALOG_LIST = 8;
    XmDIALOG_LIST_LABEL = 9;
    XmDIALOG_MESSAGE_LABEL = 10;
    XmDIALOG_SELECTION_LABEL = 11;
    XmDIALOG_SYMBOL_LABEL = 12;
    XmDIALOG_TEXT = 13;
    XmDIALOG_SEPARATOR = 14;
    XmDIALOG_DIR_LIST = 15;
    XmDIALOG_DIR_LIST_LABEL = 16;
;
  XmDIALOG_HISTORY_LIST = XmDIALOG_LIST;  
  XmDIALOG_PROMPT_LABEL = XmDIALOG_SELECTION_LABEL;  
  XmDIALOG_VALUE_TEXT = XmDIALOG_TEXT;  
  XmDIALOG_COMMAND_TEXT = XmDIALOG_TEXT;  
  XmDIALOG_FILE_LIST = XmDIALOG_LIST;  
  XmDIALOG_FILE_LIST_LABEL = XmDIALOG_LIST_LABEL;  
{  dialog style defines   }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmDIALOG_MODELESS = 0;
    XmDIALOG_PRIMARY_APPLICATION_MODAL = 1;
    XmDIALOG_FULL_APPLICATION_MODAL = 2;
    XmDIALOG_SYSTEM_MODAL = 3;
;
{ The following is for compatibility only. Its use is deprecated.
  }
  XmDIALOG_APPLICATION_MODAL = XmDIALOG_PRIMARY_APPLICATION_MODAL;  
{***********************************************************************
 * XmSelectionBox, XmFileSelectionBox and XmCommand - misc. stuff       *
 ********************************************************************** }
{ Defines for Selection child placement
 }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmPLACE_TOP = 0;
    XmPLACE_ABOVE_SELECTION = 1;
    XmPLACE_BELOW_SELECTION = 2;
;
{ Defines for file type mask:
 }
  XmFILE_DIRECTORY = 1 shl 0;  
  XmFILE_REGULAR = 1 shl 1;  
  XmFILE_ANY_TYPE = XmFILE_DIRECTORY or XmFILE_REGULAR;  
{ Defines for selection dialog type:
 }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmDIALOG_WORK_AREA = 0;
    XmDIALOG_PROMPT = 1;
    XmDIALOG_SELECTION = 2;
    XmDIALOG_COMMAND = 3;
    XmDIALOG_FILE_SELECTION = 4;
;
{***********************************************************************
 *  XmMessageBox           stuff not common to other dialogs            *
 ********************************************************************** }
{ defines for dialog type  }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmDIALOG_TEMPLATE = 0;
    XmDIALOG_ERROR = 1;
    XmDIALOG_INFORMATION = 2;
    XmDIALOG_MESSAGE = 3;
    XmDIALOG_QUESTION = 4;
    XmDIALOG_WARNING = 5;
    XmDIALOG_WORKING = 6;
;
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

  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmPUSHBUTTON = 1;
    XmTOGGLEBUTTON = 2;
    XmRADIOBUTTON = 3;
    XmCASCADEBUTTON = 4;
    XmSEPARATOR = 5;
    XmDOUBLE_SEPARATOR = 6;
    XmTITLE = 7;
;
  XmCHECKBUTTON = XmTOGGLEBUTTON;  
{**********************************************************************
 *
 * BitmapConversionModel
 *
 ********************************************************************** }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmMATCH_DEPTH = 0;
    XmDYNAMIC_DEPTH = 1;
;
{***********************************************************************
 *  PrintShell defines
 *********************************************************************** }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmPDM_NOTIFY_FAIL = 0;
    XmPDM_NOTIFY_SUCCESS = 1;
;
{***********************************************************************
 *  MultiList defines
 *********************************************************************** }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmMULTILIST_FOUND = 0;
    XmMULTILIST_NOT_FOUND = 1;
;
{***********************************************************************
 *  DropDown defines
 *********************************************************************** }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmDROPDOWN_LABEL = 0;
    XmDROPDOWN_TEXT = 1;
    XmDROPDOWN_ARROW_BUTTON = 2;
    XmDROPDOWN_LIST = 3;
;
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
function XmConvertUnits(widget:TWidget; dimension:longint; from_type:longint; from_val:longint; to_type:longint):longint;cdecl;external;
function XmCvtToHorizontalPixels(screen:PScreen; from_val:longint; from_type:longint):longint;cdecl;external;
function XmCvtToVerticalPixels(screen:PScreen; from_val:longint; from_type:longint):longint;cdecl;external;
function XmCvtFromHorizontalPixels(screen:PScreen; from_val:longint; to_type:longint):longint;cdecl;external;
function XmCvtFromVerticalPixels(screen:PScreen; from_val:longint; to_type:longint):longint;cdecl;external;
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
{#if NeedWidePrototypes }
{                        int confineTo) ; }
{#else }
function XmTrackingLocate(widget:TWidget; cursor:TCursor; confineTo:TBoolean):TWidget;cdecl;external;
{#endif /* NeedWidePrototypes */ }
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
{#if NeedWidePrototypes }
{                        int direction) ; }
{#else }
function XmStringDirectionCreate(direction:TXmStringDirection):TXmString;cdecl;external;
{#endif /* NeedWidePrototypes */ }
function XmStringSeparatorCreate:TXmString;cdecl;external;
{#if NeedWidePrototypes }
{                        int direction, }
{                        int separator) ; }
{#else }
function XmStringSegmentCreate(text:Pchar; charset:TXmStringCharSet; direction:TXmStringDirection; separator:TBoolean):TXmString;cdecl;external;
{#endif /* NeedWidePrototypes */ }
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

const
  XmINDICATOR_3D_BOX = $01;  
  XmINDICATOR_FLAT_BOX = $02;  
  XmINDICATOR_CHECK_GLYPH = $10;  
  XmINDICATOR_CROSS_GLYPH = $20;  
{ Treated as _BOX or _CHECK_BOX  }
{ Treated as XmINDICATOR_3D_BOX  }
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmINDICATOR_NONE = 0;
    XmINDICATOR_FILL = 1;
    XmINDICATOR_BOX = 255;
    XmINDICATOR_CHECK = XmINDICATOR_CHECK_GLYPH;
    XmINDICATOR_CHECK_BOX = XmINDICATOR_CHECK_GLYPH+XmINDICATOR_3D_BOX;
    XmINDICATOR_CROSS = XmINDICATOR_CROSS_GLYPH;
    XmINDICATOR_CROSS_BOX = XmINDICATOR_CROSS_GLYPH+XmINDICATOR_3D_BOX;
;
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmUNSET = 0;
    XmSET = 1;
    XmINDETERMINATE = 2;
;
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmTOGGLE_BOOLEAN = 0;
    XmTOGGLE_INDETERMINATE = 1;
;
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
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmEXTERNAL_HIGHLIGHT = 0;
    XmINTERNAL_HIGHLIGHT = 1;
;
{ new for XmString  }
  _MOTIF_DEFAULT_LOCALE = '_MOTIF_DEFAULT_LOCALE';  
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmPATH_MODE_FULL = 0;
    XmPATH_MODE_RELATIVE = 1;
;
type
  Pblabla = ^Tblabla;
  Tblabla =  Longint;
  Const
    XmFILTER_NONE = 0;
    XmFILTER_HIDDEN_FILES = 1;
;
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
