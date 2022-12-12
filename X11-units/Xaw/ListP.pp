
unit ListP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/ListP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/ListP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/ListP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawListP_h}
{$define _XawListP_h}  

{$include <X11/Xaw/SimpleP.h>}
{$include <X11/Xaw/List.h>}

  const
    NO_HIGHLIGHT = XAW_LIST_NONE;    
    OUT_OF_RANGE = -(1);    
    OKAY = 0;    


  type
    ListClassPart = record
        extension : XtPointer;
      end;


    _ListClassRec = record
        core_class : CoreClassPart;
        simple_class : SimpleClassPart;
        list_class : ListClassPart;
      end;
    ListClassRec = _ListClassRec;

    var
      listClassRec : ListClassRec;cvar;external;
















{$ifndef OLDXAW}

{$endif}

  type
    ListPart = record
        foreground : Pixel;
        internal_width : Dimension;
        internal_height : Dimension;
        column_space : Dimension;
        row_space : Dimension;
        default_cols : longint;
        force_cols : Boolean;
        paste : Boolean;
        vertical_cols : Boolean;
        longest : longint;
        nitems : longint;
        font : ^XFontStruct;
        fontset : XFontSet;
        list : ^String;
        callback : XtCallbackList;
        is_highlighted : longint;
        highlight : longint;
        col_width : longint;
        row_height : longint;
        nrows : longint;
        ncols : longint;
        normgc : GC;
        revgc : GC;
        graygc : GC;
        freedoms : longint;
        selected : longint;
        show_current : Boolean;
        pad1 : array[0..(((sizeof(XtPointer))-(sizeof(Boolean)))+((sizeof(XtPointer))-(sizeof(longint))))-1] of char;
        pad2 : array[0..1] of XtPointer;
      end;


    _ListRec = record
        core : CorePart;
        simple : SimplePart;
        list : ListPart;
      end;
    ListRec = _ListRec;
{$endif}


implementation


end.
