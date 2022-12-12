
unit TextSrcP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/TextSrcP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/TextSrcP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/TextSrcP.pp
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
    PDisplay  = ^Display;
    Pdword  = ^dword;
    Plongint  = ^longint;
    PTextSrcClassPart  = ^TextSrcClassPart;
    PTextSrcClassRec  = ^TextSrcClassRec;
    PTextSrcExt  = ^TextSrcExt;
    PTextSrcExtRec  = ^TextSrcExtRec;
    PTextSrcPart  = ^TextSrcPart;
    PTextSrcRec  = ^TextSrcRec;
    Pwchar_t  = ^wchar_t;
    PXawTextAnchor  = ^XawTextAnchor;
    PXawTextBlock  = ^XawTextBlock;
    PXawTextEntity  = ^XawTextEntity;
    PXawTextUndo  = ^XawTextUndo;
    PXtPointer  = ^XtPointer;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawTextSrcP_h}
{$define _XawTextSrcP_h}

{$include <X11/Xfuncproto.h>}
{$include <X11/Xaw/TextSrc.h>}
{$include <X11/Xaw/TextP.h>	/* This source works with the Text widget */}
{$ifndef OLDXAW}
(* error 
struct _XawTextAnchor {
in declaration at line 63 *)
      var
        entities : PXawTextEntity;cvar;public;
(* error 
};
in declaration at line 65 *)

    const
      XAW_TENTF_HIDE = $0001;      
      XAW_TENTF_READ = $0002;      
      XAW_TENTF_REPLACE = $0004;      

    type
      PXawTextEntity = ^TXawTextEntity;
      TXawTextEntity = record
          _type : smallint;
          flags : smallint;
          next : PXawTextEntity;
          data : TXtPointer;
          offset : TXawTextPosition;
          length : TCardinal;
          _property : TXrmQuark;
        end;

{$endif}
{$if 0	/* no longer used */}

    type
      PTextSrcExtRec = ^TTextSrcExtRec;
      TTextSrcExtRec = record
          next_extension : TXtPointer;
          record_type : TXrmQuark;
          version : longint;
          record_size : TCardinal;
          Input : function :longint;cdecl;
        end;
      TTextSrcExt = PTextSrcExtRec;
      PTextSrcExt = ^TTextSrcExt;
{$endif}
    type

      TXawSrcReadProc = function (para1:TWidget; para2:TXawTextPosition; para3:PXawTextBlock; para4:longint):TXawTextPosition;cdecl;

      TXawSrcReplaceProc = function (para1:TWidget; para2:TXawTextPosition; para3:TXawTextPosition; para4:PXawTextBlock):longint;cdecl;

      TXawSrcScanProc = function (para1:TWidget; para2:TXawTextPosition; para3:TXawTextScanType; para4:TXawTextScanDirection; para5:longint; 
                   para6:TBool):TXawTextPosition;cdecl;

      TXawSrcSearchProc = function (para1:TWidget; para2:TXawTextPosition; para3:TXawTextScanDirection; para4:PXawTextBlock):TXawTextPosition;cdecl;

      TXawSrcSetSelectionProc = procedure (para1:TWidget; para2:TXawTextPosition; para3:TXawTextPosition; para4:TAtom);cdecl;

      TXawSrcConvertSelectionProc = function (para1:TWidget; para2:PAtom; para3:PAtom; para4:PAtom; para5:PXtPointer; 
                   para6:Pdword; para7:Plongint):TBoolean;cdecl;
{$ifndef OLDXAW}
{$endif}
    type
      PTextSrcClassPart = ^TTextSrcClassPart;
      TTextSrcClassPart = record
          Read : TXawSrcReadProc;
          Replace : TXawSrcReplaceProc;
          Scan : TXawSrcScanProc;
          Search : TXawSrcSearchProc;
          SetSelection : TXawSrcSetSelectionProc;
          ConvertSelection : TXawSrcConvertSelectionProc;
          extension : TXtPointer;
        end;


      PTextSrcClassRec = ^TTextSrcClassRec;
      TTextSrcClassRec = record
          object_class : TObjectClassPart;
          textSrc_class : TTextSrcClassPart;
        end;
      var
        textSrcClassRec : TTextSrcClassRec;cvar;external;
{$ifndef OLDXAW}
    type
{$endif}



{$ifndef OLDXAW}





