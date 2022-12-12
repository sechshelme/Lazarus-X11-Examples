
unit Xcursor;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xcursor/Xcursor.h
  The following command line parameters were used:
    /usr/include/X11/Xcursor/Xcursor.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xcursor/Xcursor.pp
}

    Type
    Pbyte  = ^byte;
    Pchar  = ^char;
    PDisplay  = ^Display;
    PFILE  = ^FILE;
    PXColor  = ^XColor;
    PXcursorAnimate  = ^XcursorAnimate;
    PXcursorComment  = ^XcursorComment;
    PXcursorComments  = ^XcursorComments;
    PXcursorCursors  = ^XcursorCursors;
    PXcursorFile  = ^XcursorFile;
    PXcursorImage  = ^XcursorImage;
    PXcursorImages  = ^XcursorImages;
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
    XcursorBool = longint;

    XcursorUInt = dword;

    XcursorDim = XcursorUInt;

    XcursorPixel = XcursorUInt;

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
      _XcursorFileToc = record
          _type : XcursorUInt;
          subtype : XcursorUInt;
          position : XcursorUInt;
        end;
      XcursorFileToc = _XcursorFileToc;






      _XcursorFileHeader = record
          magic : XcursorUInt;
          header : XcursorUInt;
          version : XcursorUInt;
          ntoc : XcursorUInt;
          tocs : ^XcursorFileToc;
        end;
      XcursorFileHeader = _XcursorFileHeader;


    const
      XCURSOR_CHUNK_HEADER_LEN = 4*4;      





    type
      _XcursorChunkHeader = record
          header : XcursorUInt;
          _type : XcursorUInt;
          subtype : XcursorUInt;
          version : XcursorUInt;
        end;
      XcursorChunkHeader = _XcursorChunkHeader;



    const
      XCURSOR_COMMENT_TYPE = $fffe0001;      
      XCURSOR_COMMENT_VERSION = 1;      
      XCURSOR_COMMENT_HEADER_LEN = XCURSOR_CHUNK_HEADER_LEN+(1*4);      
      XCURSOR_COMMENT_COPYRIGHT = 1;      
      XCURSOR_COMMENT_LICENSE = 2;      
      XCURSOR_COMMENT_OTHER = 3;      
      XCURSOR_COMMENT_MAX_LEN = $100000;      

    type
      _XcursorComment = record
          version : XcursorUInt;
          comment_type : XcursorUInt;
          comment : ^char;
        end;
      XcursorComment = _XcursorComment;


    const
      XCURSOR_IMAGE_TYPE = $fffd0002;      
      XCURSOR_IMAGE_VERSION = 1;      
      XCURSOR_IMAGE_HEADER_LEN = XCURSOR_CHUNK_HEADER_LEN+(5*4);      

      XCURSOR_IMAGE_MAX_SIZE = $7fff;      









    type
      _XcursorImage = record
          version : XcursorUInt;
          size : XcursorDim;
          width : XcursorDim;
          height : XcursorDim;
          xhot : XcursorDim;
          yhot : XcursorDim;
          delay : XcursorUInt;
          pixels : ^XcursorPixel;
        end;
      XcursorImage = _XcursorImage;





      _XcursorImages = record
          nimage : longint;
          images : ^^XcursorImage;
          name : ^char;
        end;
      XcursorImages = _XcursorImages;





      _XcursorCursors = record
          dpy : ^Display;
          ref : longint;
          ncursor : longint;
          cursors : ^Cursor;
        end;
      XcursorCursors = _XcursorCursors;



      _XcursorAnimate = record
          cursors : ^XcursorCursors;
          sequence : longint;
        end;
      XcursorAnimate = _XcursorAnimate;
      _XcursorFile = XcursorFile;
      _XcursorFile = record
          closure : pointer;
          read : function (file:PXcursorFile; buf:Pbyte; len:longint):longint;cdecl;
          write : function (file:PXcursorFile; buf:Pbyte; len:longint):longint;cdecl;
          seek : function (file:PXcursorFile; offset:longint; whence:longint):longint;cdecl;
        end;




      _XcursorComments = record
          ncomment : longint;
          comments : ^^XcursorComment;
        end;
      XcursorComments = _XcursorComments;

    const
      XCURSOR_CORE_THEME = 'core';      

