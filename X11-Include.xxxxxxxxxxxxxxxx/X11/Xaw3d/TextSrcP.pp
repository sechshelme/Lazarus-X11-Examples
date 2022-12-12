
unit TextSrcP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/TextSrcP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/TextSrcP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/TextSrcP.pp
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
Pchar  = ^char;
PDisplay  = ^Display;
Plongint  = ^longint;
PTextSrcClassPart  = ^TextSrcClassPart;
PTextSrcClassRec  = ^TextSrcClassRec;
PTextSrcExt  = ^TextSrcExt;
PTextSrcExtRec  = ^TextSrcExtRec;
PTextSrcPart  = ^TextSrcPart;
PTextSrcRec  = ^TextSrcRec;
Pwchar_t  = ^wchar_t;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef _XawTextSrcP_h}
{$define _XawTextSrcP_h}

{$include <X11/Xaw3d/TextSrc.h>}
{$include <X11/Xaw3d/TextP.h>	/* This source works with the Text widget. */}

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

  PTextSrcClassPart = ^TTextSrcClassPart;
  TTextSrcClassPart = record
      Read : function :TXawTextPosition;cdecl;
      Replace : function :longint;cdecl;
      Scan : function :TXawTextPosition;cdecl;
      Search : function :TXawTextPosition;cdecl;
      SetSelection : procedure ;cdecl;
      ConvertSelection : function :TBoolean;cdecl;
    end;


  PTextSrcClassRec = ^TTextSrcClassRec;
  TTextSrcClassRec = record
      object_class : TObjectClassPart;
      textSrc_class : TTextSrcClassPart;
    end;
  var
    textSrcClassRec : TTextSrcClassRec;cvar;external;




type
  PTextSrcPart = ^TTextSrcPart;
  TTextSrcPart = record
      edit_mode : TXawTextEditType;
      text_format : TXrmQuark;
    end;


  PTextSrcRec = ^TTextSrcRec;
  TTextSrcRec = record
      object : TObjectPart;
      textSrc : TTextSrcPart;
    end;

{$if NeedFunctionPrototypes}

{$endif}

function _XawTextWCToMB(para1:PDisplay; para2:Pwchar_t; para3:Plongint):Pchar;cdecl;external;
{$if NeedFunctionPrototypes}

{$endif}

function _XawTextMBToWC(para1:PDisplay; para2:Pchar; para3:Plongint):Pwchar_t;cdecl;external;

type

  TXawBooleanFunc = function :TBoolean;cdecl;

  TXawIntFunc = function :longint;cdecl;

  TXawTextPositionFunc = function :TXawTextPosition;cdecl;

  TXawTextVoidFunc = procedure ;cdecl;

function XtInheritInput : TXawTextPositionFunc;  

function XtInheritRead : TXawTextPositionFunc;  

function XtInheritReplace : TXawIntFunc;  

function XtInheritScan : TXawTextPositionFunc;  

function XtInheritSearch : TXawTextPositionFunc;  

function XtInheritSetSelection : TXawTextVoidFunc;  

function XtInheritConvertSelection : TXawBooleanFunc;  

const
  XtTextSrcExtVersion = 1;  
  XtTextSrcExtTypeString = 'XT_TEXTSRC_EXT';  
{$endif}


implementation

function XtInheritInput : TXawTextPositionFunc;
  begin
    XtInheritInput:=TXawTextPositionFunc(_XtInherit);
  end;

function XtInheritRead : TXawTextPositionFunc;
  begin
    XtInheritRead:=TXawTextPositionFunc(_XtInherit);
  end;

function XtInheritReplace : TXawIntFunc;
  begin
    XtInheritReplace:=TXawIntFunc(_XtInherit);
  end;

function XtInheritScan : TXawTextPositionFunc;
  begin
    XtInheritScan:=TXawTextPositionFunc(_XtInherit);
  end;

function XtInheritSearch : TXawTextPositionFunc;
  begin
    XtInheritSearch:=TXawTextPositionFunc(_XtInherit);
  end;

function XtInheritSetSelection : TXawTextVoidFunc;
  begin
    XtInheritSetSelection:=TXawTextVoidFunc(_XtInherit);
  end;

function XtInheritConvertSelection : TXawBooleanFunc;
  begin
    XtInheritConvertSelection:=TXawBooleanFunc(_XtInherit);
  end;


end.
