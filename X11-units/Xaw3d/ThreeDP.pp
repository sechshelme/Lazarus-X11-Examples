
unit ThreeDP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/ThreeDP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/ThreeDP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/ThreeDP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _ThreeDP_h}
{$define _ThreeDP_h}  
{$include <X11/Xaw3d/ThreeD.h>}
{$include <X11/Xaw3d/SimpleP.h>}

  const
    XtRRelief = 'Relief';    

  type
    ThreeDPart = record
        shadow_width : Dimension;
        top_shadow_pixel : Pixel;
        bot_shadow_pixel : Pixel;
        top_shadow_pxmap : Pixmap;
        bot_shadow_pxmap : Pixmap;
        top_shadow_contrast : longint;
        bot_shadow_contrast : longint;
        top_shadow_GC : GC;
        bot_shadow_GC : GC;
        user_data : XtPointer;
        be_nice_to_cmap : Boolean;
        relief : XtRelief;
      end;


    _ThreeDRec = record
        core : CorePart;
        simple : SimplePart;
        threeD : ThreeDPart;
      end;
    ThreeDRec = _ThreeDRec;

    ThreeDClassPart = record
        shadowdraw : procedure ;cdecl;
      end;
(* error 
#define XtInheritXaw3dShadowDraw ((void (*)())_XtInherit)
in define line 64 *)


      _ThreeDClassRec = record
          core_class : CoreClassPart;
          simple_class : SimpleClassPart;
          threeD_class : ThreeDClassPart;
        end;
      ThreeDClassRec = _ThreeDClassRec;


      var
        threeDClassRec : ThreeDClassRec;cvar;external;
{$endif}


implementation


end.
