
unit ConvertI;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/ConvertI.h
  The following command line parameters were used:
    /usr/include/X11/ConvertI.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/ConvertI.pp
}

    Type
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
      ConverterTable = ^^_ConverterRec;


    procedure _XtAddDefaultConverters(_para1:ConverterTable);cdecl;


    procedure _XtSetDefaultConverterTable(_para1:PConverterTable);cdecl;


    procedure _XtFreeConverterTable(_para1:ConverterTable);cdecl;


    procedure _XtTableAddConverter(_para1:ConverterTable; _para2:XrmRepresentation; _para3:XrmRepresentation; _para4:XtTypeConverter; _para5:PXtConvertArgRec; 
                _para6:Cardinal; _para7:_XtBoolean; _para8:XtCacheType; _para9:XtDestructor; _para10:_XtBoolean);cdecl;


    function _XtConvert(_para1:Widget; _para2:XrmRepresentation; _para3:XrmValuePtr; _para4:XrmRepresentation; _para5:XrmValuePtr; 
               _para6:PXtCacheRef):Boolean;cdecl;

    procedure _XtConvertInitialize;

{$ifdef DEBUG}
    procedure _XtConverterCacheStats;

{$endif}
(* error 
_XFUNCPROTOEND

implementation

    procedure _XtConvertInitialize;
    begin
      { You must implement this function }
    end;
    procedure _XtConverterCacheStats;
    begin
      { You must implement this function }
    end;

end.
