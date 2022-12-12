
unit SimpleP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/SimpleP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/SimpleP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/SimpleP.pp
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
    PSimpleClassPart  = ^SimpleClassPart;
    PSimpleClassRec  = ^SimpleClassRec;
    PSimplePart  = ^SimplePart;
    PSimpleRec  = ^SimpleRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _SimpleP_h}
{$define _SimpleP_h}
{$include "Xaw3dP.h"}
{$include <X11/Xaw3d/Simple.h>}
type
  PSimpleClassPart = ^TSimpleClassPart;
  TSimpleClassPart = record
      change_sensitive : function :TBoolean;cdecl;
    end;
(* error 
#define XtInheritChangeSensitive ((Boolean (*)())_XtInherit)
in define line 62 *)

      PSimpleClassRec = ^TSimpleClassRec;
      TSimpleClassRec = record
          core_class : TCoreClassPart;
          simple_class : TSimpleClassPart;
        end;
      var
        simpleClassRec : TSimpleClassRec;cvar;external;



{$ifdef XAW_INTERNATIONALIZATION}
{$endif}

    type
      PSimplePart = ^TSimplePart;
      TSimplePart = record
          cursor : TCursor;
          insensitive_border : TPixmap;
          cursor_name : TString;
          pointer_fg : TPixel;
          pointer_bg : TPixel;
          international : TBoolean;
        end;

      PSimpleRec = ^TSimpleRec;
      TSimpleRec = record
          core : TCorePart;
          simple : TSimplePart;
        end;
{$endif}


implementation


end.
