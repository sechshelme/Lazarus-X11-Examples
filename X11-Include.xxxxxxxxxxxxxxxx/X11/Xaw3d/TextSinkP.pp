
unit TextSinkP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/TextSinkP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/TextSinkP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/TextSinkP.pp
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
PPosition  = ^Position;
Psmallint  = ^smallint;
PTextSinkClassPart  = ^TextSinkClassPart;
PTextSinkClassRec  = ^TextSinkClassRec;
PTextSinkPart  = ^TextSinkPart;
PTextSinkRec  = ^TextSinkRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef _XawTextSinkP_h}
{$define _XawTextSinkP_h}

{$include <X11/Xaw3d/TextSink.h>}
{$include <X11/Xaw3d/TextP.h>	/* This source works with the Text widget. */}
{$include <X11/Xaw3d/TextSrcP.h>	/* This source works with the Text Source. */}

type
  PTextSinkClassPart = ^TTextSinkClassPart;
  TTextSinkClassPart = record
      DisplayText : procedure ;cdecl;
      InsertCursor : procedure ;cdecl;
      ClearToBackground : procedure ;cdecl;
      FindPosition : procedure ;cdecl;
      FindDistance : procedure ;cdecl;
      Resolve : procedure ;cdecl;
      MaxLines : function :longint;cdecl;
      MaxHeight : function :longint;cdecl;
      SetTabs : procedure ;cdecl;
      GetCursorBounds : procedure ;cdecl;
    end;


  PTextSinkClassRec = ^TTextSinkClassRec;
  TTextSinkClassRec = record
      object_class : TObjectClassPart;
      text_sink_class : TTextSinkClassPart;
    end;
  var
    textSinkClassRec : TTextSinkClassRec;cvar;external;








type
  PTextSinkPart = ^TTextSinkPart;
  TTextSinkPart = record
      foreground : TPixel;
      background : TPixel;
      tabs : PPosition;
      char_tabs : Psmallint;
      tab_count : longint;
    end;


  PTextSinkRec = ^TTextSinkRec;
  TTextSinkRec = record
      object : TObjectPart;
      text_sink : TTextSinkPart;
    end;


  TXawSinkIntFunc = function :longint;cdecl;

  TXawSinkVoidFunc = procedure ;cdecl;

function XtInheritDisplayText : TXawSinkVoidFunc;  

function XtInheritInsertCursor : TXawSinkVoidFunc;  

function XtInheritClearToBackground : TXawSinkVoidFunc;  

function XtInheritFindPosition : TXawSinkVoidFunc;  

function XtInheritFindDistance : TXawSinkVoidFunc;  

function XtInheritResolve : TXawSinkVoidFunc;  

function XtInheritMaxLines : TXawSinkIntFunc;  

function XtInheritMaxHeight : TXawSinkIntFunc;  

function XtInheritSetTabs : TXawSinkVoidFunc;  

function XtInheritGetCursorBounds : TXawSinkVoidFunc;  

{$endif}


implementation

function XtInheritDisplayText : TXawSinkVoidFunc;
  begin
    XtInheritDisplayText:=TXawSinkVoidFunc(_XtInherit);
  end;

function XtInheritInsertCursor : TXawSinkVoidFunc;
  begin
    XtInheritInsertCursor:=TXawSinkVoidFunc(_XtInherit);
  end;

function XtInheritClearToBackground : TXawSinkVoidFunc;
  begin
    XtInheritClearToBackground:=TXawSinkVoidFunc(_XtInherit);
  end;

function XtInheritFindPosition : TXawSinkVoidFunc;
  begin
    XtInheritFindPosition:=TXawSinkVoidFunc(_XtInherit);
  end;

function XtInheritFindDistance : TXawSinkVoidFunc;
  begin
    XtInheritFindDistance:=TXawSinkVoidFunc(_XtInherit);
  end;

function XtInheritResolve : TXawSinkVoidFunc;
  begin
    XtInheritResolve:=TXawSinkVoidFunc(_XtInherit);
  end;

function XtInheritMaxLines : TXawSinkIntFunc;
  begin
    XtInheritMaxLines:=TXawSinkIntFunc(_XtInherit);
  end;

function XtInheritMaxHeight : TXawSinkIntFunc;
  begin
    XtInheritMaxHeight:=TXawSinkIntFunc(_XtInherit);
  end;

function XtInheritSetTabs : TXawSinkVoidFunc;
  begin
    XtInheritSetTabs:=TXawSinkVoidFunc(_XtInherit);
  end;

function XtInheritGetCursorBounds : TXawSinkVoidFunc;
  begin
    XtInheritGetCursorBounds:=TXawSinkVoidFunc(_XtInherit);
  end;


end.