{$endif}
    type
      PTextSrcPart = ^TTextSrcPart;
      TTextSrcPart = record
          edit_mode : TXawTextEditType;
          text_format : TXrmQuark;
          callback : TXtCallbackList;
          changed : TBoolean;
          enable_undo : TBoolean;
          undo_state : TBoolean;
          undo : PXawTextUndo;
          text : TWidgetList;
          num_text : TCardinal;
          property_callback : TXtCallbackList;
          anchors : ^PXawTextAnchor;
          num_anchors : longint;
          pad : array[0..0] of TXtPointer;
        end;


      PTextSrcRec = ^TTextSrcRec;
      TTextSrcRec = record
          object : TObjectPart;
          textSrc : TTextSrcPart;
        end;


function _XawTextWCToMB(display:PDisplay; wstr:Pwchar_t; len_in_out:Plongint):Pchar;cdecl;external;
function _XawTextMBToWC(display:PDisplay; str:Pchar; len_in_out:Plongint):Pwchar_t;cdecl;external;
{$ifndef OLDXAW}

function XawTextSourceAddAnchor(source:TWidget; position:TXawTextPosition):PXawTextAnchor;cdecl;external;
function XawTextSourceFindAnchor(source:TWidget; position:TXawTextPosition):PXawTextAnchor;cdecl;external;
function XawTextSourceNextAnchor(source:TWidget; anchor:PXawTextAnchor):PXawTextAnchor;cdecl;external;
function XawTextSourcePrevAnchor(source:TWidget; anchor:PXawTextAnchor):PXawTextAnchor;cdecl;external;
function XawTextSourceRemoveAnchor(source:TWidget; anchor:PXawTextAnchor):PXawTextAnchor;cdecl;external;
function XawTextSourceAnchorAndEntity(w:TWidget; position:TXawTextPosition; anchor_return:PPXawTextAnchor; entity_return:PPXawTextEntity):TBool;cdecl;external;
function XawTextSourceAddEntity(source:TWidget; _type:longint; flags:longint; data:TXtPointer; position:TXawTextPosition; 
               length:TCardinal; _property:TXrmQuark):PXawTextEntity;cdecl;external;
procedure XawTextSourceClearEntities(w:TWidget; left:TXawTextPosition; right:TXawTextPosition);cdecl;external;
{$endif}
{$if 0	/* no longer used */}
    type

      TXawTextPositionFunc = function :TXawTextPosition;cdecl;
{$endif}

    function XtInheritInput : TXawTextPositionFunc;      

    function XtInheritRead : TXawSrcReadProc;      

    function XtInheritReplace : TXawSrcReplaceProc;      

    function XtInheritScan : TXawSrcScanProc;      

    function XtInheritSearch : TXawSrcSearchProc;      

    function XtInheritSetSelection : TXawSrcSetSelectionProc;      

    function XtInheritConvertSelection : TXawSrcConvertSelectionProc;      

{$if 0}

    const
      XtTextSrcExtVersion = 1;      
      XtTextSrcExtTypeString = 'XT_TEXTSRC_EXT';      
{$endif}
{$endif}

(* error 
#endif /* _XawTextSrcP_h */

implementation

    function XtInheritInput : TXawTextPositionFunc;
      begin
        XtInheritInput:=TXawTextPositionFunc(_XtInherit);
      end;

    function XtInheritRead : TXawSrcReadProc;
      begin
        XtInheritRead:=TXawSrcReadProc(_XtInherit);
      end;

    function XtInheritReplace : TXawSrcReplaceProc;
      begin
        XtInheritReplace:=TXawSrcReplaceProc(_XtInherit);
      end;

    function XtInheritScan : TXawSrcScanProc;
      begin
        XtInheritScan:=TXawSrcScanProc(_XtInherit);
      end;

    function XtInheritSearch : TXawSrcSearchProc;
      begin
        XtInheritSearch:=TXawSrcSearchProc(_XtInherit);
      end;

    function XtInheritSetSelection : TXawSrcSetSelectionProc;
      begin
        XtInheritSetSelection:=TXawSrcSetSelectionProc(_XtInherit);
      end;

    function XtInheritConvertSelection : TXawSrcConvertSelectionProc;
      begin
        XtInheritConvertSelection:=TXawSrcConvertSelectionProc(_XtInherit);
      end;


end.
