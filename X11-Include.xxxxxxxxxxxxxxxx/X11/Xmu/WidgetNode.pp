
unit WidgetNode;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/WidgetNode.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/WidgetNode.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/WidgetNode.pp
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
    Pchar  = ^char;
    PWidgetClass  = ^WidgetClass;
    PXmuWidgetNode  = ^XmuWidgetNode;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XmuWidgetNode_h}
{$define _XmuWidgetNode_h}
{$include <X11/Intrinsic.h>}
{$include <X11/Xfuncproto.h>}















type
  PXmuWidgetNode = ^TXmuWidgetNode;
  TXmuWidgetNode = record
      _label : Pchar;
      widget_class_ptr : PWidgetClass;
      superclass : PXmuWidgetNode;
      children : PXmuWidgetNode;
      siblings : PXmuWidgetNode;
      lowered_label : Pchar;
      lowered_classname : Pchar;
      have_resources : TBool;
      resources : TXtResourceList;
      resourcewn : ^PXmuWidgetNode;
      nresources : TCardinal;
      constraints : TXtResourceList;
      constraintwn : ^PXmuWidgetNode;
      nconstraints : TCardinal;
      data : TXtPointer;
    end;

function XmuWnClass(wn : longint) : longint;

function XmuWnClassname(wn : longint) : longint;

function XmuWnSuperclass(wn : longint) : longint;


(* error 
void XmuWnInitializeNodes
in declaration at line 69 *)
procedure XmuWnFetchResources(node:PXmuWidgetNode; toplevel:TWidget; topnode:PXmuWidgetNode);cdecl;external;
function XmuWnCountOwnedResources(node:PXmuWidgetNode; ownernode:PXmuWidgetNode; constraints:TBool):longint;cdecl;external;
(* error 
 _Xconst char		*name
 in declarator_list *)
{$endif}

(* error 


implementation

function XmuWnClass(wn : longint) : longint;
begin
  XmuWnClass:=wn^.(widget_class_ptr[0]);
end;

function XmuWnClassname(wn : longint) : longint;
begin
  XmuWnClassname:=(XmuWnClass(wn))^.(core_class.class_name);
end;

function XmuWnSuperclass(wn : longint) : longint;
begin
  XmuWnSuperclass:=(XmuWnClass(wn))^.(core_class.superclass);
end;


end.
