
unit List;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/List.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/List.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/List.pp
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
{$include <X11/Xaw/Simple.h>}



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
  XtNshowCurrent = 'showCurrent';  
{$ifndef XtNfontSet}

const
  XtNfontSet = 'fontSet';  
{$endif}
{$ifndef XtCFontSet}

const
  XtCFontSet = 'FontSet';  
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
void XawListChange
{$if NeedWidePrototypes}
{$else}
{$endif}
in declaration at line 178 *)


procedure XawListUnhighlight(w:TWidget);cdecl;external;

procedure XawListHighlight(w:TWidget; item:longint);cdecl;external;

function XawListShowCurrent(w:TWidget):PXawListReturnStruct;cdecl;external;
{$endif}

(* error 
#endif /* _XawList_h */

implementation


end.
