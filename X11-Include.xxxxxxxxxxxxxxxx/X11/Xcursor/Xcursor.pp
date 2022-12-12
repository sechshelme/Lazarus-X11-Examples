
unit Xcursor;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xcursor/Xcursor.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xcursor/Xcursor.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xcursor/Xcursor.pp
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
    PCursor  = ^Cursor;
    PDisplay  = ^Display;
    PFILE  = ^FILE;
    PXColor  = ^XColor;
    PXcursorAnimate  = ^XcursorAnimate;
    PXcursorBool  = ^XcursorBool;
    PXcursorChunkHeader  = ^XcursorChunkHeader;
    PXcursorComment  = ^XcursorComment;
    PXcursorComments  = ^XcursorComments;
    PXcursorCursors  = ^XcursorCursors;
    PXcursorDim  = ^XcursorDim;
    PXcursorFile  = ^XcursorFile;
    PXcursorFileHeader  = ^XcursorFileHeader;
    PXcursorFileToc  = ^XcursorFileToc;
    PXcursorImage  = ^XcursorImage;
    PXcursorImages  = ^XcursorImages;
    PXcursorPixel  = ^XcursorPixel;
    PXcursorUInt  = ^XcursorUInt;
    PXImage  = ^XImage;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XCURSOR_H_}
{$define _XCURSOR_H_}
{$include <stdio.h>}
{$include <X11/Xfuncproto.h>}
{$include <X11/Xlib.h>}
type
  PXcursorBool = ^TXcursorBool;
  TXcursorBool = longint;

  PXcursorUInt = ^TXcursorUInt;
  TXcursorUInt = dword;

  PXcursorDim = ^TXcursorDim;
  TXcursorDim = TXcursorUInt;

  PXcursorPixel = ^TXcursorPixel;
  TXcursorPixel = TXcursorUInt;

const
  XcursorTrue = 1;  
  XcursorFalse = 0;  


  XCURSOR_MAGIC = $72756358;  

  XCURSOR_LIB_MAJOR = 1;  
  XCURSOR_LIB_MINOR = 2;  
  XCURSOR_LIB_REVISION = 0;  
(* error 
#define XCURSOR_LIB_VERSION	((XCURSOR_LIB_MAJOR * 10000) + \
in define line 82 *)

      XCURSOR_FILE_MAJOR = 1;      
      XCURSOR_FILE_MINOR = 0;      
      XCURSOR_FILE_VERSION = (XCURSOR_FILE_MAJOR shl 16) or XCURSOR_FILE_MINOR;      
      XCURSOR_FILE_HEADER_LEN = 4*4;      
      XCURSOR_FILE_TOC_LEN = 3*4;      



    type
      PXcursorFileToc = ^TXcursorFileToc;
      TXcursorFileToc = record
          _type : TXcursorUInt;
          subtype : TXcursorUInt;
          position : TXcursorUInt;
        end;






      PXcursorFileHeader = ^TXcursorFileHeader;
      TXcursorFileHeader = record
          magic : TXcursorUInt;
          header : TXcursorUInt;
          version : TXcursorUInt;
          ntoc : TXcursorUInt;
          tocs : PXcursorFileToc;
        end;


    const
      XCURSOR_CHUNK_HEADER_LEN = 4*4;      




    type
      PXcursorChunkHeader = ^TXcursorChunkHeader;
      TXcursorChunkHeader = record
          header : TXcursorUInt;
          _type : TXcursorUInt;
          subtype : TXcursorUInt;
          version : TXcursorUInt;
        end;



    const
      XCURSOR_COMMENT_TYPE = $fffe0001;      
      XCURSOR_COMMENT_VERSION = 1;      
      XCURSOR_COMMENT_HEADER_LEN = XCURSOR_CHUNK_HEADER_LEN+(1*4);      
      XCURSOR_COMMENT_COPYRIGHT = 1;      
      XCURSOR_COMMENT_LICENSE = 2;      
      XCURSOR_COMMENT_OTHER = 3;      
      XCURSOR_COMMENT_MAX_LEN = $100000;      
    type
      PXcursorComment = ^TXcursorComment;
      TXcursorComment = record
          version : TXcursorUInt;
          comment_type : TXcursorUInt;
          comment : Pchar;
        end;


    const
      XCURSOR_IMAGE_TYPE = $fffd0002;      
      XCURSOR_IMAGE_VERSION = 1;      
      XCURSOR_IMAGE_HEADER_LEN = XCURSOR_CHUNK_HEADER_LEN+(5*4);      

      XCURSOR_IMAGE_MAX_SIZE = $7fff;      








    type
      PXcursorImage = ^TXcursorImage;
      TXcursorImage = record
          version : TXcursorUInt;
          size : TXcursorDim;
          width : TXcursorDim;
          height : TXcursorDim;
          xhot : TXcursorDim;
          yhot : TXcursorDim;
          delay : TXcursorUInt;
          pixels : PXcursorPixel;
        end;





      PXcursorImages = ^TXcursorImages;
      TXcursorImages = record
          nimage : longint;
          images : ^PXcursorImage;
          name : Pchar;
        end;





      PXcursorCursors = ^TXcursorCursors;
      TXcursorCursors = record
          dpy : PDisplay;
          ref : longint;
          ncursor : longint;
          cursors : PCursor;
        end;



      PXcursorAnimate = ^TXcursorAnimate;
      TXcursorAnimate = record
          cursors : PXcursorCursors;
          sequence : longint;
        end;
      PXcursorFile = ^TXcursorFile;
      TXcursorFile = record
          closure : pointer;
          read : function (file:PXcursorFile; buf:Pbyte; len:longint):longint;cdecl;
          write : function (file:PXcursorFile; buf:Pbyte; len:longint):longint;cdecl;
          seek : function (file:PXcursorFile; offset:longint; whence:longint):longint;cdecl;
        end;




      PXcursorComments = ^TXcursorComments;
      TXcursorComments = record
          ncomment : longint;
          comments : ^PXcursorComment;
        end;

    const
      XCURSOR_CORE_THEME = 'core';      