(* error 
XcursorImage *
(* error 
XcursorImageCreate (int width, int height);
 in declarator_list *)
 in declarator_list *)

    procedure XcursorImageDestroy(image:PXcursorImage);


    function XcursorImagesCreate(size:longint):^XcursorImages;

    procedure XcursorImagesDestroy(images:PXcursorImages);

    procedure XcursorImagesSetName(images:PXcursorImages; name:Pchar);


    function XcursorCursorsCreate(dpy:PDisplay; size:longint):^XcursorCursors;

    procedure XcursorCursorsDestroy(cursors:PXcursorCursors);


    function XcursorAnimateCreate(cursors:PXcursorCursors):^XcursorAnimate;

    procedure XcursorAnimateDestroy(animate:PXcursorAnimate);

    function XcursorAnimateNext(animate:PXcursorAnimate):Cursor;


    function XcursorCommentCreate(comment_type:XcursorUInt; length:longint):^XcursorComment;

    procedure XcursorCommentDestroy(comment:PXcursorComment);

    function XcursorCommentsCreate(size:longint):^XcursorComments;

    procedure XcursorCommentsDestroy(comments:PXcursorComments);


    function XcursorXcFileLoadImage(file:PXcursorFile; size:longint):^XcursorImage;

    function XcursorXcFileLoadImages(file:PXcursorFile; size:longint):^XcursorImages;

    function XcursorXcFileLoadAllImages(file:PXcursorFile):^XcursorImages;

    function XcursorXcFileLoad(file:PXcursorFile; commentsp:PPXcursorComments; imagesp:PPXcursorImages):XcursorBool;

    function XcursorXcFileSave(file:PXcursorFile; comments:PXcursorComments; images:PXcursorImages):XcursorBool;


    function XcursorFileLoadImage(file:PFILE; size:longint):^XcursorImage;

    function XcursorFileLoadImages(file:PFILE; size:longint):^XcursorImages;

    function XcursorFileLoadAllImages(file:PFILE):^XcursorImages;

    function XcursorFileLoad(file:PFILE; commentsp:PPXcursorComments; imagesp:PPXcursorImages):XcursorBool;

    function XcursorFileSaveImages(file:PFILE; images:PXcursorImages):XcursorBool;

    function XcursorFileSave(file:PFILE; comments:PXcursorComments; images:PXcursorImages):XcursorBool;


    function XcursorFilenameLoadImage(filename:Pchar; size:longint):^XcursorImage;

    function XcursorFilenameLoadImages(filename:Pchar; size:longint):^XcursorImages;

    function XcursorFilenameLoadAllImages(filename:Pchar):^XcursorImages;

    function XcursorFilenameLoad(file:Pchar; commentsp:PPXcursorComments; imagesp:PPXcursorImages):XcursorBool;

    function XcursorFilenameSaveImages(filename:Pchar; images:PXcursorImages):XcursorBool;

    function XcursorFilenameSave(file:Pchar; comments:PXcursorComments; images:PXcursorImages):XcursorBool;


    function XcursorLibraryLoadImage(library:Pchar; theme:Pchar; size:longint):^XcursorImage;

    function XcursorLibraryLoadImages(library:Pchar; theme:Pchar; size:longint):^XcursorImages;


    function XcursorLibraryPath:^char;

    function XcursorLibraryShape(library:Pchar):longint;


    function XcursorImageLoadCursor(dpy:PDisplay; image:PXcursorImage):Cursor;

    function XcursorImagesLoadCursors(dpy:PDisplay; images:PXcursorImages):^XcursorCursors;

    function XcursorImagesLoadCursor(dpy:PDisplay; images:PXcursorImages):Cursor;


    function XcursorFilenameLoadCursor(dpy:PDisplay; file:Pchar):Cursor;

    function XcursorFilenameLoadCursors(dpy:PDisplay; file:Pchar):^XcursorCursors;


    function XcursorLibraryLoadCursor(dpy:PDisplay; file:Pchar):Cursor;

    function XcursorLibraryLoadCursors(dpy:PDisplay; file:Pchar):^XcursorCursors;


    function XcursorShapeLoadImage(shape:dword; theme:Pchar; size:longint):^XcursorImage;

    function XcursorShapeLoadImages(shape:dword; theme:Pchar; size:longint):^XcursorImages;


    function XcursorShapeLoadCursor(dpy:PDisplay; shape:dword):Cursor;

    function XcursorShapeLoadCursors(dpy:PDisplay; shape:dword):^XcursorCursors;


