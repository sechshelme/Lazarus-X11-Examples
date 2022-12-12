
unit TextSinkP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/TextSinkP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/TextSinkP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/TextSinkP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef _XawTextSinkP_h}
{$define _XawTextSinkP_h}  

{$include <X11/Xaw3d/TextSink.h>}
{$include <X11/Xaw3d/TextP.h>	/* This source works with the Text widget. */}
{$include <X11/Xaw3d/TextSrcP.h>	/* This source works with the Text Source. */}


  type
    _TextSinkClassPart = record
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
    TextSinkClassPart = _TextSinkClassPart;


    _TextSinkClassRec = record
        object_class : ObjectClassPart;
        text_sink_class : TextSinkClassPart;
      end;
    TextSinkClassRec = _TextSinkClassRec;

    var
      textSinkClassRec : TextSinkClassRec;cvar;external;









  type
    TextSinkPart = record
        foreground : Pixel;
        background : Pixel;
        tabs : ^Position;
        char_tabs : ^smallint;
        tab_count : longint;
      end;


    _TextSinkRec = record
        object : ObjectPart;
        text_sink : TextSinkPart;
      end;
    TextSinkRec = _TextSinkRec;


    _XawSinkIntFunc = function :longint;cdecl;

    _XawSinkVoidFunc = procedure ;cdecl;

  function XtInheritDisplayText : _XawSinkVoidFunc;    

  function XtInheritInsertCursor : _XawSinkVoidFunc;    

  function XtInheritClearToBackground : _XawSinkVoidFunc;    

  function XtInheritFindPosition : _XawSinkVoidFunc;    

  function XtInheritFindDistance : _XawSinkVoidFunc;    

  function XtInheritResolve : _XawSinkVoidFunc;    

  function XtInheritMaxLines : _XawSinkIntFunc;    

  function XtInheritMaxHeight : _XawSinkIntFunc;    

  function XtInheritSetTabs : _XawSinkVoidFunc;    

  function XtInheritGetCursorBounds : _XawSinkVoidFunc;    

{$endif}


implementation

  function XtInheritDisplayText : _XawSinkVoidFunc;
    begin
      XtInheritDisplayText:=_XawSinkVoidFunc(_XtInherit);
    end;

  function XtInheritInsertCursor : _XawSinkVoidFunc;
    begin
      XtInheritInsertCursor:=_XawSinkVoidFunc(_XtInherit);
    end;

  function XtInheritClearToBackground : _XawSinkVoidFunc;
    begin
      XtInheritClearToBackground:=_XawSinkVoidFunc(_XtInherit);
    end;

  function XtInheritFindPosition : _XawSinkVoidFunc;
    begin
      XtInheritFindPosition:=_XawSinkVoidFunc(_XtInherit);
    end;

  function XtInheritFindDistance : _XawSinkVoidFunc;
    begin
      XtInheritFindDistance:=_XawSinkVoidFunc(_XtInherit);
    end;

  function XtInheritResolve : _XawSinkVoidFunc;
    begin
      XtInheritResolve:=_XawSinkVoidFunc(_XtInherit);
    end;

  function XtInheritMaxLines : _XawSinkIntFunc;
    begin
      XtInheritMaxLines:=_XawSinkIntFunc(_XtInherit);
    end;

  function XtInheritMaxHeight : _XawSinkIntFunc;
    begin
      XtInheritMaxHeight:=_XawSinkIntFunc(_XtInherit);
    end;

  function XtInheritSetTabs : _XawSinkVoidFunc;
    begin
      XtInheritSetTabs:=_XawSinkVoidFunc(_XtInherit);
    end;

  function XtInheritGetCursorBounds : _XawSinkVoidFunc;
    begin
      XtInheritGetCursorBounds:=_XawSinkVoidFunc(_XtInherit);
    end;


end.
