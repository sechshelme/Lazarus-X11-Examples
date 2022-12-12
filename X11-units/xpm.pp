
unit xpm;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/xpm.h
  The following command line parameters were used:
    /usr/include/X11/xpm.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/xpm.pp
}

  Type
  Pchar  = ^char;
  PDisplay  = ^Display;
  PPixel  = ^Pixel;
  PXColor  = ^XColor;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}






{$ifndef XPM_h}
{$define XPM_h}  


  const
    XpmFormat = 3;    
    XpmVersion = 4;    
    XpmRevision = 11;    
(* error 
#define XpmIncludeVersion ((XpmFormat * 100 + XpmVersion) * 100 + XpmRevision)
in define line 63 *)
{$ifndef XPM_NUMBERS}
{$ifdef FOR_MSW}

{$define SYSV}    
{$include <malloc.h>}
{$include "simx.h"		/* defines some X stuff using MSW types */}

{$define NEED_STRCASECMP}    
{$else}

{$ifdef AMIGA}
{$include "amigax.h"}
{$else}

{$include <X11/Xlib.h>}
{$include <X11/Xutil.h>}
{$endif}

{$endif}


{$if ! defined(_XtIntrinsic_h) && ! defined(PIXEL_ALREADY_TYPEDEFED)}

    type
      Pixel = dword;

{$define PIXEL_ALREADY_TYPEDEFED}    
{$endif}


    const
      XpmColorError = 1;      
      XpmSuccess = 0;      
      XpmOpenFailed = -(1);      
      XpmFileInvalid = -(2);      
      XpmNoMemory = -(3);      
      XpmColorFailed = -(4);      




    type
      XpmColorSymbol = record
          name : ^char;
          value : ^char;
          pixel : Pixel;
        end;




      XpmExtension = record
          name : ^char;
          nlines : dword;
          lines : ^^char;
        end;







      XpmColor = record
          _string : ^char;
          symbolic : ^char;
          m_color : ^char;
          g4_color : ^char;
          g_color : ^char;
          c_color : ^char;
        end;







      XpmImage = record
          width : dword;
          height : dword;
          cpp : dword;
          ncolors : dword;
          colorTable : ^XpmColor;
          data : ^dword;
        end;









      XpmInfo = record
          valuemask : dword;
          hints_cmt : ^char;
          colors_cmt : ^char;
          pixels_cmt : ^char;
          x_hotspot : dword;
          y_hotspot : dword;
          nextensions : dword;
          extensions : ^XpmExtension;
        end;


      XpmAllocColorFunc = function (_para1:PDisplay; _para2:Colormap; _para3:Pchar; _para4:PXColor; _para5:pointer):longint;cdecl;


      XpmFreeColorsFunc = function (_para1:PDisplay; _para2:Colormap; _para3:PPixel; _para4:longint; _para5:pointer):longint;cdecl;








































      XpmAttributes = record
          valuemask : dword;
          visual : ^Visual;
          colormap : Colormap;
          depth : dword;
          width : dword;
          height : dword;
          x_hotspot : dword;
          y_hotspot : dword;
          cpp : dword;
          pixels : ^Pixel;
          npixels : dword;
          colorsymbols : ^XpmColorSymbol;
          numsymbols : dword;
          rgb_fname : ^char;
          nextensions : dword;
          extensions : ^XpmExtension;
          ncolors : dword;
          colorTable : ^XpmColor;
          hints_cmt : ^char;
          colors_cmt : ^char;
          pixels_cmt : ^char;
          mask_pixel : dword;
          exactColors : Bool;
          closeness : dword;
          red_closeness : dword;
          green_closeness : dword;
          blue_closeness : dword;
          color_key : longint;
          alloc_pixels : ^Pixel;
          nalloc_pixels : longint;
          alloc_close_colors : Bool;
          bitmap_format : longint;
          alloc_color : XpmAllocColorFunc;
          free_colors : XpmFreeColorsFunc;
          color_closure : pointer;
        end;


    const
      XpmVisual = 1 shl 0;      
      XpmColormap = 1 shl 1;      
      XpmDepth = 1 shl 2;      

      XpmSize = 1 shl 3;      

      XpmHotspot = 1 shl 4;      
      XpmCharsPerPixel = 1 shl 5;      
      XpmColorSymbols = 1 shl 6;      
      XpmRgbFilename = 1 shl 7;      

      XpmInfos = 1 shl 8;      
      XpmReturnInfos = XpmInfos;      

      XpmReturnPixels = 1 shl 9;      
      XpmExtensions = 1 shl 10;      
      XpmReturnExtensions = XpmExtensions;      
      XpmExactColors = 1 shl 11;      
      XpmCloseness = 1 shl 12;      
      XpmRGBCloseness = 1 shl 13;      
      XpmColorKey = 1 shl 14;      
      XpmColorTable = 1 shl 15;      
      XpmReturnColorTable = XpmColorTable;      
      XpmReturnAllocPixels = 1 shl 16;      
      XpmAllocCloseColors = 1 shl 17;      
      XpmBitmapFormat = 1 shl 18;      
      XpmAllocColor = 1 shl 19;      
      XpmFreeColors = 1 shl 20;      
      XpmColorClosure = 1 shl 21;      

      XpmComments = XpmInfos;      
      XpmReturnComments = XpmComments;      