(* error 
		       XColor _Xconst *foreground,
(* error 
		       XColor _Xconst *background);
 in declarator_list *)
 in declarator_list *)
    procedure XcursorNoticeCreateBitmap(dpy:PDisplay; pid:Pixmap; width:dword; height:dword);

    procedure XcursorNoticePutBitmap(dpy:PDisplay; draw:Drawable; image:PXImage);

    function XcursorTryShapeBitmapCursor(dpy:PDisplay; source:Pixmap; mask:Pixmap; foreground:PXColor; background:PXColor; 
               x:dword; y:dword):Cursor;

    const
      XCURSOR_BITMAP_HASH_SIZE = 16;      

    procedure XcursorImageHash(image:PXImage; hash:array[0..(XCURSOR_BITMAP_HASH_SIZE)-1] of byte);


    function XcursorSupportsARGB(dpy:PDisplay):XcursorBool;

    function XcursorSupportsAnim(dpy:PDisplay):XcursorBool;

    function XcursorSetDefaultSize(dpy:PDisplay; size:longint):XcursorBool;

    function XcursorGetDefaultSize(dpy:PDisplay):longint;

    function XcursorSetTheme(dpy:PDisplay; theme:Pchar):XcursorBool;

    function XcursorGetTheme(dpy:PDisplay):^char;

    function XcursorGetThemeCore(dpy:PDisplay):XcursorBool;

    function XcursorSetThemeCore(dpy:PDisplay; theme_core:XcursorBool):XcursorBool;

