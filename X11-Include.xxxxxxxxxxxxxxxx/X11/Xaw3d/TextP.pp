
unit TextP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/TextP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/TextP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/TextP.pp
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
PAtom  = ^Atom;
Pchar  = ^char;
PPosition  = ^Position;
PSearchAndReplace  = ^SearchAndReplace;
Ptext_move  = ^text_move;
PTextClassPart  = ^TextClassPart;
PTextClassRec  = ^TextClassRec;
PTextPart  = ^TextPart;
PTextRec  = ^TextRec;
PXawTextLineTable  = ^XawTextLineTable;
PXawTextLineTableEntry  = ^XawTextLineTableEntry;
PXawTextLineTableEntryPtr  = ^XawTextLineTableEntryPtr;
PXawTextLineTablePtr  = ^XawTextLineTablePtr;
PXawTextMargin  = ^XawTextMargin;
PXawTextPosition  = ^XawTextPosition;
PXawTextSelection  = ^XawTextSelection;
PXawTextSelectionSalt  = ^XawTextSelectionSalt;
PXawTextSelectType  = ^XawTextSelectType;
PXtActionsRec  = ^XtActionsRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawTextP_h}
{$define _XawTextP_h}
{$include <X11/Xaw3d/Text.h>}
{$include <X11/Xaw3d/SimpleP.h>}



const
  MAXCUT = 30000;  

function GETLASTPOS : longint; { return type might be wrong }

function zeroPosition : TXawTextPosition;  

  var
    _XawTextActionsTable : PXtActionsRec;cvar;external;
    _XawTextActionsTableCount : TCardinal;cvar;external;

const
  XawLF = $0a;  
  XawCR = $0d;  
  XawTAB = $09;  
  XawBS = $08;  
  XawSP = $20;  
  XawDEL = $7f;  
  XawESC = $1b;  
  XawBSLASH = '\\';  


function DEFAULT_TEXT_HEIGHT : TDimension;  


type
  PXawTextLineTableEntry = ^TXawTextLineTableEntry;
  TXawTextLineTableEntry = record
      position : TXawTextPosition;
      y : TPosition;
      textWidth : TDimension;
    end;
  TXawTextLineTableEntryPtr = PXawTextLineTableEntry;
  PXawTextLineTableEntryPtr = ^TXawTextLineTableEntryPtr;

  PXawTextSelection = ^TXawTextSelection;
  TXawTextSelection = record
      left : TXawTextPosition;
      right : TXawTextPosition;
      _type : TXawTextSelectType;
      selections : PAtom;
      atom_count : longint;
      array_size : longint;
    end;

  PXawTextSelectionSalt = ^TXawTextSelectionSalt;
  TXawTextSelectionSalt = record
      next : PXawTextSelectionSalt;
      s : TXawTextSelection;
      contents : Pchar;
      length : longint;
    end;





  PXawTextLineTable = ^TXawTextLineTable;
  TXawTextLineTable = record
      top : TXawTextPosition;
      lines : longint;
      info : PXawTextLineTableEntry;
    end;
  TXawTextLineTablePtr = PXawTextLineTable;
  PXawTextLineTablePtr = ^TXawTextLineTablePtr;

  PXawTextMargin = ^TXawTextMargin;
  TXawTextMargin = record
      left : TPosition;
      right : TPosition;
      top : TPosition;
      bottom : TPosition;
    end;

function VMargins(ctx : longint) : longint;

function HMargins(ctx : longint) : longint;

function IsPositionVisible(ctx,pos : longint) : longint;












type
  PSearchAndReplace = ^TSearchAndReplace;
  TSearchAndReplace = record
      selection_changed : TBoolean;
      search_popup : TWidget;
      label1 : TWidget;
      label2 : TWidget;
      left_toggle : TWidget;
      right_toggle : TWidget;
      rep_label : TWidget;
      rep_text : TWidget;
      search_text : TWidget;
      rep_one : TWidget;
      rep_all : TWidget;
    end;



  TActionProc = function :longint;cdecl;


  PTextClassPart = ^TTextClassPart;
  TTextClassPart = record
      empty : longint;
    end;
  Ptext_move = ^Ttext_move;
  Ttext_move = record
      h : longint;
      v : longint;
      next : Ptext_move;
    end;



  PTextClassRec = ^TTextClassRec;
  TTextClassRec = record
      core_class : TCoreClassPart;
      simple_class : TSimpleClassPart;
      text_class : TTextClassPart;
    end;
  var
    textClassRec : TTextClassRec;cvar;external;






