(* error 
XcursorImage *
(* error 
XcursorImageCreate (int width, int height);
 in declarator_list *)
 in declarator_list *)

procedure XcursorImageDestroy(image:PXcursorImage);cdecl;external;

function XcursorImagesCreate(size:longint):PXcursorImages;cdecl;external;
procedure XcursorImagesDestroy(images:PXcursorImages);cdecl;external;
procedure XcursorImagesSetName(images:PXcursorImages; name:Pchar);cdecl;external;

function XcursorCursorsCreate(dpy:PDisplay; size:longint):PXcursorCursors;cdecl;external;
procedure XcursorCursorsDestroy(cursors:PXcursorCursors);cdecl;external;

function XcursorAnimateCreate(cursors:PXcursorCursors):PXcursorAnimate;cdecl;external;
procedure XcursorAnimateDestroy(animate:PXcursorAnimate);cdecl;external;
function XcursorAnimateNext(animate:PXcursorAnimate):TCursor;cdecl;external;

function XcursorCommentCreate(comment_type:TXcursorUInt; length:longint):PXcursorComment;cdecl;external;
procedure XcursorCommentDestroy(comment:PXcursorComment);cdecl;external;
function XcursorCommentsCreate(size:longint):PXcursorComments;cdecl;external;
procedure XcursorCommentsDestroy(comments:PXcursorComments);cdecl;external;

function XcursorXcFileLoadImage(file:PXcursorFile; size:longint):PXcursorImage;cdecl;external;
function XcursorXcFileLoadImages(file:PXcursorFile; size:longint):PXcursorImages;cdecl;external;
function XcursorXcFileLoadAllImages(file:PXcursorFile):PXcursorImages;cdecl;external;
function XcursorXcFileLoad(file:PXcursorFile; commentsp:PPXcursorComments; imagesp:PPXcursorImages):TXcursorBool;cdecl;external;
function XcursorXcFileSave(file:PXcursorFile; comments:PXcursorComments; images:PXcursorImages):TXcursorBool;cdecl;external;

function XcursorFileLoadImage(file:PFILE; size:longint):PXcursorImage;cdecl;external;
function XcursorFileLoadImages(file:PFILE; size:longint):PXcursorImages;cdecl;external;
function XcursorFileLoadAllImages(file:PFILE):PXcursorImages;cdecl;external;
function XcursorFileLoad(file:PFILE; commentsp:PPXcursorComments; imagesp:PPXcursorImages):TXcursorBool;cdecl;external;
function XcursorFileSaveImages(file:PFILE; images:PXcursorImages):TXcursorBool;cdecl;external;
function XcursorFileSave(file:PFILE; comments:PXcursorComments; images:PXcursorImages):TXcursorBool;cdecl;external;

