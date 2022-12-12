
unit Composite;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Composite.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Composite.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Composite.pp
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
    PCompositeClassRec  = ^CompositeClassRec;
    PCompositeWidgetClass  = ^CompositeWidgetClass;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XtComposite_h}
{$define _XtComposite_h}
type
  PCompositeWidgetClass = ^TCompositeWidgetClass;
  TCompositeWidgetClass = PCompositeClassRec;


  TXtOrderProc = function (para1:TWidget):TCardinal;cdecl;
(* error 
extern void XtManageChildren(

in declaration at line 62 *)


procedure XtManageChild(para1:TWidget);cdecl;external;

procedure XtUnmanageChildren(para1:TWidgetList; para2:TCardinal);cdecl;external;

procedure XtUnmanageChild(para1:TWidget);cdecl;external;

    type

      TXtDoChangeProc = procedure (para1:TWidget; para2:TWidgetList; para3:PCardinal; para4:TWidgetList; para5:PCardinal; 
                    para6:TXtPointer);cdecl;


procedure XtChangeManagedSet(para1:TWidgetList; para2:TCardinal; para3:TXtDoChangeProc; para4:TXtPointer; para5:TWidgetList; 
                para6:TCardinal);cdecl;external;
{$ifndef VMS}
(* error 
externalref WidgetClass compositeWidgetClass;
 in declarator_list *)
{$endif}
{$endif}



implementation


end.
