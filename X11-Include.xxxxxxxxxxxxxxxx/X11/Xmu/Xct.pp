
unit Xct;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/Xct.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/Xct.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/Xct.pp
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
Pbyte  = ^byte;
Pchar  = ^char;
PXctData  = ^XctData;
PXctFlags  = ^XctFlags;
PXctHDirection  = ^XctHDirection;
PXctPriv  = ^XctPriv;
PXctRec  = ^XctRec;
PXctResult  = ^XctResult;
PXctString  = ^XctString;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _Xct_h}
{$define _Xct_h}
{$include <X11/Xfuncproto.h>}

const
  XctVersion = 1;  
type
  PXctString = ^TXctString;
  TXctString = Pbyte;

  PXctHDirection = ^TXctHDirection;
  TXctHDirection = (XctUnspecified,XctLeftToRight,XctRightToLeft
    );

  PXctFlags = ^TXctFlags;
  TXctFlags = dword;


const
  XctSingleSetSegments = $0001;  

  XctProvideExtensions = $0002;  

  XctAcceptC0Extensions = $0004;  

  XctAcceptC1Extensions = $0008;  

  XctHideDirection = $0010;  

  XctFreeString = $0020;  

  XctShiftMultiGRToGL = $0040;  












type
  PXctResult = ^TXctResult;
  TXctResult = (XctSegment,XctC0Segment,XctGLSegment,XctC1Segment,
    XctGRSegment,XctExtendedSegment,XctExtension,
    XctHorizontal,XctEndOfText,XctError);






















  PXctRec = ^TXctRec;
  TXctRec = ^record
      total_string : TXctString;
      total_length : longint;
      flags : TXctFlags;
      version : longint;
      can_ignore_exts : longint;
      item : TXctString;
      item_length : dword;
      char_size : longint;
      encoding : Pchar;
      horizontal : TXctHDirection;
      horz_depth : dword;
      GL : Pchar;
      GL_encoding : Pchar;
      GL_set_size : longint;
      GL_char_size : longint;
      GR : Pchar;
      GR_encoding : Pchar;
      GR_set_size : longint;
      GR_char_size : longint;
      GLGR_encoding : Pchar;
      priv : PXctPriv;
    end;
  TXctData = PXctRec;
  PXctData = ^TXctData;

(* error 
XctData XctCreate
(* error 
 int			length,
(* error 
 XctFlags		flags
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

function XctNextItem(data:TXctData):TXctResult;cdecl;external;
procedure XctFree(data:TXctData);cdecl;external;
procedure XctReset(data:TXctData);cdecl;external;
{$endif}

(* error 
#endif /* _Xct_h */

implementation


end.
