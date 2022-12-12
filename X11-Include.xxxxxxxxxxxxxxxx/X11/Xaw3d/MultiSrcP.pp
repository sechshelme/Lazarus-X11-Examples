
unit MultiSrcP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/MultiSrcP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/MultiSrcP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/MultiSrcP.pp
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


function MAGIC_VALUE : TXawTextPosition;  

function streq(a,b : longint) : longint;





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
      foo : char;
    end;


  PMultiSrcClassRec = ^TMultiSrcClassRec;
  TMultiSrcClassRec = record
      object_class : TObjectClassPart;
      text_src_class : TTextSrcClassPart;
      multi_src_class : TMultiSrcClassPart;
    end;
  var
    multiSrcClassRec : TMultiSrcClassRec;cvar;external;
















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
    end;


  PMultiSrcRec = ^TMultiSrcRec;
  TMultiSrcRec = record
      object : TObjectPart;
      text_src : TTextSrcPart;
      multi_src : TMultiSrcPart;
    end;
{$if NeedFunctionPrototypes}

procedure _XawMultiSourceFreeString(para1:TWidget);cdecl;external;
{$else}

procedure _XawMultiSourceFreeString;cdecl;external;
{$endif}
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
