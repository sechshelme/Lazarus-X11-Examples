
unit List;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/List.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/List.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/List.pp
}

    Type
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
void XawListChange
{$if NeedWidePrototypes}
{$else}
{$endif}
in declaration at line 178 *)


    procedure XawListUnhighlight(w:Widget);


    procedure XawListHighlight(w:Widget; item:longint);


    function XawListShowCurrent(w:Widget):^XawListReturnStruct;

{$endif}

(* error 
#endif /* _XawList_h */

implementation

    procedure XawListUnhighlight(w:Widget);
    begin
      { You must implement this function }
    end;
    procedure XawListHighlight(w:Widget; item:longint);
    begin
      { You must implement this function }
    end;
    function XawListShowCurrent(w:Widget):PXawListReturnStruct;
    begin
      { You must implement this function }
    end;

end.
