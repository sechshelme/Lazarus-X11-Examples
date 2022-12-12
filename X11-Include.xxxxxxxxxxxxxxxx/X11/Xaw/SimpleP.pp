
unit SimpleP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/SimpleP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/SimpleP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/SimpleP.pp
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
    PSimpleClassRec  = ^SimpleClassRec;
    PSimplePart  = ^SimplePart;
    PSimpleRec  = ^SimpleRec;
    PXawDisplayList  = ^XawDisplayList;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _SimpleP_h}
{$define _SimpleP_h}
{$include <X11/Xfuncproto.h>}
{$include <X11/Xaw/Simple.h>}
{$include <X11/Xaw/XawInit.h>}
(* error 
typedef struct {
in declaration at line 60 *)
{$ifndef OLDXAW}
      var
        extension : TXtPointer;cvar;public;
{$endif}
(* error 
} SimpleClassPart;
in declaration at line 64 *)
(* error 
#define XtInheritChangeSensitive	((Bool (*)(Widget))_XtInherit)
in define line 66 *)
    type
      PSimpleClassRec = ^TSimpleClassRec;
      TSimpleClassRec = record
          core_class : TCoreClassPart;
          simple_class : TSimpleClassPart;
        end;
      var
        simpleClassRec : TSimpleClassRec;cvar;external;




{$ifndef OLDXAW}

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
          display_list : PXawDisplayList;
          tip : TString;
          pad : array[0..2] of TXtPointer;
        end;

      PSimpleRec = ^TSimpleRec;
      TSimpleRec = record
          core : TCorePart;
          simple : TSimplePart;
        end;
{$endif}

(* error 
#endif /* _SimpleP_h */

implementation


end.
