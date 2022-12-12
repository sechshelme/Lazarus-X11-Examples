
unit SmeThreeDP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/SmeThreeDP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/SmeThreeDP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/SmeThreeDP.pp
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
PSmeThreeDClassPart  = ^SmeThreeDClassPart;
PSmeThreeDClassRec  = ^SmeThreeDClassRec;
PSmeThreeDPart  = ^SmeThreeDPart;
PSmeThreeDRec  = ^SmeThreeDRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawSmeThreeDP_h}
{$define _XawSmeThreeDP_h}
{$include <X11/Xaw3d/SmeThreeD.h>}
{$include <X11/Xaw3d/SmeP.h>}
type
  PSmeThreeDPart = ^TSmeThreeDPart;
  TSmeThreeDPart = record
      shadow_width : TDimension;
      top_shadow_pixel : TPixel;
      bot_shadow_pixel : TPixel;
      top_shadow_pxmap : TPixmap;
      bot_shadow_pxmap : TPixmap;
      top_shadow_contrast : longint;
      bot_shadow_contrast : longint;
      top_shadow_GC : TGC;
      bot_shadow_GC : TGC;
      erase_GC : TGC;
      user_data : TXtPointer;
      be_nice_to_cmap : TBoolean;
      shadowed : TBoolean;
    end;


  PSmeThreeDRec = ^TSmeThreeDRec;
  TSmeThreeDRec = record
      object : TObjectPart;
      rectangle : TRectObjPart;
      sme : TSmePart;
      sme_threeD : TSmeThreeDPart;
    end;
{$if NeedFunctionPrototypes}
{$endif}
type

  TXawSme3dShadowDrawProc = procedure (para1:TWidget);cdecl;

  PSmeThreeDClassPart = ^TSmeThreeDClassPart;
  TSmeThreeDClassPart = record
      shadowdraw : TXawSme3dShadowDrawProc;
    end;


  PSmeThreeDClassRec = ^TSmeThreeDClassRec;
  TSmeThreeDClassRec = record
      rect_class : TRectObjClassPart;
      sme_class : TSmeClassPart;
      sme_threeD_class : TSmeThreeDClassPart;
    end;

  var
    smeThreeDClassRec : TSmeThreeDClassRec;cvar;external;

function XtInheritXawSme3dShadowDraw : TXawSme3dShadowDrawProc;  

{$endif}


implementation

function XtInheritXawSme3dShadowDraw : TXawSme3dShadowDrawProc;
  begin
    XtInheritXawSme3dShadowDraw:=TXawSme3dShadowDrawProc(_XtInherit);
  end;


end.
