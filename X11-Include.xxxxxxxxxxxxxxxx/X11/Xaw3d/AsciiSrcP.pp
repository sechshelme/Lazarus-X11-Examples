
unit AsciiSrcP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/AsciiSrcP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/AsciiSrcP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/AsciiSrcP.pp
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
PAsciiSrcClassPart  = ^AsciiSrcClassPart;
PAsciiSrcClassRec  = ^AsciiSrcClassRec;
PAsciiSrcPart  = ^AsciiSrcPart;
PAsciiSrcRec  = ^AsciiSrcRec;
Pchar  = ^char;
PPiece  = ^Piece;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}






{$ifndef _XawAsciiSrcP_h}
{$define _XawAsciiSrcP_h}
{$include <X11/Xaw3d/TextSrcP.h>}
{$include <X11/Xaw3d/AsciiSrc.h>}

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


function MAGIC_VALUE : TXawTextPosition;  

function streq(a,b : longint) : longint;





type
  PPiece = ^TPiece;
  TPiece = record
      text : Pchar;
      used : TXawTextPosition;
      prev : PPiece;
      next : PPiece;
    end;


  PAsciiSrcClassPart = ^TAsciiSrcClassPart;
  TAsciiSrcClassPart = record
      foo : char;
    end;


  PAsciiSrcClassRec = ^TAsciiSrcClassRec;
  TAsciiSrcClassRec = record
      object_class : TObjectClassPart;
      text_src_class : TTextSrcClassPart;
      ascii_src_class : TAsciiSrcClassPart;
    end;
  var
    asciiSrcClassRec : TAsciiSrcClassRec;cvar;external;









{$ifdef ASCII_DISK}

{$endif}







type
  PAsciiSrcPart = ^TAsciiSrcPart;
  TAsciiSrcPart = record
      _string : Pchar;
      _type : TXawAsciiType;
      piece_size : TXawTextPosition;
      data_compression : TBoolean;
      callback : TXtCallbackList;
      use_string_in_place : TBoolean;
      ascii_length : longint;
      filename : TString;
      is_tempfile : TBoolean;
      changes : TBoolean;
      allocated_string : TBoolean;
      length : TXawTextPosition;
      first_piece : PPiece;
    end;


  PAsciiSrcRec = ^TAsciiSrcRec;
  TAsciiSrcRec = record
      object : TObjectPart;
      text_src : TTextSrcPart;
      ascii_src : TAsciiSrcPart;
    end;
{$endif}

implementation

function MAGIC_VALUE : TXawTextPosition;
  begin
    MAGIC_VALUE:=TXawTextPosition(-(1));
  end;

function streq(a,b : longint) : longint;
begin
  streq:=(strcmp(a,b))=0;
end;


end.