function XcursorFilenameLoadImage(filename:Pchar; size:longint):PXcursorImage;cdecl;external;
function XcursorFilenameLoadImages(filename:Pchar; size:longint):PXcursorImages;cdecl;external;
function XcursorFilenameLoadAllImages(filename:Pchar):PXcursorImages;cdecl;external;
function XcursorFilenameLoad(file:Pchar; commentsp:PPXcursorComments; imagesp:PPXcursorImages):TXcursorBool;cdecl;external;
function XcursorFilenameSaveImages(filename:Pchar; images:PXcursorImages):TXcursorBool;cdecl;external;
function XcursorFilenameSave(file:Pchar; comments:PXcursorComments; images:PXcursorImages):TXcursorBool;cdecl;external;

function XcursorLibraryLoadImage(library:Pchar; theme:Pchar; size:longint):PXcursorImage;cdecl;external;
function XcursorLibraryLoadImages(library:Pchar; theme:Pchar; size:longint):PXcursorImages;cdecl;external;

function XcursorLibraryPath:Pchar;cdecl;external;
function XcursorLibraryShape(library:Pchar):longint;cdecl;external;

function XcursorImageLoadCursor(dpy:PDisplay; image:PXcursorImage):TCursor;cdecl;external;
function XcursorImagesLoadCursors(dpy:PDisplay; images:PXcursorImages):PXcursorCursors;cdecl;external;
function XcursorImagesLoadCursor(dpy:PDisplay; images:PXcursorImages):TCursor;cdecl;external;

function XcursorFilenameLoadCursor(dpy:PDisplay; file:Pchar):TCursor;cdecl;external;
function XcursorFilenameLoadCursors(dpy:PDisplay; file:Pchar):PXcursorCursors;cdecl;external;

function XcursorLibraryLoadCursor(dpy:PDisplay; file:Pchar):TCursor;cdecl;external;
function XcursorLibraryLoadCursors(dpy:PDisplay; file:Pchar):PXcursorCursors;cdecl;external;

function XcursorShapeLoadImage(shape:dword; theme:Pchar; size:longint):PXcursorImage;cdecl;external;
function XcursorShapeLoadImages(shape:dword; theme:Pchar; size:longint):PXcursorImages;cdecl;external;

function XcursorShapeLoadCursor(dpy:PDisplay; shape:dword):TCursor;cdecl;external;
function XcursorShapeLoadCursors(dpy:PDisplay; shape:dword):PXcursorCursors;cdecl;external;

(* error 
		       XColor _Xconst *foreground,
(* error 
		       XColor _Xconst *background);
 in declarator_list *)
 in declarator_list *)
procedure XcursorNoticeCreateBitmap(dpy:PDisplay; pid:TPixmap; width:dword; height:dword);cdecl;external;
procedure XcursorNoticePutBitmap(dpy:PDisplay; draw:TDrawable; image:PXImage);cdecl;external;
function XcursorTryShapeBitmapCursor(dpy:PDisplay; source:TPixmap; mask:TPixmap; foreground:PXColor; background:PXColor; 
               x:dword; y:dword):TCursor;cdecl;external;
    const
      XCURSOR_BITMAP_HASH_SIZE = 16;      

procedure XcursorImageHash(image:PXImage; hash:array[0..(XCURSOR_BITMAP_HASH_SIZE)-1] of byte);cdecl;external;

function XcursorSupportsARGB(dpy:PDisplay):TXcursorBool;cdecl;external;
function XcursorSupportsAnim(dpy:PDisplay):TXcursorBool;cdecl;external;
function XcursorSetDefaultSize(dpy:PDisplay; size:longint):TXcursorBool;cdecl;external;
function XcursorGetDefaultSize(dpy:PDisplay):longint;cdecl;external;
function XcursorSetTheme(dpy:PDisplay; theme:Pchar):TXcursorBool;cdecl;external;
function XcursorGetTheme(dpy:PDisplay):Pchar;cdecl;external;
function XcursorGetThemeCore(dpy:PDisplay):TXcursorBool;cdecl;external;
function XcursorSetThemeCore(dpy:PDisplay; theme_core:TXcursorBool):TXcursorBool;cdecl;external;
{$endif}
(* error 
#endif

implementation


end.
