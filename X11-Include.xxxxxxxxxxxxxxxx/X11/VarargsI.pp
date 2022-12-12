
unit VarargsI;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/VarargsI.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/VarargsI.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/VarargsI.pp
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


procedure _XtVaToArgList(para1:TWidget; para2:Tva_list; para3:longint; para4:PArgList; para5:PCardinal);cdecl;external;

procedure _XtVaToTypedArgList(para1:Tva_list; para2:longint; para3:PXtTypedArgList; para4:PCardinal);cdecl;external;

function _XtVaCreateTypedArgList(para1:Tva_list; para2:longint):TXtTypedArgList;cdecl;external;

procedure _XtFreeArgList(para1:TArgList; para2:longint; para3:longint);cdecl;external;

procedure _XtGetApplicationResources(para1:TWidget; para2:TXtPointer; para3:TXtResourceList; para4:TCardinal; para5:TArgList; 
                para6:TCardinal; para7:TXtTypedArgList; para8:TCardinal);cdecl;external;

procedure _XtGetSubresources(para1:TWidget; para2:TXtPointer; para3:Pchar; para4:Pchar; para5:TXtResourceList; 
                para6:TCardinal; para7:TArgList; para8:TCardinal; para9:TXtTypedArgList; para10:TCardinal);cdecl;external;
{$endif}

(* error 
#endif /* _VarargsI_h_ */

implementation


end.
