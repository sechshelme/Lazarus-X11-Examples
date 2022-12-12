
unit TextP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/TextP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/TextP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/TextP.pp
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
    PTextClassPart  = ^TextClassPart;
    PTextClassRec  = ^TextClassRec;
    PTextPart  = ^TextPart;
    PTextRec  = ^TextRec;
    PXawTextKillRing  = ^XawTextKillRing;
    PXawTextLineTable  = ^XawTextLineTable;
    PXawTextLineTableEntry  = ^XawTextLineTableEntry;
    PXawTextLineTableEntryPtr  = ^XawTextLineTableEntryPtr;
    PXawTextLineTablePtr  = ^XawTextLineTablePtr;
    PXawTextMargin  = ^XawTextMargin;
    PXawTextSelection  = ^XawTextSelection;
    PXawTextSelectionSalt  = ^XawTextSelectionSalt;
    PXawTextSelectType  = ^XawTextSelectType;
    PXmuTextUpdate  = ^XmuTextUpdate;
    PXtActionsRec  = ^XtActionsRec;
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

    function zeroPosition : TXawTextPosition;      

      var
        _XawTextActionsTable : PXtActionsRec;cvar;external;
        _XawTextActionsTableCount : TCardinal;cvar;external;
        _XawDefaultTextTranslations : Pchar;cvar;external;

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

    const
      DEFAULT_TAB_SIZE = 8;      

{$ifndef OLDXAW}
{$else}
{$endif}
    type
      PXawTextLineTableEntry = ^TXawTextLineTableEntry;
      TXawTextLineTableEntry = record
          position : TXawTextPosition;
          y : TPosition;
          textWidth : dword;
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
{$ifndef OLDXAW}
    type
      PXawTextKillRing = ^TXawTextKillRing;
      TXawTextKillRing = record
          next : PXawTextKillRing;
          contents : Pchar;
          length : longint;
          refcount : dword;
          format : dword;
        end;
      var
        xaw_text_kill_ring : PXawTextKillRing;cvar;external;
{$endif}



{$ifndef OLDXAW}

{$endif}

    type
      PXawTextLineTable = ^TXawTextLineTable;
      TXawTextLineTable = record
          top : TXawTextPosition;
          lines : longint;
          base_line : longint;
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
      TXmuScanline = TXmuTextUpdate;

    function VMargins(ctx : longint) : longint;    

    function HMargins(ctx : longint) : longint;    

    function RVMargins(ctx : longint) : longint;    

    function RHMargins(ctx : longint) : longint;    

    function IsPositionVisible(ctx,pos : longint) : longint;    












{$ifndef OLDXAW}

{$endif}
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
          case_sensitive : TWidget;
        end;



      PTextClassPart = ^TTextClassPart;
      TTextClassPart = record
          extension : TXtPointer;
        end;


      PTextClassRec = ^TTextClassRec;
      TTextClassRec = record
          core_class : TCoreClassPart;
          simple_class : TSimpleClassPart;
          text_class : TTextClassPart;
        end;
      var
        textClassRec : TTextClassRec;cvar;external;









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
      PTextPart = ^TTextPart;
      TTextPart = record
          source : TWidget;
          sink : TWidget;
          insertPos : TXawTextPosition;
          s : TXawTextSelection;
          sarray : PXawTextSelectType;
          salt : PXawTextSelectionSalt;
          left_margin : longint;
          dialog_horiz_offset : longint;
          dialog_vert_offset : longint;
          display_caret : TBoolean;
          auto_fill : TBoolean;
          scroll_vert : TXawTextScrollMode;
          scroll_horiz : TXawTextScrollMode;
          wrap : TXawTextWrapMode;
          resize : TXawTextResizeMode;
          r_margin : TXawTextMargin;
          position_callbacks : TXtCallbackList;
          pad1 : TXtPointer;
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
          update : PXmuTextUpdate;
          line_number : longint;
          column_number : smallint;
          kill_ring : byte;
          selection_state : TBoolean;
          pad2 : TXtPointer;
          pad3 : longint;
          from_left : longint;
          lastPos : TXawTextPosition;
          gc : TGC;
          showposition : TBoolean;
          hasfocus : TBoolean;
          update_disabled : TBoolean;
          clear_to_eol : TBoolean;
          old_insert : TXawTextPosition;
          mult : smallint;
          kill_ring_ptr : PXawTextKillRing;
          pad4 : TXtPointer;
          redisplay_needed : TBoolean;
          salt2 : PXawTextSelectionSalt;
          numeric : char;
          source_changed : char;
          overwrite : TBoolean;
          left_column : smallint;
          right_column : smallint;
          justify : TXawTextJustifyMode;
          pad : array[0..3] of TXtPointer;
        end;

    const
      XtRWrapMode = 'WrapMode';      
      XtRScrollMode = 'ScrollMode';      
      XtRResizeMode = 'ResizeMode';      
      XtRJustifyMode = 'JustifyMode';      

    type
      PTextRec = ^TTextRec;
      TTextRec = record
          core : TCorePart;
          simple : TSimplePart;
          text : TTextPart;
        end;


procedure _XawTextBuildLineTable(ctx:TTextWidget; top_pos:TXawTextPosition; force_rebuild:TXtBoolean);cdecl;external;
function _XawTextGetSTRING(ctx:TTextWidget; left:TXawTextPosition; right:TXawTextPosition):Pchar;cdecl;external;
procedure _XawTextSaltAwaySelection(ctx:TTextWidget; selections:PAtom; num_atoms:longint);cdecl;external;
procedure _XawTextPosToXY(w:TWidget; pos:TXawTextPosition; x:PPosition; y:PPosition);cdecl;external;
procedure _XawTextNeedsUpdating(ctx:TTextWidget; left:TXawTextPosition; right:TXawTextPosition);cdecl;external;
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


end.
