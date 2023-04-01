unit XmCareVisualT;

interface

uses
  unixtype,
  x, xlib,
  xresource,
  XTIntrinsic,
  XmXm;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

//{$include <Xm/Xm.h>}

var
    XmQTcareParentVisual : TXrmQuark;cvar;external libXm;
{ Trait structures and typedefs, place typedefs first  }
type

  TXmCareVisualRedrawProc = function (kid:TWidget; cur_parent:TWidget; new_parent:TWidget; visual_flag:TMask):TBoolean;cdecl;
{ Version 0: initial release.  }

  PXmCareVisualTraitRec = ^TXmCareVisualTraitRec;
  TXmCareVisualTraitRec = record
      version : longint;
      redraw : TXmCareVisualRedrawProc;
    end;
  TXmCareVisualTrait = PXmCareVisualTraitRec;
  PXmCareVisualTrait = ^TXmCareVisualTrait;

const
  NoVisualChange = 0;  
  VisualForeground = 1 shl 0;  
  VisualHighlightPixmap = 1 shl 1;  
  VisualHighlightColor = 1 shl 2;  
  VisualBottomShadowPixmap = 1 shl 3;  
  VisualBottomShadowColor = 1 shl 4;  
  VisualTopShadowPixmap = 1 shl 5;  
  VisualTopShadowColor = 1 shl 6;  
  VisualBackgroundPixel = 1 shl 7;  
  VisualBackgroundPixmap = 1 shl 8;  
  VisualSelectColor = 1 shl 9;  

implementation

end.
