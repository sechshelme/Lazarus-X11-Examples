
unit ConvertI;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/ConvertI.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/ConvertI.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/ConvertI.pp
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
    PConverterRec  = ^ConverterRec;
    PConverterTable  = ^ConverterTable;
    PXtCacheRef  = ^XtCacheRef;
    PXtConvertArgRec  = ^XtConvertArgRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




(* error 
extern	XrmQuark  _XtQString;
in declaration at line 52 *)

    type
      PConverterTable = ^TConverterTable;
      TConverterTable = ^PConverterRec;


procedure _XtAddDefaultConverters(para1:TConverterTable);cdecl;external;

procedure _XtSetDefaultConverterTable(para1:PConverterTable);cdecl;external;

procedure _XtFreeConverterTable(para1:TConverterTable);cdecl;external;

procedure _XtTableAddConverter(para1:TConverterTable; para2:TXrmRepresentation; para3:TXrmRepresentation; para4:TXtTypeConverter; para5:PXtConvertArgRec; 
                para6:TCardinal; para7:TXtBoolean; para8:TXtCacheType; para9:TXtDestructor; para10:TXtBoolean);cdecl;external;

function _XtConvert(para1:TWidget; para2:TXrmRepresentation; para3:TXrmValuePtr; para4:TXrmRepresentation; para5:TXrmValuePtr; 
               para6:PXtCacheRef):TBoolean;cdecl;external;
procedure _XtConvertInitialize;cdecl;external;
{$ifdef DEBUG}
procedure _XtConverterCacheStats;cdecl;external;
{$endif}
(* error 
_XFUNCPROTOEND

implementation


end.
