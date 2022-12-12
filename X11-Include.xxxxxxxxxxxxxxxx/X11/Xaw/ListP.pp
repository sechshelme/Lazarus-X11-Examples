
unit ListP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/ListP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/ListP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/ListP.pp
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
PListClassPart  = ^ListClassPart;
PListClassRec  = ^ListClassRec;
PListPart  = ^ListPart;
PListRec  = ^ListRec;
PString  = ^String;
PXFontStruct  = ^XFontStruct;
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
  PListClassPart = ^TListClassPart;
  TListClassPart = record
      extension : TXtPointer;
    end;


  PListClassRec = ^TListClassRec;
  TListClassRec = record
      core_class : TCoreClassPart;
      simple_class : TSimpleClassPart;
      list_class : TListClassPart;
    end;
  var
    listClassRec : TListClassRec;cvar;external;
















{$ifndef OLDXAW}

{$endif}
type
  PListPart = ^TListPart;
  TListPart = record
      foreground : TPixel;
      internal_width : TDimension;
      internal_height : TDimension;
      column_space : TDimension;
      row_space : TDimension;
      default_cols : longint;
      force_cols : TBoolean;
      paste : TBoolean;
      vertical_cols : TBoolean;
      longest : longint;
      nitems : longint;
      font : PXFontStruct;
      fontset : TXFontSet;
      list : PString;
      callback : TXtCallbackList;
      is_highlighted : longint;
      highlight : longint;
      col_width : longint;
      row_height : longint;
      nrows : longint;
      ncols : longint;
      normgc : TGC;
      revgc : TGC;
      graygc : TGC;
      freedoms : longint;
      selected : longint;
      show_current : TBoolean;
      pad1 : array[0..(((sizeof(XtPointer))-(sizeof(Boolean)))+((sizeof(XtPointer))-(sizeof(longint))))-1] of char;
      pad2 : array[0..1] of TXtPointer;
    end;


  PListRec = ^TListRec;
  TListRec = record
      core : TCorePart;
      simple : TSimplePart;
      list : TListPart;
    end;
{$endif}


implementation


end.
