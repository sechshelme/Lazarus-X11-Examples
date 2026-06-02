unit fp_xcb_image;

interface

uses
  fp_xcb, fp_shm;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


type
  Txcb_image_t = record
    width: Tuint16_t;
    height: Tuint16_t;
    format: Txcb_image_format_t;
    scanline_pad: Tuint8_t;
    depth: Tuint8_t;
    bpp: Tuint8_t;
    unit_: Tuint8_t;
    plane_mask: Tuint32_t;
    byte_order: Txcb_image_order_t;
    bit_order: Txcb_image_order_t;
    stride: Tuint32_t;
    size: Tuint32_t;
    base: pointer;
    data: Puint8_t;
  end;
  Pxcb_image_t = ^Txcb_image_t;

  Txcb_shm_segment_info_t = record
    shmseg: Txcb_shm_seg_t;
    shmid: Tuint32_t;
    shmaddr: Puint8_t;
  end;
  Pxcb_shm_segment_info_t = ^Txcb_shm_segment_info_t;

procedure xcb_image_annotate(image: Pxcb_image_t); cdecl; external libxcb_image;
function xcb_image_create(width: Tuint16_t; height: Tuint16_t; format: Txcb_image_format_t; xpad: Tuint8_t; depth: Tuint8_t;
  bpp: Tuint8_t; unit_: Tuint8_t; byte_order: Txcb_image_order_t; bit_order: Txcb_image_order_t; base: pointer;
  bytes: Tuint32_t; data: Puint8_t): Pxcb_image_t; cdecl; external libxcb_image;
function xcb_image_create_native(c: Pxcb_connection_t; width: Tuint16_t; height: Tuint16_t; format: Txcb_image_format_t; depth: Tuint8_t;
  base: pointer; bytes: Tuint32_t; data: Puint8_t): Pxcb_image_t; cdecl; external libxcb_image;
procedure xcb_image_destroy(image: Pxcb_image_t); cdecl; external libxcb_image;
function xcb_image_get(conn: Pxcb_connection_t; draw: Txcb_drawable_t; x: Tint16_t; y: Tint16_t; width: Tuint16_t;
  height: Tuint16_t; plane_mask: Tuint32_t; format: Txcb_image_format_t): Pxcb_image_t; cdecl; external libxcb_image;
function xcb_image_put(conn: Pxcb_connection_t; draw: Txcb_drawable_t; gc: Txcb_gcontext_t; image: Pxcb_image_t; x: Tint16_t;
  y: Tint16_t; left_pad: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_image;
function xcb_image_native(c: Pxcb_connection_t; image: Pxcb_image_t; convert: longint): Pxcb_image_t; cdecl; external libxcb_image;
procedure xcb_image_put_pixel(image: Pxcb_image_t; x: Tuint32_t; y: Tuint32_t; pixel: Tuint32_t); cdecl; external libxcb_image;
function xcb_image_get_pixel(image: Pxcb_image_t; x: Tuint32_t; y: Tuint32_t): Tuint32_t; cdecl; external libxcb_image;
function xcb_image_convert(src: Pxcb_image_t; dst: Pxcb_image_t): Pxcb_image_t; cdecl; external libxcb_image;
function xcb_image_subimage(image: Pxcb_image_t; x: Tuint32_t; y: Tuint32_t; width: Tuint32_t; height: Tuint32_t;
  base: pointer; bytes: Tuint32_t; data: Puint8_t): Pxcb_image_t; cdecl; external libxcb_image;
function xcb_image_shm_put(conn: Pxcb_connection_t; draw: Txcb_drawable_t; gc: Txcb_gcontext_t; image: Pxcb_image_t; shminfo: Txcb_shm_segment_info_t;
  src_x: Tint16_t; src_y: Tint16_t; dest_x: Tint16_t; dest_y: Tint16_t; src_width: Tuint16_t;
  src_height: Tuint16_t; send_event: Tuint8_t): Pxcb_image_t; cdecl; external libxcb_image;
function xcb_image_shm_get(conn: Pxcb_connection_t; draw: Txcb_drawable_t; image: Pxcb_image_t; shminfo: Txcb_shm_segment_info_t; x: Tint16_t;
  y: Tint16_t; plane_mask: Tuint32_t): longint; cdecl; external libxcb_image;
function xcb_image_create_from_bitmap_data(data: Puint8_t; width: Tuint32_t; height: Tuint32_t): Pxcb_image_t; cdecl; external libxcb_image;
function xcb_create_pixmap_from_bitmap_data(display: Pxcb_connection_t; d: Txcb_drawable_t; data: Puint8_t; width: Tuint32_t; height: Tuint32_t;
  depth: Tuint32_t; fg: Tuint32_t; bg: Tuint32_t; gcp: Pxcb_gcontext_t): Txcb_pixmap_t; cdecl; external libxcb_image;

// === Konventiert am: 12-10-25 13:42:57 ===


implementation



end.
