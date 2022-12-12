
unit TextSrcP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/TextSrcP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/TextSrcP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/TextSrcP.pp
}

  Type
  Pchar  = ^char;
  PDisplay  = ^Display;
  Plongint  = ^longint;
  Pwchar_t  = ^wchar_t;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef _XawTextSrcP_h}
{$define _XawTextSrcP_h}  

{$include <X11/Xaw3d/TextSrc.h>}
{$include <X11/Xaw3d/TextP.h>	/* This source works with the Text widget. */}


  type
    TextSrcExtRec = record
        next_extension : XtPointer;
        record_type : XrmQuark;
        version : longint;
        record_size : Cardinal;
        Input : function :longint;cdecl;
      end;
    TextSrcExt = ^TextSrcExtRec;

    _TextSrcClassPart = record
        Read : function :XawTextPosition;cdecl;
        Replace : function :longint;cdecl;
        Scan : function :XawTextPosition;cdecl;
        Search : function :XawTextPosition;cdecl;
        SetSelection : procedure ;cdecl;
        ConvertSelection : function :Boolean;cdecl;
      end;
    TextSrcClassPart = _TextSrcClassPart;


    _TextSrcClassRec = record
        object_class : ObjectClassPart;
        textSrc_class : TextSrcClassPart;
      end;
    TextSrcClassRec = _TextSrcClassRec;

    var
      textSrcClassRec : TextSrcClassRec;cvar;external;





  type
    TextSrcPart = record
        edit_mode : XawTextEditType;
        text_format : XrmQuark;
      end;


    _TextSrcRec = record
        object : ObjectPart;
        textSrc : TextSrcPart;
      end;
    TextSrcRec = _TextSrcRec;

{$if NeedFunctionPrototypes}

{$endif}

  function _XawTextWCToMB(_para1:PDisplay; _para2:Pwchar_t; _para3:Plongint):^char;

{$if NeedFunctionPrototypes}

{$endif}

  function _XawTextMBToWC(_para1:PDisplay; _para2:Pchar; _para3:Plongint):^wchar_t;



  type

    _XawBooleanFunc = function :Boolean;cdecl;

    _XawIntFunc = function :longint;cdecl;

    _XawTextPositionFunc = function :XawTextPosition;cdecl;

    _XawTextVoidFunc = procedure ;cdecl;

  function XtInheritInput : _XawTextPositionFunc;    

  function XtInheritRead : _XawTextPositionFunc;    

  function XtInheritReplace : _XawIntFunc;    

  function XtInheritScan : _XawTextPositionFunc;    

  function XtInheritSearch : _XawTextPositionFunc;    

  function XtInheritSetSelection : _XawTextVoidFunc;    

  function XtInheritConvertSelection : _XawBooleanFunc;    

  const
    XtTextSrcExtVersion = 1;    
    XtTextSrcExtTypeString = 'XT_TEXTSRC_EXT';    
{$endif}


implementation

  function _XawTextWCToMB(_para1:PDisplay; _para2:Pwchar_t; _para3:Plongint):Pchar;
  begin
    { You must implement this function }
  end;
  function _XawTextMBToWC(_para1:PDisplay; _para2:Pchar; _para3:Plongint):Pwchar_t;
  begin
    { You must implement this function }
  end;
  function XtInheritInput : _XawTextPositionFunc;
    begin
      XtInheritInput:=_XawTextPositionFunc(_XtInherit);
    end;

  function XtInheritRead : _XawTextPositionFunc;
    begin
      XtInheritRead:=_XawTextPositionFunc(_XtInherit);
    end;

  function XtInheritReplace : _XawIntFunc;
    begin
      XtInheritReplace:=_XawIntFunc(_XtInherit);
    end;

  function XtInheritScan : _XawTextPositionFunc;
    begin
      XtInheritScan:=_XawTextPositionFunc(_XtInherit);
    end;

  function XtInheritSearch : _XawTextPositionFunc;
    begin
      XtInheritSearch:=_XawTextPositionFunc(_XtInherit);
    end;

  function XtInheritSetSelection : _XawTextVoidFunc;
    begin
      XtInheritSetSelection:=_XawTextVoidFunc(_XtInherit);
    end;

  function XtInheritConvertSelection : _XawBooleanFunc;
    begin
      XtInheritConvertSelection:=_XawBooleanFunc(_XtInherit);
    end;


end.
