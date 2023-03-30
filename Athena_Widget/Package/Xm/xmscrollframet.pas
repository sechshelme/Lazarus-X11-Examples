unit XmScrollFrameT;

interface

uses
  xresource,
  x,
  XTIntrinsic;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <Xm/Xm.h>}
// {$include <Xm/NavigatorT.h>}
  var
    XmQTscrollFrame : TXrmQuark;cvar;external libXm;
type
  TXmScrollFrameInitProc = procedure (sf:TWidget; moveCB:TXtCallbackProc; scrollable:TWidget);cdecl;
  TXmScrollFrameGetInfoProc = function (sf:TWidget; dimension:PCardinal; nav_list:PPWidget; num_nav_list:PCardinal):TBoolean;cdecl;
  TXmScrollFrameAddNavigatorProc = procedure (sf:TWidget; nav:TWidget; dimMask:TMask);cdecl;
  TXmScrollFrameRemoveNavigatorProc = procedure (sf:TWidget; nav:TWidget);cdecl;
  TXmScrollFrameUpdateOrigGeomProc = procedure (sf:TWidget; child:TWidget; geom:PXtWidgetGeometry);cdecl;
{ Version 1: added updateOrigGeom  }

  PXmScrollFrameTraitRec = ^TXmScrollFrameTraitRec;
  TXmScrollFrameTraitRec = record
      version : longint;
      init : TXmScrollFrameInitProc;
      getInfo : TXmScrollFrameGetInfoProc;
      addNavigator : TXmScrollFrameAddNavigatorProc;
      removeNavigator : TXmScrollFrameRemoveNavigatorProc;
      updateOrigGeom : TXmScrollFrameUpdateOrigGeomProc;
    end;
  TXmScrollFrameTrait = PXmScrollFrameTraitRec;
  PXmScrollFrameTrait = ^TXmScrollFrameTrait;
{ This one gets allocated per instance by the scrollFrame
   class. It is just a convenient structure reusable by other scrollFrame
   and it needs not to be part of the public trait API  }

  PXmScrollFrameDataRec = ^TXmScrollFrameDataRec;
  TXmScrollFrameDataRec = record
      move_cb : TXtCallbackProc;
      scrollable : TWidget;
      nav_list : PWidget;
      num_nav_list : TCardinal;
      num_nav_slots : TCardinal;
    end;
  TXmScrollFrameData = PXmScrollFrameDataRec;
  PXmScrollFrameData = ^TXmScrollFrameData;

implementation

end.