{$endif}
(* error 
#endif

implementation

    procedure XcursorImageDestroy(image:PXcursorImage);
    begin
      { You must implement this function }
    end;
    function XcursorImagesCreate(size:longint):PXcursorImages;
    begin
      { You must implement this function }
    end;
    procedure XcursorImagesDestroy(images:PXcursorImages);
    begin
      { You must implement this function }
    end;
    procedure XcursorImagesSetName(images:PXcursorImages; name:Pchar);
    begin
      { You must implement this function }
    end;
    function XcursorCursorsCreate(dpy:PDisplay; size:longint):PXcursorCursors;
    begin
      { You must implement this function }
    end;
    procedure XcursorCursorsDestroy(cursors:PXcursorCursors);
    begin
      { You must implement this function }
    end;
    function XcursorAnimateCreate(cursors:PXcursorCursors):PXcursorAnimate;
    begin
      { You must implement this function }
    end;
    procedure XcursorAnimateDestroy(animate:PXcursorAnimate);
    begin
      { You must implement this function }
    end;
    function XcursorAnimateNext(animate:PXcursorAnimate):Cursor;
    begin
      { You must implement this function }
    end;
    function XcursorCommentCreate(comment_type:XcursorUInt; length:longint):PXcursorComment;
    begin
      { You must implement this function }
    end;
    procedure XcursorCommentDestroy(comment:PXcursorComment);
    begin
      { You must implement this function }
    end;
    function XcursorCommentsCreate(size:longint):PXcursorComments;
    begin
      { You must implement this function }
    end;
    procedure XcursorCommentsDestroy(comments:PXcursorComments);
    begin
      { You must implement this function }
    end;
    function XcursorXcFileLoadImage(file:PXcursorFile; size:longint):PXcursorImage;
    begin
      { You must implement this function }
    end;
    function XcursorXcFileLoadImages(file:PXcursorFile; size:longint):PXcursorImages;
    begin
      { You must implement this function }
    end;
    function XcursorXcFileLoadAllImages(file:PXcursorFile):PXcursorImages;
    begin
      { You must implement this function }
    end;
    function XcursorXcFileLoad(file:PXcursorFile; commentsp:PPXcursorComments; imagesp:PPXcursorImages):XcursorBool;
    begin
      { You must implement this function }
    end;
    function XcursorXcFileSave(file:PXcursorFile; comments:PXcursorComments; images:PXcursorImages):XcursorBool;
    begin
      { You must implement this function }
    end;
    function XcursorFileLoadImage(file:PFILE; size:longint):PXcursorImage;
    begin
      { You must implement this function }
    end;
    function XcursorFileLoadImages(file:PFILE; size:longint):PXcursorImages;
    begin
      { You must implement this function }
    end;
    function XcursorFileLoadAllImages(file:PFILE):PXcursorImages;
    begin
      { You must implement this function }
    end;
    function XcursorFileLoad(file:PFILE; commentsp:PPXcursorComments; imagesp:PPXcursorImages):XcursorBool;
    begin
      { You must implement this function }
    end;
    function XcursorFileSaveImages(file:PFILE; images:PXcursorImages):XcursorBool;
    begin
      { You must implement this function }
    end;
    function XcursorFileSave(file:PFILE; comments:PXcursorComments; images:PXcursorImages):XcursorBool;
    begin
      { You must implement this function }
    end;
    function XcursorFilenameLoadImage(filename:Pchar; size:longint):PXcursorImage;
    begin
      { You must implement this function }
    end;
    function XcursorFilenameLoadImages(filename:Pchar; size:longint):PXcursorImages;
    begin
      { You must implement this function }
    end;
    function XcursorFilenameLoadAllImages(filename:Pchar):PXcursorImages;
    begin
      { You must implement this function }
    end;
    function XcursorFilenameLoad(file:Pchar; commentsp:PPXcursorComments; imagesp:PPXcursorImages):XcursorBool;
    begin
      { You must implement this function }
    end;
    function XcursorFilenameSaveImages(filename:Pchar; images:PXcursorImages):XcursorBool;
    begin
      { You must implement this function }
    end;
    function XcursorFilenameSave(file:Pchar; comments:PXcursorComments; images:PXcursorImages):XcursorBool;
    begin
      { You must implement this function }
    end;
    function XcursorLibraryLoadImage(library:Pchar; theme:Pchar; size:longint):PXcursorImage;
    begin
      { You must implement this function }
    end;
    function XcursorLibraryLoadImages(library:Pchar; theme:Pchar; size:longint):PXcursorImages;
    begin
      { You must implement this function }
    end;
    function XcursorLibraryPath:Pchar;
    begin
      { You must implement this function }
    end;
    function XcursorLibraryShape(library:Pchar):longint;
    begin
      { You must implement this function }
    end;
    function XcursorImageLoadCursor(dpy:PDisplay; image:PXcursorImage):Cursor;
    begin
      { You must implement this function }
    end;
    function XcursorImagesLoadCursors(dpy:PDisplay; images:PXcursorImages):PXcursorCursors;
    begin
      { You must implement this function }
    end;
    function XcursorImagesLoadCursor(dpy:PDisplay; images:PXcursorImages):Cursor;
    begin
      { You must implement this function }
    end;
    function XcursorFilenameLoadCursor(dpy:PDisplay; file:Pchar):Cursor;
    begin
      { You must implement this function }
    end;
    function XcursorFilenameLoadCursors(dpy:PDisplay; file:Pchar):PXcursorCursors;
    begin
      { You must implement this function }
    end;
    function XcursorLibraryLoadCursor(dpy:PDisplay; file:Pchar):Cursor;
    begin
      { You must implement this function }
    end;
    function XcursorLibraryLoadCursors(dpy:PDisplay; file:Pchar):PXcursorCursors;
    begin
      { You must implement this function }
    end;
    function XcursorShapeLoadImage(shape:dword; theme:Pchar; size:longint):PXcursorImage;
    begin
      { You must implement this function }
    end;
    function XcursorShapeLoadImages(shape:dword; theme:Pchar; size:longint):PXcursorImages;
    begin
      { You must implement this function }
    end;
    function XcursorShapeLoadCursor(dpy:PDisplay; shape:dword):Cursor;
    begin
      { You must implement this function }
    end;
    function XcursorShapeLoadCursors(dpy:PDisplay; shape:dword):PXcursorCursors;
    begin
      { You must implement this function }
    end;
    procedure XcursorNoticeCreateBitmap(dpy:PDisplay; pid:Pixmap; width:dword; height:dword);
    begin
      { You must implement this function }
    end;
    procedure XcursorNoticePutBitmap(dpy:PDisplay; draw:Drawable; image:PXImage);
    begin
      { You must implement this function }
    end;
    function XcursorTryShapeBitmapCursor(dpy:PDisplay; source:Pixmap; mask:Pixmap; foreground:PXColor; background:PXColor; 
               x:dword; y:dword):Cursor;
    begin
      { You must implement this function }
    end;
    procedure XcursorImageHash(image:PXImage; hash:array[0..(XCURSOR_BITMAP_HASH_SIZE)-1] of byte);
    begin
      { You must implement this function }
    end;
    function XcursorSupportsARGB(dpy:PDisplay):XcursorBool;
    begin
      { You must implement this function }
    end;
    function XcursorSupportsAnim(dpy:PDisplay):XcursorBool;
    begin
      { You must implement this function }
    end;
    function XcursorSetDefaultSize(dpy:PDisplay; size:longint):XcursorBool;
    begin
      { You must implement this function }
    end;
    function XcursorGetDefaultSize(dpy:PDisplay):longint;
    begin
      { You must implement this function }
    end;
    function XcursorSetTheme(dpy:PDisplay; theme:Pchar):XcursorBool;
    begin
      { You must implement this function }
    end;
    function XcursorGetTheme(dpy:PDisplay):Pchar;
    begin
      { You must implement this function }
    end;
    function XcursorGetThemeCore(dpy:PDisplay):XcursorBool;
    begin
      { You must implement this function }
    end;
    function XcursorSetThemeCore(dpy:PDisplay; theme_core:XcursorBool):XcursorBool;
    begin
      { You must implement this function }
    end;

end.
