
unit Composite;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Composite.h
  The following command line parameters were used:
    /usr/include/X11/Composite.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Composite.pp
}

    Type
    PCardinal  = ^Cardinal;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XtComposite_h}
{$define _XtComposite_h}  

  type
    CompositeWidgetClass = ^_CompositeClassRec;


    XtOrderProc = function (_para1:Widget):Cardinal;cdecl;
(* error 
extern void XtManageChildren(

in declaration at line 62 *)


    procedure XtManageChild(_para1:Widget);cdecl;


    procedure XtUnmanageChildren(_para1:WidgetList; _para2:Cardinal);cdecl;


    procedure XtUnmanageChild(_para1:Widget);cdecl;



    type

      XtDoChangeProc = procedure (_para1:Widget; _para2:WidgetList; _para3:PCardinal; _para4:WidgetList; _para5:PCardinal; 
                    _para6:XtPointer);cdecl;


    procedure XtChangeManagedSet(_para1:WidgetList; _para2:Cardinal; _para3:XtDoChangeProc; _para4:XtPointer; _para5:WidgetList; 
                _para6:Cardinal);cdecl;

{$ifndef VMS}
(* error 
externalref WidgetClass compositeWidgetClass;
 in declarator_list *)
{$endif}
{$endif}



implementation


end.
