
unit MultiSrcP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/MultiSrcP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/MultiSrcP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/MultiSrcP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}








{$ifndef _XawMultiSrcP_h}
{$define _XawMultiSrcP_h}  
{$include <X11/Xaw3d/TextSrcP.h>}
{$include <X11/Xaw3d/MultiSrc.h>}

{$ifdef L_tmpnam}

  const
    TMPSIZ = L_tmpnam;    
{$else}
{$ifdef PATH_MAX}

  const
    TMPSIZ = PATH_MAX;    
{$else}


  const
    TMPSIZ = 1024;    
{$endif}
{$endif}


  function MAGIC_VALUE : XawTextPosition;    

  function streq(a,b : longint) : longint;  






  type
    _MultiPiece = record
        text : ^wchar_t;
        used : XawTextPosition;
        prev : ^_MultiPiece;
        next : ^_MultiPiece;
      end;
    MultiPiece = _MultiPiece;


    _MultiSrcClassPart = record
        foo : char;
      end;
    MultiSrcClassPart = _MultiSrcClassPart;


    _MultiSrcClassRec = record
        object_class : ObjectClassPart;
        text_src_class : TextSrcClassPart;
        multi_src_class : MultiSrcClassPart;
      end;
    MultiSrcClassRec = _MultiSrcClassRec;

    var
      multiSrcClassRec : MultiSrcClassRec;cvar;external;

















  type
    _MultiSrcPart = record
        ic : XIC;
        _string : XtPointer;
        _type : XawAsciiType;
        piece_size : XawTextPosition;
        data_compression : Boolean;
        callback : XtCallbackList;
        use_string_in_place : Boolean;
        multi_length : longint;
        is_tempfile : Boolean;
        changes : Boolean;
        allocated_string : Boolean;
        length : XawTextPosition;
        first_piece : ^MultiPiece;
      end;
    MultiSrcPart = _MultiSrcPart;


    _MultiSrcRec = record
        object : ObjectPart;
        text_src : TextSrcPart;
        multi_src : MultiSrcPart;
      end;
    MultiSrcRec = _MultiSrcRec;
{$if NeedFunctionPrototypes}

  procedure _XawMultiSourceFreeString(_para1:Widget);cdecl;

{$else}

  procedure _XawMultiSourceFreeString;cdecl;

{$endif}
{$endif}


implementation

  function MAGIC_VALUE : XawTextPosition;
    begin
      MAGIC_VALUE:=XawTextPosition(-(1));
    end;

  function streq(a,b : longint) : longint;
  begin
    streq:=(strcmp(a,b))=0;
  end;


end.
