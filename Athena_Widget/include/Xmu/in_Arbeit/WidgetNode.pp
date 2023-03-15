
unit WidgetNode;
interface

{
  Automatically converted by H2Pas 1.0.0 from WidgetNode.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    WidgetNode.h
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


{

Copyright 1990, 1998  The Open Group

Permission to use, copy, modify, distribute, and sell this software and its
documentation for any purpose is hereby granted without fee, provided that
the above copyright notice appear in all copies and that both that
copyright notice and this permission notice appear in supporting
documentation.

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
OPEN GROUP BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN
AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Except as contained in this notice, the name of The Open Group shall not be
used in advertising or otherwise to promote the sale, use or other dealings
in this Software without prior written authorization from The Open Group.

 }
{
 * Author:  Jim Fulton, MIT X Consortium
  }
{$ifndef _XmuWidgetNode_h}
{$define _XmuWidgetNode_h}
{$include <X11/Intrinsic.h>}
{$include <X11/Xfuncproto.h>}
{
 * This is usually initialized by setting the first two fields and letting
 * rest be implicitly nulled (by genlist.sh, for example)
  }
{ mixed case name  }
{ addr of widget class  }
{ superclass of widget_class  }
{ subclass links  }
{ lowercase version of label  }
{ lowercase version of class_name  }
{ resources have been fetched  }
{ extracted resource database  }
{ where resources come from  }
{ number of resources  }
{ extracted constraint resources  }
{ where constraints come from  }
{ number of constraint resources  }
{ extra data  }
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
{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   

function XmuWnClass(wn : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function XmuWnClassname(wn : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function XmuWnSuperclass(wn : longint) : longint;

{ external interfaces  }
{_XFUNCPROTOBEGIN }
procedure XmuWnInitializeNodes(nodearray:PXmuWidgetNode; nnodes:longint);cdecl;external;
procedure XmuWnFetchResources(node:PXmuWidgetNode; toplevel:TWidget; topnode:PXmuWidgetNode);cdecl;external;
function XmuWnCountOwnedResources(node:PXmuWidgetNode; ownernode:PXmuWidgetNode; constraints:TBool):longint;cdecl;external;
(* Const before type ignored *)
function XmuWnNameToNode(nodelist:PXmuWidgetNode; nnodes:longint; name:Pchar):PXmuWidgetNode;cdecl;external;
{_XFUNCPROTOEND }
{$endif}
{ _XmuWidgetNode_h  }

implementation

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function XmuWnClass(wn : longint) : longint;
begin
  XmuWnClass:=wn^.(widget_class_ptr[0]);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function XmuWnClassname(wn : longint) : longint;
begin
  XmuWnClassname:=(XmuWnClass(wn))^.(core_class.class_name);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function XmuWnSuperclass(wn : longint) : longint;
begin
  XmuWnSuperclass:=(XmuWnClass(wn))^.(core_class.superclass);
end;


end.
