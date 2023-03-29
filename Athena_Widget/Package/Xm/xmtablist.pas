unit XmTabList;

interface

uses
  x,
  XTIntrinsic,
  XmXm;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}
//{$include <Xm/Xm.h>}

const
  XmCOLOR_DYNAMIC = -1;
  XmPIXMAP_DYNAMIC = 3;
  XmTAB_LAST_POSITION = -(1);
  XmTAB_NOT_FOUND = -(1);  
  XmTAB_LABEL_STRING = 1 shl 0;  
  XmTAB_LABEL_PIXMAP = 1 shl 1;  
  XmTAB_PIXMAP_PLACEMENT = 1 shl 2;  
  XmTAB_BACKGROUND = 1 shl 3;  
  XmTAB_FOREGROUND = 1 shl 4;  
  XmTAB_VALUE_MODE = 1 shl 5;  
  XmTAB_LABEL_ALIGNMENT = 1 shl 6;  
  XmTAB_STRING_DIRECTION = 1 shl 7;  
  XmTAB_BACKGROUND_PIXMAP = 1 shl 8;  
  XmTAB_SENSITIVE = 1 shl 9;  
  XmTAB_ALL_FLAGS = ((((((((XmTAB_LABEL_STRING or XmTAB_LABEL_PIXMAP) or XmTAB_PIXMAP_PLACEMENT) or XmTAB_BACKGROUND) or XmTAB_FOREGROUND) or XmTAB_VALUE_MODE) or XmTAB_LABEL_ALIGNMENT) or XmTAB_STRING_DIRECTION) or XmTAB_BACKGROUND_PIXMAP) or XmTAB_SENSITIVE;  

type
  PXmTabAttributeRec = ^TXmTabAttributeRec;
  TXmTabAttributeRec = record
      label_string : TXmString;
      string_direction : TXmStringDirection;
      label_pixmap : TPixmap;
      label_alignment : longint;
      pixmap_placement : TXmPixmapPlacement;
      foreground : TPixel;
      background : TPixel;
      background_pixmap : TPixmap;
      sensitive : TBoolean;
      value_mode : TXmTabValueMode;
    end;
  TXmTabAttributes = PXmTabAttributeRec;
  PXmTabAttributes = ^TXmTabAttributes;

  PXmTabbedStackList = ^TXmTabbedStackList;
  TXmTabbedStackList = Pointer;
//  TXmTabbedStackList = PXmTabbedStackListRec;

function XmTabbedStackListCreate:TXmTabbedStackList;cdecl;external libXm;
function XmTabbedStackListCopy(para1:TXmTabbedStackList):TXmTabbedStackList;cdecl;external libXm;
procedure XmTabbedStackListFree(para1:TXmTabbedStackList);cdecl;external libXm;
procedure XmTabbedStackListRemove(para1:TXmTabbedStackList; para2:longint);cdecl;external libXm;
function XmTabbedStackListInsert(para1:TXmTabbedStackList; para2:longint; para3:TXtValueMask; para4:TXmTabAttributes):longint;cdecl;external libXm;
function XmTabbedStackListAppend(para1:TXmTabbedStackList; para2:TXtValueMask; para3:TXmTabAttributes):longint;cdecl;external libXm;
procedure XmTabbedStackListModify(para1:TXmTabbedStackList; para2:longint; para3:TXtValueMask; para4:TXmTabAttributes);cdecl;external libXm;
procedure XmTabbedStackListQuery(para1:TXmTabbedStackList; para2:longint; para3:TXmTabAttributes);cdecl;external libXm;
function XmTabbedStackListFind(para1:TXmTabbedStackList; para2:TXmString):longint;cdecl;external libXm;
procedure XmTabbedStackListSimpleRemove(para1:TXmTabbedStackList; para2:TXmString);cdecl;external libXm;
function XmTabbedStackListSimpleInsert(para1:TXmTabbedStackList; para2:longint; para3:TXmString):longint;cdecl;external libXm;
function XmTabbedStackListSimpleAppend(para1:TXmTabbedStackList; para2:TXmString):longint;cdecl;external libXm;
procedure XmTabbedStackListSimpleModify(para1:TXmTabbedStackList; para2:longint; para3:TXmString);cdecl;external libXm;
function XmTabbedStackListSimpleQuery(para1:TXmTabbedStackList; para2:longint):TXmString;cdecl;external libXm;
function XmTabbedStackListCompare(para1:TXmTabbedStackList; para2:TXmTabbedStackList):TXmTabResult;cdecl;external libXm;
procedure XmTabAttibutesFree(para1:TXmTabAttributes);cdecl;external libXm;

implementation

end.
