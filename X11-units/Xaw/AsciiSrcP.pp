
unit AsciiSrcP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/AsciiSrcP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/AsciiSrcP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/AsciiSrcP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawAsciiSrcP_h}
{$define _XawAsciiSrcP_h}  
{$include <X11/Xaw/TextSrcP.h>}
{$include <X11/Xaw/AsciiSrc.h>}
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
    _Piece = record
        text : ^char;
        used : XawTextPosition;
        prev : ^_Piece;
        next : ^_Piece;
      end;
    Piece = _Piece;

    _AsciiSrcClassPart = record
        extension : XtPointer;
      end;
    AsciiSrcClassPart = _AsciiSrcClassPart;


    _AsciiSrcClassRec = record
        object_class : ObjectClassPart;
        text_src_class : TextSrcClassPart;
        ascii_src_class : AsciiSrcClassPart;
      end;
    AsciiSrcClassRec = _AsciiSrcClassRec;

    var
      asciiSrcClassRec : AsciiSrcClassRec;cvar;external;






{$ifdef OLDXAW}
{$endif}


{$ifdef ASCII_DISK}

{$endif}



{$ifdef OLDXAW}
{$endif}



{$ifndef OLDXAW}

{$endif}

  type
    _AsciiSrcPart = record
        _string : ^char;
        _type : XawAsciiType;
        piece_size : XawTextPosition;
        data_compression : Boolean;
        callback : XtCallbackList;
        use_string_in_place : Boolean;
        ascii_length : longint;
        filename : String;
        is_tempfile : Boolean;
        changes : Boolean;
        allocated_string : Boolean;
        length : XawTextPosition;
        first_piece : ^Piece;
        pad : array[0..3] of XtPointer;
      end;
    AsciiSrcPart = _AsciiSrcPart;


    _AsciiSrcRec = record
        object : ObjectPart;
        text_src : TextSrcPart;
        ascii_src : AsciiSrcPart;
      end;
    AsciiSrcRec = _AsciiSrcRec;
{$endif}


implementation


end.
