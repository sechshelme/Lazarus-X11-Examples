
unit Xag;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/Xag.h
  The following command line parameters were used:
    /usr/include/X11/extensions/Xag.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/Xag.pp
}

    Type
    PDisplay  = ^Display;
    Plongint  = ^longint;
    PWindow  = ^Window;
    PXAppGroup  = ^XAppGroup;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XAG_H_}
{$define _XAG_H_}  
{$include <X11/extensions/ag.h>}
{$include <X11/Xfuncproto.h>}
{$include <stdarg.h>}
(* error 
typedef XID XAppGroup;
in declaration at line 37 *)


    function XagQueryVersion(_para1:PDisplay; _para2:Plongint; _para3:Plongint):Bool;


    function XagCreateEmbeddedApplicationGroup(_para1:PDisplay; _para2:VisualID; _para3:Colormap; _para4:dword; _para5:dword; 
               _para6:PXAppGroup):Status;


    function XagCreateNonembeddedApplicationGroup(_para1:PDisplay; _para2:PXAppGroup):Status;


    function XagDestroyApplicationGroup(_para1:PDisplay; _para2:XAppGroup):Status;

    function XagGetApplicationGroupAttributes(_para1:PDisplay; _para2:XAppGroup; args:array of const):Status;


    function XagQueryApplicationGroup(_para1:PDisplay; _para2:XID; _para3:PXAppGroup):Status;


    function XagCreateAssociation(_para1:PDisplay; _para2:PWindow; _para3:pointer):Status;


    function XagDestroyAssociation(_para1:PDisplay; _para2:Window):Status;

{$endif}

(* error 


implementation

    function XagQueryVersion(_para1:PDisplay; _para2:Plongint; _para3:Plongint):Bool;
    begin
      { You must implement this function }
    end;
    function XagCreateEmbeddedApplicationGroup(_para1:PDisplay; _para2:VisualID; _para3:Colormap; _para4:dword; _para5:dword; 
               _para6:PXAppGroup):Status;
    begin
      { You must implement this function }
    end;
    function XagCreateNonembeddedApplicationGroup(_para1:PDisplay; _para2:PXAppGroup):Status;
    begin
      { You must implement this function }
    end;
    function XagDestroyApplicationGroup(_para1:PDisplay; _para2:XAppGroup):Status;
    begin
      { You must implement this function }
    end;
    function XagGetApplicationGroupAttributes(_para1:PDisplay; _para2:XAppGroup):Status;
    begin
      { You must implement this function }
    end;
    function XagQueryApplicationGroup(_para1:PDisplay; _para2:XID; _para3:PXAppGroup):Status;
    begin
      { You must implement this function }
    end;
    function XagCreateAssociation(_para1:PDisplay; _para2:PWindow; _para3:pointer):Status;
    begin
      { You must implement this function }
    end;
    function XagDestroyAssociation(_para1:PDisplay; _para2:Window):Status;
    begin
      { You must implement this function }
    end;

end.
