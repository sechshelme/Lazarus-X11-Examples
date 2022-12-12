
unit SmeBSBP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/SmeBSBP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/SmeBSBP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/SmeBSBP.pp
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
PSmeBSBClassPart  = ^SmeBSBClassPart;
PSmeBSBClassRec  = ^SmeBSBClassRec;
PSmeBSBPart  = ^SmeBSBPart;
PSmeBSBRec  = ^SmeBSBRec;
PXFontStruct  = ^XFontStruct;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawSmeBSBP_h}
{$define _XawSmeBSBP_h}

{$include "Xaw3dP.h"}
{$include <X11/Xaw3d/SmeThreeDP.h>}
{$include <X11/Xaw3d/SmeBSB.h>}

type
  PSmeBSBClassPart = ^TSmeBSBClassPart;
  TSmeBSBClassPart = record
      extension : TXtPointer;
    end;


  PSmeBSBClassRec = ^TSmeBSBClassRec;
  TSmeBSBClassRec = record
      rect_class : TRectObjClassPart;
      sme_class : TSmeClassPart;
      sme_threeD_class : TSmeThreeDClassPart;
      sme_bsb_class : TSmeBSBClassPart;
    end;
  var
    smeBSBClassRec : TSmeBSBClassRec;cvar;external;








{$ifdef XAW_INTERNATIONALIZATION}

{$endif}











type
  PSmeBSBPart = ^TSmeBSBPart;
  TSmeBSBPart = record
      _label : TString;
      vert_space : longint;
      left_bitmap : TPixmap;
      right_bitmap : TPixmap;
      left_margin : TDimension;
      right_margin : TDimension;
      foreground : TPixel;
      font : PXFontStruct;
      fontset : TXFontSet;
      justify : TXtJustify;
      underline : longint;
      set_values_area_cleared : TBoolean;
      norm_gc : TGC;
      rev_gc : TGC;
      norm_gray_gc : TGC;
      invert_gc : TGC;
      left_stippled : TPixmap;
      right_stippled : TPixmap;
      left_bitmap_width : TDimension;
      left_bitmap_height : TDimension;
      right_bitmap_width : TDimension;
      right_bitmap_height : TDimension;
      left_depth : dword;
      right_depth : dword;
      menu_name : TString;
    end;


  PSmeBSBRec = ^TSmeBSBRec;
  TSmeBSBRec = record
      object : TObjectPart;
      rectangle : TRectObjPart;
      sme : TSmePart;
      sme_threeD : TSmeThreeDPart;
      sme_bsb : TSmeBSBPart;
    end;

{$endif}


implementation


end.
