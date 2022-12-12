
unit List;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/List.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/List.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/List.pp
}

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
      listWidgetClass : WidgetClass;cvar;external;

  type
    ListWidgetClass = ^_ListClassRec;

    ListWidget = ^_ListRec;


    _XawListReturnStruct = record
        _string : String;
        list_index : longint;
      end;
    XawListReturnStruct = _XawListReturnStruct;


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

    procedure XawListUnhighlight(_para1:Widget);cdecl;


{$if NeedFunctionPrototypes}

{$endif}

    procedure XawListHighlight(_para1:Widget; _para2:longint);cdecl;


{$if NeedFunctionPrototypes}

{$endif}

    function XawListShowCurrent(_para1:Widget):^XawListReturnStruct;cdecl;

{$endif}

(* error 
#endif /* _XawList_h */

implementation


end.
