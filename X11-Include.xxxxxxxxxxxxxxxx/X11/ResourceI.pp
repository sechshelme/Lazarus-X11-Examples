
unit ResourceI;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/ResourceI.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/ResourceI.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/ResourceI.pp
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
    PCardinal  = ^Cardinal;
    Pchar  = ^char;
    PXrmResourceList  = ^XrmResourceList;
    PXrmValue  = ^XrmValue;
    PXtArgVal  = ^XtArgVal;
    PXtCacheRef  = ^XtCacheRef;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XtresourceI_h}
{$define _XtresourceI_h}

function StringToQuark(_string : longint) : longint;

function StringToName(_string : longint) : longint;

function StringToClass(_string : longint) : longint;

(* error 
extern void _XtDependencies(
in declaration at line 68 *)

procedure _XtResourceDependencies(para1:TWidgetClass);cdecl;external;

procedure _XtConstraintResDependencies(para1:TConstraintWidgetClass);cdecl;external;

function _XtGetResources(para1:TWidget; para2:TArgList; para3:TCardinal; para4:TXtTypedArgList; para5:PCardinal):PXtCacheRef;cdecl;external;

procedure _XtCopyFromParent(para1:TWidget; para2:longint; para3:PXrmValue);cdecl;external;
procedure _XtCopyToArg(src:Pchar; dst:PXtArgVal; size:dword);cdecl;external;
procedure _XtCopyFromArg(src:TXtArgVal; dst:Pchar; size:dword);cdecl;external;
function _XtCreateIndirectionTable(resources:TXtResourceList; num_resources:TCardinal):PXrmResourceList;cdecl;external;
procedure _XtResourceListInitialize;cdecl;external;
{$endif}

(* error 
#endif /* _XtresourceI_h */

implementation

function StringToQuark(_string : longint) : longint;
begin
  StringToQuark:=XrmStringToQuark(_string);
end;

function StringToName(_string : longint) : longint;
begin
  StringToName:=XrmStringToName(_string);
end;

function StringToClass(_string : longint) : longint;
begin
  StringToClass:=XrmStringToClass(_string);
end;


end.
