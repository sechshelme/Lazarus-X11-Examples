
unit XWDFile;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/XWDFile.h
  The following command line parameters were used:
    /usr/include/X11/XWDFile.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/XWDFile.pp
}

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
    xwdval = CARD32;




























    _xwd_file_header = record
        header_size : CARD32;
        file_version : CARD32;
        pixmap_format : CARD32;
        pixmap_depth : CARD32;
        pixmap_width : CARD32;
        pixmap_height : CARD32;
        xoffset : CARD32;
        byte_order : CARD32;
        bitmap_unit : CARD32;
        bitmap_bit_order : CARD32;
        bitmap_pad : CARD32;
        bits_per_pixel : CARD32;
        bytes_per_line : CARD32;
        visual_class : CARD32;
        red_mask : CARD32;
        green_mask : CARD32;
        blue_mask : CARD32;
        bits_per_rgb : CARD32;
        colormap_entries : CARD32;
        ncolors : CARD32;
        window_width : CARD32;
        window_height : CARD32;
        window_x : CARD32;
        window_y : CARD32;
        window_bdrwidth : CARD32;
      end;
    XWDFileHeader = _xwd_file_header;



    XWDColor = record
        pixel : CARD32;
        red : CARD16;
        green : CARD16;
        blue : CARD16;
        flags : CARD8;
        pad : CARD8;
      end;

{$endif}


implementation


end.
