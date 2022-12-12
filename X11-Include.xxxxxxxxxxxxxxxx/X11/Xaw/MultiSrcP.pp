
unit MultiSrcP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/MultiSrcP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/MultiSrcP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/MultiSrcP.pp
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
    PMultiPiece  = ^MultiPiece;
    PMultiSrcClassPart  = ^MultiSrcClassPart;
    PMultiSrcClassRec  = ^MultiSrcClassRec;
    PMultiSrcPart  = ^MultiSrcPart;
    PMultiSrcRec  = ^MultiSrcRec;
    Pwchar_t  = ^wchar_t;
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
  PMultiPiece = ^TMultiPiece;
  TMultiPiece = record
      text : Pwchar_t;
      used : TXawTextPosition;
      prev : PMultiPiece;
      next : PMultiPiece;
    end;


  PMultiSrcClassPart = ^TMultiSrcClassPart;
  TMultiSrcClassPart = record
      extension : TXtPointer;
    end;


  PMultiSrcClassRec = ^TMultiSrcClassRec;
  TMultiSrcClassRec = record
      object_class : TObjectClassPart;
      text_src_class : TTextSrcClassPart;
      multi_src_class : TMultiSrcClassPart;
    end;
  var
    multiSrcClassRec : TMultiSrcClassRec;cvar;external;







{$ifdef OLDXAW}
{$endif}




{$ifdef OLDXAW}
{$endif}



{$ifndef OLDXAW}

{$endif}
type
  PMultiSrcPart = ^TMultiSrcPart;
  TMultiSrcPart = record
      ic : TXIC;
      _string : TXtPointer;
      _type : TXawAsciiType;
      piece_size : TXawTextPosition;
      data_compression : TBoolean;
      callback : TXtCallbackList;
      use_string_in_place : TBoolean;
      multi_length : longint;
      is_tempfile : TBoolean;
      changes : TBoolean;
      allocated_string : TBoolean;
      length : TXawTextPosition;
      first_piece : PMultiPiece;
      pad : array[0..3] of TXtPointer;
    end;


  PMultiSrcRec = ^TMultiSrcRec;
  TMultiSrcRec = record
      object : TObjectPart;
      text_src : TTextSrcPart;
      multi_src : TMultiSrcPart;
    end;
(* error 
void _XawMultiSourceFreeString
in declaration at line 175 *)
{$endif}

(* error 
#endif /* _XawMultiSrcP_h */

implementation


end.
