
unit TextSrcP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/TextSrcP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/TextSrcP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/TextSrcP.pp
}

    Type
    PAtom  = ^Atom;
    Pchar  = ^char;
    PDisplay  = ^Display;
    Pdword  = ^dword;
    Plongint  = ^longint;
    Pwchar_t  = ^wchar_t;
    PXawTextAnchor  = ^XawTextAnchor;
    PXawTextBlock  = ^XawTextBlock;
    PXawTextEntity  = ^XawTextEntity;
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
        entities : ^XawTextEntity;cvar;public;
(* error 
};
in declaration at line 65 *)

    const
      XAW_TENTF_HIDE = $0001;      
      XAW_TENTF_READ = $0002;      
      XAW_TENTF_REPLACE = $0004;      


    type
      _XawTextEntity = record
          _type : smallint;
          flags : smallint;
          next : ^XawTextEntity;
          data : XtPointer;
          offset : XawTextPosition;
          length : Cardinal;
          _property : XrmQuark;
        end;

{$endif}
{$if 0	/* no longer used */}


    type
      TextSrcExtRec = record
          next_extension : XtPointer;
          record_type : XrmQuark;
          version : longint;
          record_size : Cardinal;
          Input : function :longint;cdecl;
        end;
      TextSrcExt = ^TextSrcExtRec;
{$endif}

    type

      _XawSrcReadProc = function (_para1:Widget; _para2:XawTextPosition; _para3:PXawTextBlock; _para4:longint):XawTextPosition;cdecl;

      _XawSrcReplaceProc = function (_para1:Widget; _para2:XawTextPosition; _para3:XawTextPosition; _para4:PXawTextBlock):longint;cdecl;

      _XawSrcScanProc = function (_para1:Widget; _para2:XawTextPosition; _para3:XawTextScanType; _para4:XawTextScanDirection; _para5:longint; 
                   _para6:Bool):XawTextPosition;cdecl;

      _XawSrcSearchProc = function (_para1:Widget; _para2:XawTextPosition; _para3:XawTextScanDirection; _para4:PXawTextBlock):XawTextPosition;cdecl;

      _XawSrcSetSelectionProc = procedure (_para1:Widget; _para2:XawTextPosition; _para3:XawTextPosition; _para4:Atom);cdecl;

      _XawSrcConvertSelectionProc = function (_para1:Widget; _para2:PAtom; _para3:PAtom; _para4:PAtom; _para5:PXtPointer; 
                   _para6:Pdword; _para7:Plongint):Boolean;cdecl;
{$ifndef OLDXAW}
{$endif}

    type
      _TextSrcClassPart = record
          Read : _XawSrcReadProc;
          Replace : _XawSrcReplaceProc;
          Scan : _XawSrcScanProc;
          Search : _XawSrcSearchProc;
          SetSelection : _XawSrcSetSelectionProc;
          ConvertSelection : _XawSrcConvertSelectionProc;
          extension : XtPointer;
        end;
      TextSrcClassPart = _TextSrcClassPart;


      _TextSrcClassRec = record
          object_class : ObjectClassPart;
          textSrc_class : TextSrcClassPart;
        end;
      TextSrcClassRec = _TextSrcClassRec;

      var
        textSrcClassRec : TextSrcClassRec;cvar;external;
{$ifndef OLDXAW}

    type
      _XawTextUndo = XawTextUndo;
{$endif}



{$ifndef OLDXAW}





{$endif}

    type
      TextSrcPart = record
          edit_mode : XawTextEditType;
          text_format : XrmQuark;
          callback : XtCallbackList;
          changed : Boolean;
          enable_undo : Boolean;
          undo_state : Boolean;
          undo : ^XawTextUndo;
          text : WidgetList;
          num_text : Cardinal;
          property_callback : XtCallbackList;
          anchors : ^^XawTextAnchor;
          num_anchors : longint;
          pad : array[0..0] of XtPointer;
        end;


      _TextSrcRec = record
          object : ObjectPart;
          textSrc : TextSrcPart;
        end;
      TextSrcRec = _TextSrcRec;


    function _XawTextWCToMB(display:PDisplay; wstr:Pwchar_t; len_in_out:Plongint):^char;

    function _XawTextMBToWC(display:PDisplay; str:Pchar; len_in_out:Plongint):^wchar_t;