{$ifndef FOR_MSW}

    const
      XpmUndefPixel = $80000000;      
{$else}


    const
      XpmUndefPixel = $8000;      
{$endif}


    const
      XPM_MONO = 2;      
      XPM_GREY4 = 3;      
      XPM_GRAY4 = 3;      
      XPM_GREY = 4;      
      XPM_GRAY = 4;      
      XPM_COLOR = 5;      

(* error 
#define FUNC(f, t, p) extern t f p
in define line 278 *)
(* error 
#define LFUNC(f, t, p) static t f p
in define line 279 *)



{$if !defined(FOR_MSW) && !defined(AMIGA)}
(* error 
    FUNC(XpmCreatePixmapFromData, int, (Display *display,
(* error 
					Drawable d,
(* error 
					char **data,
(* error 
					Pixmap *pixmap_return,
(* error 
					Pixmap *shapemask_return,
(* error 
					XpmAttributes *attributes));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    FUNC(XpmCreateDataFromPixmap, int, (Display *display,
(* error 
    FUNC(XpmCreateDataFromPixmap, int, (Display *display,
(* error 
    FUNC(XpmCreateDataFromPixmap, int, (Display *display,
(* error 
					char ***data_return,
(* error 
					Pixmap pixmap,
(* error 
					Pixmap shapemask,
(* error 
					XpmAttributes *attributes));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    FUNC(XpmReadFileToPixmap, int, (Display *display,
(* error 
    FUNC(XpmReadFileToPixmap, int, (Display *display,
(* error 
    FUNC(XpmReadFileToPixmap, int, (Display *display,
(* error 
				    Drawable d,
(* error 
				    const char *filename,
(* error 
				    Pixmap *pixmap_return,
(* error 
				    Pixmap *shapemask_return,
(* error 
				    XpmAttributes *attributes));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    FUNC(XpmWriteFileFromPixmap, int, (Display *display,
(* error 
    FUNC(XpmWriteFileFromPixmap, int, (Display *display,
(* error 
    FUNC(XpmWriteFileFromPixmap, int, (Display *display,
(* error 
				       const char *filename,
(* error 
				       Pixmap pixmap,
(* error 
				       Pixmap shapemask,
(* error 
				       XpmAttributes *attributes));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
{$endif}
(* error 
    FUNC(XpmCreateImageFromData, int, (Display *display,
(* error 
    FUNC(XpmCreateImageFromData, int, (Display *display,
(* error 
    FUNC(XpmCreateImageFromData, int, (Display *display,
(* error 
				       char **data,
(* error 
				       XImage **image_return,
(* error 
				       XImage **shapemask_return,
(* error 
				       XpmAttributes *attributes));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    FUNC(XpmCreateDataFromImage, int, (Display *display,
(* error 
    FUNC(XpmCreateDataFromImage, int, (Display *display,
(* error 
    FUNC(XpmCreateDataFromImage, int, (Display *display,
(* error 
				       char ***data_return,
(* error 
				       XImage *image,
(* error 
				       XImage *shapeimage,
(* error 
				       XpmAttributes *attributes));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    FUNC(XpmReadFileToImage, int, (Display *display,
(* error 
    FUNC(XpmReadFileToImage, int, (Display *display,
(* error 
    FUNC(XpmReadFileToImage, int, (Display *display,
(* error 
				   const char *filename,
(* error 
				   XImage **image_return,
(* error 
				   XImage **shapeimage_return,
(* error 
				   XpmAttributes *attributes));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    FUNC(XpmWriteFileFromImage, int, (Display *display,
(* error 
    FUNC(XpmWriteFileFromImage, int, (Display *display,
(* error 
    FUNC(XpmWriteFileFromImage, int, (Display *display,
(* error 
				      const char *filename,
(* error 
				      XImage *image,
(* error 
				      XImage *shapeimage,
(* error 
				      XpmAttributes *attributes));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    FUNC(XpmCreateImageFromBuffer, int, (Display *display,
(* error 
    FUNC(XpmCreateImageFromBuffer, int, (Display *display,
(* error 
    FUNC(XpmCreateImageFromBuffer, int, (Display *display,
(* error 
					 char *buffer,
(* error 
					 XImage **image_return,
(* error 
					 XImage **shapemask_return,
(* error 
					 XpmAttributes *attributes));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
{$if !defined(FOR_MSW) && !defined(AMIGA)}
(* error 
    FUNC(XpmCreatePixmapFromBuffer, int, (Display *display,
(* error 
    FUNC(XpmCreatePixmapFromBuffer, int, (Display *display,
(* error 
    FUNC(XpmCreatePixmapFromBuffer, int, (Display *display,
(* error 
					  Drawable d,
(* error 
					  char *buffer,
(* error 
					  Pixmap *pixmap_return,
(* error 
					  Pixmap *shapemask_return,
(* error 
					  XpmAttributes *attributes));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    FUNC(XpmCreateBufferFromImage, int, (Display *display,
(* error 
    FUNC(XpmCreateBufferFromImage, int, (Display *display,
(* error 
    FUNC(XpmCreateBufferFromImage, int, (Display *display,
(* error 
					 char **buffer_return,
(* error 
					 XImage *image,
(* error 
					 XImage *shapeimage,
(* error 
					 XpmAttributes *attributes));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    FUNC(XpmCreateBufferFromPixmap, int, (Display *display,
(* error 
    FUNC(XpmCreateBufferFromPixmap, int, (Display *display,
(* error 
    FUNC(XpmCreateBufferFromPixmap, int, (Display *display,
(* error 
					  char **buffer_return,
(* error 
					  Pixmap pixmap,
(* error 
					  Pixmap shapemask,
(* error 
					  XpmAttributes *attributes));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
{$endif}
(* error 
    FUNC(XpmReadFileToBuffer, int, (const char *filename, char **buffer_return));
(* error 
    FUNC(XpmReadFileToBuffer, int, (const char *filename, char **buffer_return));
(* error 
    FUNC(XpmReadFileToBuffer, int, (const char *filename, char **buffer_return));
(* error 
    FUNC(XpmReadFileToBuffer, int, (const char *filename, char **buffer_return));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    FUNC(XpmWriteFileFromBuffer, int, (const char *filename, char *buffer));
(* error 
    FUNC(XpmWriteFileFromBuffer, int, (const char *filename, char *buffer));
(* error 
    FUNC(XpmWriteFileFromBuffer, int, (const char *filename, char *buffer));
(* error 
    FUNC(XpmWriteFileFromBuffer, int, (const char *filename, char *buffer));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    FUNC(XpmReadFileToData, int, (const char *filename, char ***data_return));
(* error 
    FUNC(XpmReadFileToData, int, (const char *filename, char ***data_return));
(* error 
    FUNC(XpmReadFileToData, int, (const char *filename, char ***data_return));
(* error 
    FUNC(XpmReadFileToData, int, (const char *filename, char ***data_return));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    FUNC(XpmWriteFileFromData, int, (const char *filename, char **data));
(* error 
    FUNC(XpmWriteFileFromData, int, (const char *filename, char **data));
(* error 
    FUNC(XpmWriteFileFromData, int, (const char *filename, char **data));
(* error 
    FUNC(XpmWriteFileFromData, int, (const char *filename, char **data));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    FUNC(XpmAttributesSize, int, (void));
(* error 
    FUNC(XpmAttributesSize, int, (void));
(* error 
    FUNC(XpmAttributesSize, int, (void));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    FUNC(XpmFreeAttributes, void, (XpmAttributes *attributes));
(* error 
    FUNC(XpmFreeAttributes, void, (XpmAttributes *attributes));
(* error 
    FUNC(XpmFreeAttributes, void, (XpmAttributes *attributes));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    FUNC(XpmFreeExtensions, void, (XpmExtension *extensions,
(* error 
    FUNC(XpmFreeExtensions, void, (XpmExtension *extensions,
(* error 
    FUNC(XpmFreeExtensions, void, (XpmExtension *extensions,
(* error 
				   int nextensions));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    FUNC(XpmFreeXpmImage, void, (XpmImage *image));
(* error 
    FUNC(XpmFreeXpmImage, void, (XpmImage *image));
(* error 
    FUNC(XpmFreeXpmImage, void, (XpmImage *image));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    FUNC(XpmFreeXpmInfo, void, (XpmInfo *info));
(* error 
    FUNC(XpmFreeXpmInfo, void, (XpmInfo *info));
(* error 
    FUNC(XpmFreeXpmInfo, void, (XpmInfo *info));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    FUNC(XpmGetErrorString, char *, (int errcode));
(* error 
    FUNC(XpmGetErrorString, char *, (int errcode));
(* error 
    FUNC(XpmGetErrorString, char *, (int errcode));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    FUNC(XpmLibraryVersion, int, (void));
(* error 
    FUNC(XpmLibraryVersion, int, (void));
(* error 
    FUNC(XpmLibraryVersion, int, (void));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

(* error 
    FUNC(XpmReadFileToXpmImage, int, (const char *filename,
(* error 
    FUNC(XpmReadFileToXpmImage, int, (const char *filename,
(* error 
    FUNC(XpmReadFileToXpmImage, int, (const char *filename,
(* error 
				      XpmImage *image,
(* error 
				      XpmInfo *info));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    FUNC(XpmWriteFileFromXpmImage, int, (const char *filename,
(* error 
    FUNC(XpmWriteFileFromXpmImage, int, (const char *filename,
(* error 
    FUNC(XpmWriteFileFromXpmImage, int, (const char *filename,
(* error 
					 XpmImage *image,
(* error 
					 XpmInfo *info));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
{$if !defined(FOR_MSW) && !defined(AMIGA)}
(* error 
    FUNC(XpmCreatePixmapFromXpmImage, int, (Display *display,
(* error 
    FUNC(XpmCreatePixmapFromXpmImage, int, (Display *display,
(* error 
    FUNC(XpmCreatePixmapFromXpmImage, int, (Display *display,
(* error 
					    Drawable d,
(* error 
					    XpmImage *image,
(* error 
					    Pixmap *pixmap_return,
(* error 
					    Pixmap *shapemask_return,
(* error 
					    XpmAttributes *attributes));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
{$endif}
(* error 
    FUNC(XpmCreateImageFromXpmImage, int, (Display *display,
(* error 
    FUNC(XpmCreateImageFromXpmImage, int, (Display *display,
(* error 
    FUNC(XpmCreateImageFromXpmImage, int, (Display *display,
(* error 
					   XpmImage *image,
(* error 
					   XImage **image_return,
(* error 
					   XImage **shapeimage_return,
(* error 
					   XpmAttributes *attributes));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    FUNC(XpmCreateXpmImageFromImage, int, (Display *display,
(* error 
    FUNC(XpmCreateXpmImageFromImage, int, (Display *display,
(* error 
    FUNC(XpmCreateXpmImageFromImage, int, (Display *display,
(* error 
					   XImage *image,
(* error 
					   XImage *shapeimage,
(* error 
					   XpmImage *xpmimage,
(* error 
					   XpmAttributes *attributes));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
{$if !defined(FOR_MSW) && !defined(AMIGA)}
(* error 
    FUNC(XpmCreateXpmImageFromPixmap, int, (Display *display,
(* error 
    FUNC(XpmCreateXpmImageFromPixmap, int, (Display *display,
(* error 
    FUNC(XpmCreateXpmImageFromPixmap, int, (Display *display,
(* error 
					    Pixmap pixmap,
(* error 
					    Pixmap shapemask,
(* error 
					    XpmImage *xpmimage,
(* error 
					    XpmAttributes *attributes));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
{$endif}
(* error 
    FUNC(XpmCreateDataFromXpmImage, int, (char ***data_return,
(* error 
    FUNC(XpmCreateDataFromXpmImage, int, (char ***data_return,
(* error 
    FUNC(XpmCreateDataFromXpmImage, int, (char ***data_return,
(* error 
					  XpmImage *image,
(* error 
					  XpmInfo *info));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    FUNC(XpmCreateXpmImageFromData, int, (char **data,
(* error 
    FUNC(XpmCreateXpmImageFromData, int, (char **data,
(* error 
    FUNC(XpmCreateXpmImageFromData, int, (char **data,
(* error 
					  XpmImage *image,
(* error 
					  XpmInfo *info));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    FUNC(XpmCreateXpmImageFromBuffer, int, (char *buffer,
(* error 
    FUNC(XpmCreateXpmImageFromBuffer, int, (char *buffer,
(* error 
    FUNC(XpmCreateXpmImageFromBuffer, int, (char *buffer,
(* error 
					    XpmImage *image,
(* error 
					    XpmInfo *info));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    FUNC(XpmCreateBufferFromXpmImage, int, (char **buffer_return,
(* error 
    FUNC(XpmCreateBufferFromXpmImage, int, (char **buffer_return,
(* error 
    FUNC(XpmCreateBufferFromXpmImage, int, (char **buffer_return,
(* error 
					    XpmImage *image,
(* error 
					    XpmInfo *info));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    FUNC(XpmGetParseError, int, (char *filename,
(* error 
    FUNC(XpmGetParseError, int, (char *filename,
(* error 
    FUNC(XpmGetParseError, int, (char *filename,
(* error 
				 int *linenum_return,
(* error 
				 int *charnum_return));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    FUNC(XpmFree, void, (void *ptr));
(* error 
    FUNC(XpmFree, void, (void *ptr));
(* error 
    FUNC(XpmFree, void, (void *ptr));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)


(* error 
#define XpmPixmapColorError  XpmColorError
in define line 445 *)

    const
      XpmPixmapSuccess = XpmSuccess;      
      XpmPixmapOpenFailed = XpmOpenFailed;      
      XpmPixmapFileInvalid = XpmFileInvalid;      
      XpmPixmapNoMemory = XpmNoMemory;      
      XpmPixmapColorFailed = XpmColorFailed;      

    function XpmReadPixmapFile(dpy,d,file,pix,mask,att : longint) : longint;    

  function XpmWritePixmapFile(dpy,file,pix,mask,att : longint) : longint;  


  const
    PixmapColorError = XpmColorError;    
    PixmapSuccess = XpmSuccess;    
    PixmapOpenFailed = XpmOpenFailed;    
    PixmapFileInvalid = XpmFileInvalid;    
    PixmapNoMemory = XpmNoMemory;    
    PixmapColorFailed = XpmColorFailed;    
    ColorSymbol = XpmColorSymbol;    

  function XReadPixmapFile(dpy,d,file,pix,mask,att : longint) : longint;  

  function XWritePixmapFile(dpy,file,pix,mask,att : longint) : longint;  

  function XCreatePixmapFromData(dpy,d,data,pix,mask,att : longint) : longint;  

  function XCreateDataFromPixmap(dpy,data,pix,mask,att : longint) : longint;  

{$endif}

{$endif}

implementation

    function XpmReadPixmapFile(dpy,d,file,pix,mask,att : longint) : longint;
    begin
      XpmReadPixmapFile:=XpmReadFileToPixmap(dpy,d,file,pix,mask,att);
    end;

  function XpmWritePixmapFile(dpy,file,pix,mask,att : longint) : longint;
  begin
    XpmWritePixmapFile:=XpmWriteFileFromPixmap(dpy,file,pix,mask,att);
  end;

  function XReadPixmapFile(dpy,d,file,pix,mask,att : longint) : longint;
  begin
    XReadPixmapFile:=XpmReadFileToPixmap(dpy,d,file,pix,mask,att);
  end;

  function XWritePixmapFile(dpy,file,pix,mask,att : longint) : longint;
  begin
    XWritePixmapFile:=XpmWriteFileFromPixmap(dpy,file,pix,mask,att);
  end;

  function XCreatePixmapFromData(dpy,d,data,pix,mask,att : longint) : longint;
  begin
    XCreatePixmapFromData:=XpmCreatePixmapFromData(dpy,d,data,pix,mask,att);
  end;

  function XCreateDataFromPixmap(dpy,data,pix,mask,att : longint) : longint;
  begin
    XCreateDataFromPixmap:=XpmCreateDataFromPixmap(dpy,data,pix,mask,att);
  end;


end.
