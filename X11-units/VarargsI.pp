
unit VarargsI;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/VarargsI.h
  The following command line parameters were used:
    /usr/include/X11/VarargsI.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/VarargsI.pp
}

    Type
    PArgList  = ^ArgList;
    PCardinal  = ^Cardinal;
    Pchar  = ^char;
    PXtTypedArgList  = ^XtTypedArgList;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _VarargsI_h_}
{$define _VarargsI_h_}  
{$include <stdarg.h>}

(* error 
extern void _XtCountVaList(

in declaration at line 38 *)


    procedure _XtVaToArgList(_para1:Widget; _para2:va_list; _para3:longint; _para4:PArgList; _para5:PCardinal);cdecl;


    procedure _XtVaToTypedArgList(_para1:va_list; _para2:longint; _para3:PXtTypedArgList; _para4:PCardinal);cdecl;


    function _XtVaCreateTypedArgList(_para1:va_list; _para2:longint):XtTypedArgList;cdecl;


    procedure _XtFreeArgList(_para1:ArgList; _para2:longint; _para3:longint);cdecl;


    procedure _XtGetApplicationResources(_para1:Widget; _para2:XtPointer; _para3:XtResourceList; _para4:Cardinal; _para5:ArgList; 
                _para6:Cardinal; _para7:XtTypedArgList; _para8:Cardinal);cdecl;


    procedure _XtGetSubresources(_para1:Widget; _para2:XtPointer; _para3:Pchar; _para4:Pchar; _para5:XtResourceList; 
                _para6:Cardinal; _para7:ArgList; _para8:Cardinal; _para9:XtTypedArgList; _para10:Cardinal);cdecl;

{$endif}

(* error 
#endif /* _VarargsI_h_ */

implementation


end.
