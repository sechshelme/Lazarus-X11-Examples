
unit SmeThreeDP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/SmeThreeDP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/SmeThreeDP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/SmeThreeDP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawSmeThreeDP_h}
{$define _XawSmeThreeDP_h}  
{$include <X11/Xaw3d/SmeThreeD.h>}
{$include <X11/Xaw3d/SmeP.h>}

  type
    SmeThreeDPart = record
        shadow_width : Dimension;
        top_shadow_pixel : Pixel;
        bot_shadow_pixel : Pixel;
        top_shadow_pxmap : Pixmap;
        bot_shadow_pxmap : Pixmap;
        top_shadow_contrast : longint;
        bot_shadow_contrast : longint;
        top_shadow_GC : GC;
        bot_shadow_GC : GC;
        erase_GC : GC;
        user_data : XtPointer;
        be_nice_to_cmap : Boolean;
        shadowed : Boolean;
      end;


    _SmeThreeDRec = record
        object : ObjectPart;
        rectangle : RectObjPart;
        sme : SmePart;
        sme_threeD : SmeThreeDPart;
      end;
    SmeThreeDRec = _SmeThreeDRec;
{$if NeedFunctionPrototypes}
{$endif}

  type

    XawSme3dShadowDrawProc = procedure (_para1:Widget);cdecl;

    SmeThreeDClassPart = record
        shadowdraw : XawSme3dShadowDrawProc;
      end;


    _SmeThreeDClassRec = record
        rect_class : RectObjClassPart;
        sme_class : SmeClassPart;
        sme_threeD_class : SmeThreeDClassPart;
      end;
    SmeThreeDClassRec = _SmeThreeDClassRec;


    var
      smeThreeDClassRec : SmeThreeDClassRec;cvar;external;

  function XtInheritXawSme3dShadowDraw : XawSme3dShadowDrawProc;    

{$endif}


implementation

  function XtInheritXawSme3dShadowDraw : XawSme3dShadowDrawProc;
    begin
      XtInheritXawSme3dShadowDraw:=XawSme3dShadowDrawProc(_XtInherit);
    end;


end.
