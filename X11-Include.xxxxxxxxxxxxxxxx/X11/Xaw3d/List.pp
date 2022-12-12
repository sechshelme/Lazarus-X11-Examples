
unit List;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/List.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/List.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/List.pp
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
    PListClassRec  = ^ListClassRec;
    PListRec  = ^ListRec;
    PListWidget  = ^ListWidget;
    PListWidgetClass  = ^ListWidgetClass;
    PXawListReturnStruct  = ^XawListReturnStruct;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef _XawList_h}
{$define _XawList_h}

{$include "Xaw3dP.h"}
{$include <X11/Xaw3d/Simple.h>}



const
  XAW_LIST_NONE = -(1);  
  XtCList = 'List';  
  XtCSpacing = 'Spacing';  
  XtCColumns = 'Columns';  
  XtCLongest = 'Longest';  
  XtCNumberStrings = 'NumberStrings';  
  XtNcursor = 'cursor';  
  XtNcolumnSpacing = 'columnSpacing';  
  XtNdefaultColumns = 'defaultColumns';  
  XtNforceColumns = 'forceColumns';  
  XtNlist = 'list';  
  XtNlongest = 'longest';  
  XtNnumberStrings = 'numberStrings';  
  XtNpasteBuffer = 'pasteBuffer';  
  XtNrowSpacing = 'rowSpacing';  
  XtNverticalList = 'verticalList';  
{$ifdef XAW_INTERNATIONALIZATION}
{$ifndef XtNfontSet}

const
  XtNfontSet = 'fontSet';  
{$endif}
{$ifndef XtCFontSet}

const
  XtCFontSet = 'FontSet';  
{$endif}
{$endif}

  var
    listWidgetClass : TWidgetClass;cvar;external;
type
  PListWidgetClass = ^TListWidgetClass;
  TListWidgetClass = PListClassRec;

  PListWidget = ^TListWidget;
  TListWidget = PListRec;


  PXawListReturnStruct = ^TXawListReturnStruct;
  TXawListReturnStruct = record
      _string : TString;
      list_index : longint;
    end;


(* error 
extern void XawListChange(
{$if NeedFunctionPrototypes}
{$if NeedWidePrototypes}

{$else}

{$endif}
{$endif}
in declaration at line 196 *)

{$if NeedFunctionPrototypes}

{$endif}

procedure XawListUnhighlight(para1:TWidget);cdecl;external;

{$if NeedFunctionPrototypes}

{$endif}

procedure XawListHighlight(para1:TWidget; para2:longint);cdecl;external;

{$if NeedFunctionPrototypes}

{$endif}

function XawListShowCurrent(para1:TWidget):PXawListReturnStruct;cdecl;external;
{$endif}

(* error 
#endif /* _XawList_h */

implementation


end.
