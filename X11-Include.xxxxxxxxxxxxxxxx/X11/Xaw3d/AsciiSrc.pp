
unit AsciiSrc;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/AsciiSrc.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/AsciiSrc.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/AsciiSrc.pp
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
    PAsciiSrcClassRec  = ^AsciiSrcClassRec;
    PAsciiSrcObject  = ^AsciiSrcObject;
    PAsciiSrcObjectClass  = ^AsciiSrcObjectClass;
    PAsciiSrcRec  = ^AsciiSrcRec;
    PXawAsciiType  = ^XawAsciiType;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef _XawAsciiSrc_h}
{$define _XawAsciiSrc_h}
{$include <X11/Xaw3d/TextSrc.h>}


  var
    asciiSrcObjectClass : TWidgetClass;cvar;external;
type
  PAsciiSrcObjectClass = ^TAsciiSrcObjectClass;
  TAsciiSrcObjectClass = PAsciiSrcClassRec;

  PAsciiSrcObject = ^TAsciiSrcObject;
  TAsciiSrcObject = PAsciiSrcRec;


const
  AsciiSourceObjectClass = AsciiSrcObjectClass;  
  AsciiSourceObject = AsciiSrcObject;  

  XtCDataCompression = 'DataCompression';  
  XtCPieceSize = 'PieceSize';  
  XtCType = 'Type';  
  XtCUseStringInPlace = 'UseStringInPlace';  
  XtNdataCompression = 'dataCompression';  
  XtNpieceSize = 'pieceSize';  
  XtNtype = 'type';  
  XtNuseStringInPlace = 'useStringInPlace';  
  XtRAsciiType = 'AsciiType';  
  XtEstring = 'string';  
  XtEfile = 'file';  
type
  PXawAsciiType = ^TXawAsciiType;
  TXawAsciiType = (XawAsciiFile,XawAsciiString);


(* error 
extern void XawAsciiSourceFreeString(
{$if NeedFunctionPrototypes}

{$endif}
in declaration at line 119 *)

{$if NeedFunctionPrototypes}

{$endif}

function XawAsciiSave(para1:TWidget):TBoolean;cdecl;external;

{$if NeedFunctionPrototypes}
(* error 
    _Xconst char*	/* name */

{$endif}
 in declarator_list *)

{$if NeedFunctionPrototypes}

{$endif}

function XawAsciiSourceChanged(para1:TWidget):TBoolean;cdecl;external;
{$endif}

(* error 


implementation


end.
