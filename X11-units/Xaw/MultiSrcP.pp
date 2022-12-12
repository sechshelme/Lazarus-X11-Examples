
unit MultiSrcP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/MultiSrcP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/MultiSrcP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/MultiSrcP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}






{$ifndef _XawMultiSrcP_h}
{$define _XawMultiSrcP_h}  
{$include <X11/Xfuncproto.h>}
{$include <X11/Xaw/TextSrcP.h>}
{$include <X11/Xaw/MultiSrc.h>}
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





  type
    _MultiPiece = record
        text : ^wchar_t;
        used : XawTextPosition;
        prev : ^_MultiPiece;
        next : ^_MultiPiece;
      end;
    MultiPiece = _MultiPiece;


    _MultiSrcClassPart = record
        extension : XtPointer;
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







{$ifdef OLDXAW}
{$endif}




{$ifdef OLDXAW}
{$endif}



{$ifndef OLDXAW}

{$endif}

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
        pad : array[0..3] of XtPointer;
      end;
    MultiSrcPart = _MultiSrcPart;


    _MultiSrcRec = record
        object : ObjectPart;
        text_src : TextSrcPart;
        multi_src : MultiSrcPart;
      end;
    MultiSrcRec = _MultiSrcRec;
(* error 
void _XawMultiSourceFreeString
in declaration at line 175 *)
{$endif}

(* error 
#endif /* _XawMultiSrcP_h */

implementation


end.
