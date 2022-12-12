
unit ResourceI;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/ResourceI.h
  The following command line parameters were used:
    /usr/include/X11/ResourceI.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/ResourceI.pp
}

    Type
    PCardinal  = ^Cardinal;
    Pchar  = ^char;
    PXrmValue  = ^XrmValue;
    PXtArgVal  = ^XtArgVal;
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

    procedure _XtResourceDependencies(_para1:WidgetClass);cdecl;


    procedure _XtConstraintResDependencies(_para1:ConstraintWidgetClass);cdecl;


    function _XtGetResources(_para1:Widget; _para2:ArgList; _para3:Cardinal; _para4:XtTypedArgList; _para5:PCardinal):^XtCacheRef;cdecl;


    procedure _XtCopyFromParent(_para1:Widget; _para2:longint; _para3:PXrmValue);cdecl;

    procedure _XtCopyToArg(src:Pchar; dst:PXtArgVal; size:dword);cdecl;

    procedure _XtCopyFromArg(src:XtArgVal; dst:Pchar; size:dword);cdecl;

    function _XtCreateIndirectionTable(resources:XtResourceList; num_resources:Cardinal):^XrmResourceList;cdecl;

    procedure _XtResourceListInitialize;cdecl;

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