{$ifndef OLDXAW}

    function XawTextSourceAddAnchor(source:Widget; position:XawTextPosition):^XawTextAnchor;

    function XawTextSourceFindAnchor(source:Widget; position:XawTextPosition):^XawTextAnchor;

    function XawTextSourceNextAnchor(source:Widget; anchor:PXawTextAnchor):^XawTextAnchor;

    function XawTextSourcePrevAnchor(source:Widget; anchor:PXawTextAnchor):^XawTextAnchor;

    function XawTextSourceRemoveAnchor(source:Widget; anchor:PXawTextAnchor):^XawTextAnchor;

    function XawTextSourceAnchorAndEntity(w:Widget; position:XawTextPosition; anchor_return:PPXawTextAnchor; entity_return:PPXawTextEntity):Bool;

    function XawTextSourceAddEntity(source:Widget; _type:longint; flags:longint; data:XtPointer; position:XawTextPosition; 
               length:Cardinal; _property:XrmQuark):^XawTextEntity;

    procedure XawTextSourceClearEntities(w:Widget; left:XawTextPosition; right:XawTextPosition);

{$endif}
{$if 0	/* no longer used */}

    type

      _XawTextPositionFunc = function :XawTextPosition;cdecl;
{$endif}

    function XtInheritInput : _XawTextPositionFunc;      

    function XtInheritRead : _XawSrcReadProc;      

    function XtInheritReplace : _XawSrcReplaceProc;      

    function XtInheritScan : _XawSrcScanProc;      

    function XtInheritSearch : _XawSrcSearchProc;      

    function XtInheritSetSelection : _XawSrcSetSelectionProc;      

    function XtInheritConvertSelection : _XawSrcConvertSelectionProc;      

{$if 0}

    const
      XtTextSrcExtVersion = 1;      
      XtTextSrcExtTypeString = 'XT_TEXTSRC_EXT';      
{$endif}
{$endif}

(* error 
#endif /* _XawTextSrcP_h */

implementation

    function _XawTextWCToMB(display:PDisplay; wstr:Pwchar_t; len_in_out:Plongint):Pchar;
    begin
      { You must implement this function }
    end;
    function _XawTextMBToWC(display:PDisplay; str:Pchar; len_in_out:Plongint):Pwchar_t;
    begin
      { You must implement this function }
    end;
    function XawTextSourceAddAnchor(source:Widget; position:XawTextPosition):PXawTextAnchor;
    begin
      { You must implement this function }
    end;
    function XawTextSourceFindAnchor(source:Widget; position:XawTextPosition):PXawTextAnchor;
    begin
      { You must implement this function }
    end;
    function XawTextSourceNextAnchor(source:Widget; anchor:PXawTextAnchor):PXawTextAnchor;
    begin
      { You must implement this function }
    end;
    function XawTextSourcePrevAnchor(source:Widget; anchor:PXawTextAnchor):PXawTextAnchor;
    begin
      { You must implement this function }
    end;
    function XawTextSourceRemoveAnchor(source:Widget; anchor:PXawTextAnchor):PXawTextAnchor;
    begin
      { You must implement this function }
    end;
    function XawTextSourceAnchorAndEntity(w:Widget; position:XawTextPosition; anchor_return:PPXawTextAnchor; entity_return:PPXawTextEntity):Bool;
    begin
      { You must implement this function }
    end;
    function XawTextSourceAddEntity(source:Widget; _type:longint; flags:longint; data:XtPointer; position:XawTextPosition; 
               length:Cardinal; _property:XrmQuark):PXawTextEntity;
    begin
      { You must implement this function }
    end;
    procedure XawTextSourceClearEntities(w:Widget; left:XawTextPosition; right:XawTextPosition);
    begin
      { You must implement this function }
    end;
    function XtInheritInput : _XawTextPositionFunc;
      begin
        XtInheritInput:=_XawTextPositionFunc(_XtInherit);
      end;

    function XtInheritRead : _XawSrcReadProc;
      begin
        XtInheritRead:=_XawSrcReadProc(_XtInherit);
      end;

    function XtInheritReplace : _XawSrcReplaceProc;
      begin
        XtInheritReplace:=_XawSrcReplaceProc(_XtInherit);
      end;

    function XtInheritScan : _XawSrcScanProc;
      begin
        XtInheritScan:=_XawSrcScanProc(_XtInherit);
      end;

    function XtInheritSearch : _XawSrcSearchProc;
      begin
        XtInheritSearch:=_XawSrcSearchProc(_XtInherit);
      end;

    function XtInheritSetSelection : _XawSrcSetSelectionProc;
      begin
        XtInheritSetSelection:=_XawSrcSetSelectionProc(_XtInherit);
      end;

    function XtInheritConvertSelection : _XawSrcConvertSelectionProc;
      begin
        XtInheritConvertSelection:=_XawSrcConvertSelectionProc(_XtInherit);
      end;


end.
