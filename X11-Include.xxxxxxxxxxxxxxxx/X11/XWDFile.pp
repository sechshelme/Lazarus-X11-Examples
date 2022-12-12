
unit XWDFile;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/XWDFile.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/XWDFile.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/XWDFile.pp
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
Pxwd_file_header  = ^xwd_file_header;
PXWDColor  = ^XWDColor;
PXWDFileHeader  = ^XWDFileHeader;
Pxwdval  = ^xwdval;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef XWDFILE_H}
{$define XWDFILE_H}
{$include <X11/Xmd.h>}

const
  XWD_FILE_VERSION = 7;  
  sz_XWDheader = 100;  
  sz_XWDColor = 12;  
type
  Pxwdval = ^Txwdval;
  Txwdval = TCARD32;




























  Pxwd_file_header = ^Txwd_file_header;
  Txwd_file_header = record
      header_size : TCARD32;
      file_version : TCARD32;
      pixmap_format : TCARD32;
      pixmap_depth : TCARD32;
      pixmap_width : TCARD32;
      pixmap_height : TCARD32;
      xoffset : TCARD32;
      byte_order : TCARD32;
      bitmap_unit : TCARD32;
      bitmap_bit_order : TCARD32;
      bitmap_pad : TCARD32;
      bits_per_pixel : TCARD32;
      bytes_per_line : TCARD32;
      visual_class : TCARD32;
      red_mask : TCARD32;
      green_mask : TCARD32;
      blue_mask : TCARD32;
      bits_per_rgb : TCARD32;
      colormap_entries : TCARD32;
      ncolors : TCARD32;
      window_width : TCARD32;
      window_height : TCARD32;
      window_x : TCARD32;
      window_y : TCARD32;
      window_bdrwidth : TCARD32;
    end;
  TXWDFileHeader = Txwd_file_header;
  PXWDFileHeader = ^TXWDFileHeader;



  PXWDColor = ^TXWDColor;
  TXWDColor = record
      pixel : TCARD32;
      red : TCARD16;
      green : TCARD16;
      blue : TCARD16;
      flags : TCARD8;
      pad : TCARD8;
    end;

{$endif}


implementation


end.