type
  PTextPart = ^TTextPart;
  TTextPart = record
      source : TWidget;
      sink : TWidget;
      insertPos : TXawTextPosition;
      s : TXawTextSelection;
      sarray : PXawTextSelectType;
      salt : PXawTextSelectionSalt;
      options : longint;
      dialog_horiz_offset : longint;
      dialog_vert_offset : longint;
      display_caret : TBoolean;
      auto_fill : TBoolean;
      scroll_vert : TXawTextScrollMode;
      scroll_horiz : TXawTextScrollMode;
      wrap : TXawTextWrapMode;
      resize : TXawTextResizeMode;
      r_margin : TXawTextMargin;
      unrealize_callbacks : TXtCallbackList;
      margin : TXawTextMargin;
      lt : TXawTextLineTable;
      extendDir : TXawTextScanDirection;
      origSel : TXawTextSelection;
      lasttime : TTime;
      time : TTime;
      ev_x : TPosition;
      ev_y : TPosition;
      vbar : TWidget;
      hbar : TWidget;
      search : PSearchAndReplace;
      file_insert : TWidget;
      updateFrom : PXawTextPosition;
      updateTo : PXawTextPosition;
      numranges : longint;
      maxranges : longint;
      lastPos : TXawTextPosition;
      gc : TGC;
      showposition : TBoolean;
      hasfocus : TBoolean;
      update_disabled : TBoolean;
      single_char : TBoolean;
      old_insert : TXawTextPosition;
      mult : smallint;
      copy_area_offsets : Ptext_move;
      threeD : TWidget;
      redisplay_needed : TBoolean;
      salt2 : PXawTextSelectionSalt;
    end;


const
  XtRScrollMode = 'ScrollMode';  
  XtRWrapMode = 'WrapMode';  
  XtRResizeMode = 'ResizeMode';  

type
  PTextRec = ^TTextRec;
  TTextRec = record
      core : TCorePart;
      simple : TSimplePart;
      text : TTextPart;
    end;

{$if NeedFunctionPrototypes}

{$endif}

procedure _XawTextBuildLineTable(para1:TTextWidget; para2:TXawTextPosition; para3:TXtBoolean);cdecl;external;
{$if NeedFunctionPrototypes}

{$endif}

function _XawTextGetSTRING(para1:TTextWidget; para2:TXawTextPosition; para3:TXawTextPosition):Pchar;cdecl;external;
{$if NeedFunctionPrototypes}

{$endif}

procedure _XawTextSaltAwaySelection(para1:TTextWidget; para2:PAtom; para3:longint);cdecl;external;
{$if NeedFunctionPrototypes}

{$endif}

procedure _XawTextPosToXY(para1:TWidget; para2:TXawTextPosition; para3:PPosition; para4:PPosition);cdecl;external;
{$endif}


implementation

function GETLASTPOS : longint; { return type might be wrong }
  begin
    GETLASTPOS:=XawTextSourceScan(ctx^.(text.source),0,XawstAll,XawsdRight,1,_TRUE);
  end;

function zeroPosition : TXawTextPosition;
  begin
    zeroPosition:=TXawTextPosition(0);
  end;

function DEFAULT_TEXT_HEIGHT : TDimension;
  begin
    DEFAULT_TEXT_HEIGHT:=TDimension( not (0));
  end;

function VMargins(ctx : longint) : longint;
begin
  VMargins:=(ctx^.(text.(margin.top)))+(ctx^.(text.(margin.bottom)));
end;

function HMargins(ctx : longint) : longint;
begin
  HMargins:=(ctx^.(text.(margin.left)))+(ctx^.(text.(margin.right)));
end;

function IsPositionVisible(ctx,pos : longint) : longint;
begin
  IsPositionVisible:=(pos>=((ctx^.(text.(lt.((info[0]).position)))) and (@(pos))))<(ctx^.(text.(lt.((info[ctx^.(text.(lt.lines))]).position))));
end;


end.
