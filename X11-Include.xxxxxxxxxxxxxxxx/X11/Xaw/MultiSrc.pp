
unit MultiSrc;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/MultiSrc.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/MultiSrc.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/MultiSrc.pp
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
    PMultiSrcClassRec  = ^MultiSrcClassRec;
    PMultiSrcObject  = ^MultiSrcObject;
    PMultiSrcObjectClass  = ^MultiSrcObjectClass;
    PMultiSrcRec  = ^MultiSrcRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef _XawMultiSrc_h}
{$define _XawMultiSrc_h}
{$include <X11/Xaw/TextSrc.h>}

  var
    multiSrcObjectClass : TWidgetClass;cvar;external;
type
  PMultiSrcObjectClass = ^TMultiSrcObjectClass;
  TMultiSrcObjectClass = PMultiSrcClassRec;

  PMultiSrcObject = ^TMultiSrcObject;
  TMultiSrcObject = PMultiSrcRec;

const
  MultiSourceObjectClass = MultiSrcObjectClass;  
  MultiSourceObject = MultiSrcObject;  
  XtCDataCompression = 'DataCompression';  
  XtCPieceSize = 'PieceSize';  
  XtCType = 'Type';  
  XtCUseStringInPlace = 'UseStringInPlace';  
  XtNdataCompression = 'dataCompression';  
  XtNpieceSize = 'pieceSize';  
  XtNtype = 'type';  
  XtNuseStringInPlace = 'useStringInPlace';  
  XtRMultiType = 'MultiType';  
  XtEstring = 'string';  
  XtEfile = 'file';  

(* error 
void XawMultiSourceFreeString
in declaration at line 115 *)

function _XawMultiSave(w:TWidget):TBool;cdecl;external;
(* error 
 _Xconst char		*name
 in declarator_list *)
{$endif}

(* error 
#endif /* _XawMultiSrc_h  */

implementation


end.
