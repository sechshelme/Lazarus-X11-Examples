
unit TextP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/TextP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/TextP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/TextP.pp
}

    Type
    PAtom  = ^Atom;
    Pchar  = ^char;
    PPosition  = ^Position;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawTextP_h}
{$define _XawTextP_h}  
{$include <X11/Xfuncproto.h>}
{$include <X11/Xaw/Text.h>}
{$include <X11/Xaw/SimpleP.h>}
(* error 
#define MAXCUT	30000	/* Maximum number of characters that can be cut */

in define line 58 *)

    function XawTextGetLastPosition(ctx : longint) : longint;    

    function GETLASTPOS : longint; { return type might be wrong }

    function zeroPosition : XawTextPosition;      


      var
        _XawTextActionsTable : ^XtActionsRec;cvar;external;
        _XawTextActionsTableCount : Cardinal;cvar;external;
        _XawDefaultTextTranslations : ^char;cvar;external;

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

    const
      DEFAULT_TAB_SIZE = 8;      

{$ifndef OLDXAW}
{$else}
{$endif}

    type
      XawTextLineTableEntry = record
          position : XawTextPosition;
          y : Position;
          textWidth : dword;
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
{$ifndef OLDXAW}

    type
      _XawTextKillRing = record
          next : ^_XawTextKillRing;
          contents : ^char;
          length : longint;
          refcount : dword;
          format : dword;
        end;
      XawTextKillRing = _XawTextKillRing;

      var
        xaw_text_kill_ring : ^XawTextKillRing;cvar;external;
{$endif}



{$ifndef OLDXAW}

{$endif}


    type
      XawTextLineTable = record
          top : XawTextPosition;
          lines : longint;
          base_line : longint;
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
      _XmuScanline = XmuTextUpdate;

    function VMargins(ctx : longint) : longint;    

    function HMargins(ctx : longint) : longint;    

    function RVMargins(ctx : longint) : longint;    

    function RHMargins(ctx : longint) : longint;    

    function IsPositionVisible(ctx,pos : longint) : longint;    












{$ifndef OLDXAW}

{$endif}

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
          case_sensitive : Widget;
        end;



      TextClassPart = record
          extension : XtPointer;
        end;


      _TextClassRec = record
          core_class : CoreClassPart;
          simple_class : SimpleClassPart;
          text_class : TextClassPart;
        end;
      TextClassRec = _TextClassRec;

      var
        textClassRec : TextClassRec;cvar;external;









{$ifndef OLDXAW}
{$else}
{$endif}










{$ifndef OLDXAW}
{$else}
{$endif}








{$ifndef OLDXAW}
{$else}
{$endif}



{$ifndef OLDXAW}



{$endif}

    type
      _TextPart = record
          source : Widget;
          sink : Widget;
          insertPos : XawTextPosition;
          s : XawTextSelection;
          sarray : ^XawTextSelectType;
          salt : ^XawTextSelectionSalt;
          left_margin : longint;
          dialog_horiz_offset : longint;
          dialog_vert_offset : longint;
          display_caret : Boolean;
          auto_fill : Boolean;
          scroll_vert : XawTextScrollMode;
          scroll_horiz : XawTextScrollMode;
          wrap : XawTextWrapMode;
          resize : XawTextResizeMode;
          r_margin : XawTextMargin;
          position_callbacks : XtCallbackList;
          pad1 : XtPointer;
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
          update : ^XmuTextUpdate;
          line_number : longint;
          column_number : smallint;
          kill_ring : byte;
          selection_state : Boolean;
          pad2 : XtPointer;
          pad3 : longint;
          from_left : longint;
          lastPos : XawTextPosition;
          gc : GC;
          showposition : Boolean;
          hasfocus : Boolean;
          update_disabled : Boolean;
          clear_to_eol : Boolean;
          old_insert : XawTextPosition;
          mult : smallint;
          kill_ring_ptr : ^XawTextKillRing;
          pad4 : XtPointer;
          redisplay_needed : Boolean;
          salt2 : ^XawTextSelectionSalt;
          numeric : char;
          source_changed : char;
          overwrite : Boolean;
          left_column : smallint;
          right_column : smallint;
          justify : XawTextJustifyMode;
          pad : array[0..3] of XtPointer;
        end;
      TextPart = _TextPart;

    const
      XtRWrapMode = 'WrapMode';      
      XtRScrollMode = 'ScrollMode';      
      XtRResizeMode = 'ResizeMode';      
      XtRJustifyMode = 'JustifyMode';      


    type
      _TextRec = record
          core : CorePart;
          simple : SimplePart;
          text : TextPart;
        end;
      TextRec = _TextRec;


    procedure _XawTextBuildLineTable(ctx:TextWidget; top_pos:XawTextPosition; force_rebuild:_XtBoolean);

    function _XawTextGetSTRING(ctx:TextWidget; left:XawTextPosition; right:XawTextPosition):^char;

    procedure _XawTextSaltAwaySelection(ctx:TextWidget; selections:PAtom; num_atoms:longint);

    procedure _XawTextPosToXY(w:Widget; pos:XawTextPosition; x:PPosition; y:PPosition);

    procedure _XawTextNeedsUpdating(ctx:TextWidget; left:XawTextPosition; right:XawTextPosition);

{$endif}

(* error 
#endif /* _XawTextP_h */

implementation

    function XawTextGetLastPosition(ctx : longint) : longint;
    begin
      XawTextGetLastPosition:=XawTextSourceScan(ctx^.(text.source),0,XawstAll,XawsdRight,1,_True);
    end;

    function GETLASTPOS : longint; { return type might be wrong }
      begin
        GETLASTPOS:=XawTextGetLastPosition(ctx);
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
      HMargins:=(ctx^.(text.left_margin))+(ctx^.(text.(margin.right)));
    end;

    function RVMargins(ctx : longint) : longint;
    begin
      RVMargins:=(ctx^.(text.(r_margin.top)))+(ctx^.(text.(r_margin.bottom)));
    end;

    function RHMargins(ctx : longint) : longint;
    begin
      RHMargins:=(ctx^.(text.(r_margin.left)))+(ctx^.(text.(r_margin.right)));
    end;

    function IsPositionVisible(ctx,pos : longint) : longint;
    begin
      IsPositionVisible:=(pos>=((ctx^.(text.(lt.((info[0]).position)))) and (@(pos))))<(ctx^.(text.(lt.((info[ctx^.(text.(lt.lines))]).position))));
    end;

    procedure _XawTextBuildLineTable(ctx:TextWidget; top_pos:XawTextPosition; force_rebuild:_XtBoolean);
    begin
      { You must implement this function }
    end;
    function _XawTextGetSTRING(ctx:TextWidget; left:XawTextPosition; right:XawTextPosition):Pchar;
    begin
      { You must implement this function }
    end;
    procedure _XawTextSaltAwaySelection(ctx:TextWidget; selections:PAtom; num_atoms:longint);
    begin
      { You must implement this function }
    end;
    procedure _XawTextPosToXY(w:Widget; pos:XawTextPosition; x:PPosition; y:PPosition);
    begin
      { You must implement this function }
    end;
    procedure _XawTextNeedsUpdating(ctx:TextWidget; left:XawTextPosition; right:XawTextPosition);
    begin
      { You must implement this function }
    end;

end.
