
unit TextP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/TextP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/TextP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/TextP.pp
}

  Type
  PAtom  = ^Atom;
  PPosition  = ^Position;
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

  function zeroPosition : XawTextPosition;    


    var
      _XawTextActionsTable : ^XtActionsRec;cvar;external;
      _XawTextActionsTableCount : Cardinal;cvar;external;

  const
    XawLF = $0a;    
    XawCR = $0d;    
    XawTAB = $09;    
    XawBS = $08;    
    XawSP = $20;    
    XawDEL = $7f;    
    XawESC = $1b;    
    XawBSLASH = '\\';    


  function DEFAULT_TEXT_HEIGHT : Dimension;    



  type
    XawTextLineTableEntry = record
        position : XawTextPosition;
        y : Position;
        textWidth : Dimension;
      end;
    XawTextLineTableEntryPtr = ^XawTextLineTableEntry;

    XawTextSelection = record
        left : XawTextPosition;
        right : XawTextPosition;
        _type : XawTextSelectType;
        selections : ^Atom;
        atom_count : longint;
        array_size : longint;
      end;

    _XawTextSelectionSalt = record
        next : ^_XawTextSelectionSalt;
        s : XawTextSelection;
        contents : ^char;
        length : longint;
      end;
    XawTextSelectionSalt = _XawTextSelectionSalt;





    XawTextLineTable = record
        top : XawTextPosition;
        lines : longint;
        info : ^XawTextLineTableEntry;
      end;
    XawTextLineTablePtr = ^XawTextLineTable;

    _XawTextMargin = record
        left : Position;
        right : Position;
        top : Position;
        bottom : Position;
      end;
    XawTextMargin = _XawTextMargin;

  function VMargins(ctx : longint) : longint;  

  function HMargins(ctx : longint) : longint;  

  function IsPositionVisible(ctx,pos : longint) : longint;  













  type
    SearchAndReplace = record
        selection_changed : Boolean;
        search_popup : Widget;
        label1 : Widget;
        label2 : Widget;
        left_toggle : Widget;
        right_toggle : Widget;
        rep_label : Widget;
        rep_text : Widget;
        search_text : Widget;
        rep_one : Widget;
        rep_all : Widget;
      end;



    ActionProc = function :longint;cdecl;


    TextClassPart = record
        empty : longint;
      end;
    text_move = record
        h : longint;
        v : longint;
        next : ^text_move;
      end;



    _TextClassRec = record
        core_class : CoreClassPart;
        simple_class : SimpleClassPart;
        text_class : TextClassPart;
      end;
    TextClassRec = _TextClassRec;

    var
      textClassRec : TextClassRec;cvar;external;







































  type
    _TextPart = record
        source : Widget;
        sink : Widget;
        insertPos : XawTextPosition;
        s : XawTextSelection;
        sarray : ^XawTextSelectType;
        salt : ^XawTextSelectionSalt;
        options : longint;
        dialog_horiz_offset : longint;
        dialog_vert_offset : longint;
        display_caret : Boolean;
        auto_fill : Boolean;
        scroll_vert : XawTextScrollMode;
        scroll_horiz : XawTextScrollMode;
        wrap : XawTextWrapMode;
        resize : XawTextResizeMode;
        r_margin : XawTextMargin;
        unrealize_callbacks : XtCallbackList;
        margin : XawTextMargin;
        lt : XawTextLineTable;
        extendDir : XawTextScanDirection;
        origSel : XawTextSelection;
        lasttime : Time;
        time : Time;
        ev_x : Position;
        ev_y : Position;
        vbar : Widget;
        hbar : Widget;
        search : ^SearchAndReplace;
        file_insert : Widget;
        updateFrom : ^XawTextPosition;
        updateTo : ^XawTextPosition;
        numranges : longint;
        maxranges : longint;
        lastPos : XawTextPosition;
        gc : GC;
        showposition : Boolean;
        hasfocus : Boolean;
        update_disabled : Boolean;
        single_char : Boolean;
        old_insert : XawTextPosition;
        mult : smallint;
        copy_area_offsets : ^text_move;
        threeD : Widget;
        redisplay_needed : Boolean;
        salt2 : ^XawTextSelectionSalt;
      end;
    TextPart = _TextPart;


  const
    XtRScrollMode = 'ScrollMode';    
    XtRWrapMode = 'WrapMode';    
    XtRResizeMode = 'ResizeMode';    


  type
    _TextRec = record
        core : CorePart;
        simple : SimplePart;
        text : TextPart;
      end;
    TextRec = _TextRec;

{$if NeedFunctionPrototypes}

{$endif}

  procedure _XawTextBuildLineTable(_para1:TextWidget; _para2:XawTextPosition; _para3:_XtBoolean);cdecl;

{$if NeedFunctionPrototypes}

{$endif}

  function _XawTextGetSTRING(_para1:TextWidget; _para2:XawTextPosition; _para3:XawTextPosition):^char;cdecl;

{$if NeedFunctionPrototypes}

{$endif}

  procedure _XawTextSaltAwaySelection(_para1:TextWidget; _para2:PAtom; _para3:longint);cdecl;

{$if NeedFunctionPrototypes}

{$endif}

  procedure _XawTextPosToXY(_para1:Widget; _para2:XawTextPosition; _para3:PPosition; _para4:PPosition);cdecl;

{$endif}


implementation

  function GETLASTPOS : longint; { return type might be wrong }
    begin
      GETLASTPOS:=XawTextSourceScan(ctx^.(text.source),0,XawstAll,XawsdRight,1,_TRUE);
    end;

  function zeroPosition : XawTextPosition;
    begin
      zeroPosition:=XawTextPosition(0);
    end;

  function DEFAULT_TEXT_HEIGHT : Dimension;
    begin
      DEFAULT_TEXT_HEIGHT:=Dimension( not (0));
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
