unit XmDropsMgr;

interface

uses
  x, xlib,
  XTIntrinsic;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

//{$include <Xm/Xm.h>}
//{$include <Xm/DragC.h>}

const
  XmCR_DROP_SITE_LEAVE_MESSAGE = 1;  
  XmCR_DROP_SITE_ENTER_MESSAGE = 2;  
  XmCR_DROP_SITE_MOTION_MESSAGE = 3;  
  XmCR_DROP_MESSAGE = 4;

  XmNO_DROP_SITE = 1;  
  XmINVALID_DROP_SITE = 2;  
  XmVALID_DROP_SITE = 3;

{ begin fix for CR 5754  }
{ documented values are XmDROP_SITE_VALID and XmDROP_SITE_INVALID.
   However, we can't just throw out the incorrect Xm[IN]VALID_DROP_SITE
   now since people have probably started using them. Instead, we just
   define the correct values using the incorrect ones.
 }
  XmDROP_SITE_INVALID = XmINVALID_DROP_SITE;  
  XmDROP_SITE_VALID = XmVALID_DROP_SITE;  
{ end fix for CR 5754  }
  Const
    XmDRAG_UNDER_NONE = 0;
    XmDRAG_UNDER_PIXMAP = 1;
    XmDRAG_UNDER_SHADOW_IN = 2;
    XmDRAG_UNDER_SHADOW_OUT = 3;
    XmDRAG_UNDER_HIGHLIGHT = 4;

  Const
    XmDROP_SITE_SIMPLE = 0;
    XmDROP_SITE_COMPOSITE = 1;
    XmDROP_SITE_SIMPLE_CLIP_ONLY = 128;
    XmDROP_SITE_COMPOSITE_CLIP_ONLY = 129;

  Const
    XmABOVE = 0;
    XmBELOW = 1;

  Const
    XmDROP_SITE_ACTIVE = 0;
    XmDROP_SITE_INACTIVE = 1;
    XmDROP_SITE_IGNORE = 2;

type
  PXmDragProcCallbackStruct = ^TXmDragProcCallbackStruct;
  TXmDragProcCallbackStruct = record
      reason : longint;
      event : PXEvent;
      timeStamp : TTime;
      dragContext : TWidget;
      x : TPosition;
      y : TPosition;
      dropSiteStatus : byte;
      operation : byte;
      operations : byte;
      animate : TBoolean;
    end;
  TXmDragProcCallback = PXmDragProcCallbackStruct;
  PXmDragProcCallback = ^TXmDragProcCallback;

  PXmDropProcCallbackStruct = ^TXmDropProcCallbackStruct;
  TXmDropProcCallbackStruct = record
      reason : longint;
      event : PXEvent;
      timeStamp : TTime;
      dragContext : TWidget;
      x : TPosition;
      y : TPosition;
      dropSiteStatus : byte;
      operation : byte;
      operations : byte;
      dropAction : byte;
    end;
  TXmDropProcCallback = PXmDropProcCallbackStruct;
  PXmDropProcCallback = ^TXmDropProcCallback;

  PXmDropSiteVisualsRec = ^TXmDropSiteVisualsRec;
  TXmDropSiteVisualsRec = record
      background : TPixel;
      foreground : TPixel;
      topShadowColor : TPixel;
      topShadowPixmap : TPixmap;
      bottomShadowColor : TPixel;
      bottomShadowPixmap : TPixmap;
      shadowThickness : TDimension;
      highlightColor : TPixel;
      highlightPixmap : TPixmap;
      highlightThickness : TDimension;
      borderWidth : TDimension;
    end;
  TXmDropSiteVisuals = PXmDropSiteVisualsRec;
  PXmDropSiteVisuals = ^TXmDropSiteVisuals;
{ DropSite Widget  }
  var
    xmDropSiteManagerObjectClass : TWidgetClass;cvar;external libXm;

//type
//  PXmDropSiteManagerObjectClass = ^TXmDropSiteManagerObjectClass;
//  TXmDropSiteManagerObjectClass = PXmDropSiteManagerClassRec;
//
//  PXmDropSiteManagerObject = ^TXmDropSiteManagerObject;
//  TXmDropSiteManagerObject = PXmDropSiteManagerRec;

function XmIsDropSiteManager(w : TWidget) : TBoolean;

{ XmIsDropSite  }
{*******    Public Function Declarations    ******* }

procedure XmDropSiteRegister(widget:TWidget; args:TArgList; argCount:TCardinal);cdecl;external libXm;
procedure XmDropSiteUnregister(widget:TWidget);cdecl;external libXm;
function XmDropSiteRegistered(widget:TWidget):TBoolean;cdecl;external libXm;
procedure XmDropSiteStartUpdate(refWidget:TWidget);cdecl;external libXm;
procedure XmDropSiteUpdate(enclosingWidget:TWidget; args:TArgList; argCount:TCardinal);cdecl;external libXm;
procedure XmDropSiteEndUpdate(refWidget:TWidget);cdecl;external libXm;
procedure XmDropSiteRetrieve(enclosingWidget:TWidget; args:TArgList; argCount:TCardinal);cdecl;external libXm;
function XmDropSiteQueryStackingOrder(widget:TWidget; parent_rtn:PWidget; children_rtn:PPWidget; num_children_rtn:PCardinal):longint;cdecl;external libXm;
procedure XmDropSiteConfigureStackingOrder(widget:TWidget; sibling:TWidget; stack_mode:TCardinal);cdecl;external libXm;
function XmDropSiteGetActiveVisuals(widget:TWidget):TXmDropSiteVisuals;cdecl;external libXm;
{*******    End Public Function Declarations    ******* }

implementation

function XmIsDropSiteManager(w: TWidget): TBoolean;
begin
  XmIsDropSiteManager:=XtIsSubclass(w,xmDropSiteManagerObjectClass);
end;

end.
