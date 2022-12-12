
unit RectObj;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/RectObj.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/RectObj.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/RectObj.pp
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
    PRectObjClass  = ^RectObjClass;
    PRectObjClassRec  = ^RectObjClassRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XtRect_h}
{$define _XtRect_h}
(* error 
typedef struct _RectObjRec *RectObj;
in declaration at line 53 *)
    type
      PRectObjClass = ^TRectObjClass;
      TRectObjClass = PRectObjClassRec;
{$ifndef VMS}
(* error 
externalref WidgetClass rectObjClass;
 in declarator_list *)
{$endif}
{$endif}


(* error 
/* DON'T ADD STUFF AFTER THIS #endif */

implementation


end.
