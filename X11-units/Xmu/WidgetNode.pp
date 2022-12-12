
unit WidgetNode;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xmu/WidgetNode.h
  The following command line parameters were used:
    /usr/include/X11/Xmu/WidgetNode.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xmu/WidgetNode.pp
}

    Type
    PXmuWidgetNode  = ^XmuWidgetNode;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XmuWidgetNode_h}
{$define _XmuWidgetNode_h}  
{$include <X11/Intrinsic.h>}
{$include <X11/Xfuncproto.h>}
















  type
    _XmuWidgetNode = record
        _label : ^char;
        widget_class_ptr : ^WidgetClass;
        superclass : ^_XmuWidgetNode;
        children : ^_XmuWidgetNode;
        siblings : ^_XmuWidgetNode;
        lowered_label : ^char;
        lowered_classname : ^char;
        have_resources : Bool;
        resources : XtResourceList;
        resourcewn : ^^_XmuWidgetNode;
        nresources : Cardinal;
        constraints : XtResourceList;
        constraintwn : ^^_XmuWidgetNode;
        nconstraints : Cardinal;
        data : XtPointer;
      end;
    XmuWidgetNode = _XmuWidgetNode;

  function XmuWnClass(wn : longint) : longint;  

  function XmuWnClassname(wn : longint) : longint;  

  function XmuWnSuperclass(wn : longint) : longint;  


(* error 
void XmuWnInitializeNodes
in declaration at line 69 *)
    procedure XmuWnFetchResources(node:PXmuWidgetNode; toplevel:Widget; topnode:PXmuWidgetNode);

    function XmuWnCountOwnedResources(node:PXmuWidgetNode; ownernode:PXmuWidgetNode; constraints:Bool):longint;

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

    procedure XmuWnFetchResources(node:PXmuWidgetNode; toplevel:Widget; topnode:PXmuWidgetNode);
    begin
      { You must implement this function }
    end;
    function XmuWnCountOwnedResources(node:PXmuWidgetNode; ownernode:PXmuWidgetNode; constraints:Bool):longint;
    begin
      { You must implement this function }
    end;

end.
