unit fp_xcb_pixel;

interface

uses
  fp_xcb, fp_xcb_image, fp_xcb_bitops;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

procedure xcb_image_put_pixel_XY32M(image: Pxcb_image_t; x, y: Tuint32_t; pixel: integer);
procedure xcb_image_put_pixel_XY32L(image: Pxcb_image_t; x, y: Tuint32_t; pixel: integer);
function xcb_image_get_pixel_XY32M(image: Pxcb_image_t; x, y: Tuint32_t): integer;
function xcb_image_get_pixel_XY32L(image: Pxcb_image_t; x, y: Tuint32_t): integer;
procedure xcb_image_put_pixel_Z8(image: Pxcb_image_t; x, y: Tuint32_t; pixel: Tuint8_t);
function xcb_image_get_pixel_Z8(image: Pxcb_image_t; x, y: Tuint32_t): Tuint8_t;
procedure xcb_image_put_pixel_Z32M(image: Pxcb_image_t; x, y: Tuint32_t; pixel: Tuint32_t);
procedure xcb_image_put_pixel_Z32L(image: Pxcb_image_t; x, y: Tuint32_t; pixel: Tuint32_t);
function xcb_image_get_pixel_Z32M(image: Pxcb_image_t; x, y: Tuint32_t): Tuint32_t;
function xcb_image_get_pixel_Z32L(image: Pxcb_image_t; x, y: Tuint32_t): Tuint32_t;



// === Konventiert am: 12-10-25 13:39:39 ===


implementation

procedure xcb_image_put_pixel_XY32M(image: Pxcb_image_t; x, y: Tuint32_t; pixel: integer);
var
  unit_val: Tuint32_t;
  byte_val: Tuint32_t;
  bit: Tuint32_t;
  m: Tuint8_t;
  p: Tuint8_t;
  bp: pbyte;
begin
  unit_val := (x shr 3) and (not xcb_mask(2));
  byte_val := xcb_mask(2) - ((x shr 3) and xcb_mask(2));
  bit := xcb_mask(3) - (x and xcb_mask(3));
  m := 1 shl bit;
  p := pixel shl bit;
  bp := image^.data + (y * image^.stride) + (unit_val or byte_val);
  bp^ := (bp^ and (not m)) or p;
end;

procedure xcb_image_put_pixel_XY32L(image: Pxcb_image_t; x, y: Tuint32_t; pixel: integer);
var
  bit: Tuint32_t;
  m: Tuint8_t;
  p: Tuint8_t;
  bp: pbyte;
begin
  bit := x and xcb_mask(3);
  m := 1 shl bit;
  p := pixel shl bit;
  bp := image^.data + (y * image^.stride) + (x shr 3);
  bp^ := (bp^ and (not m)) or p;
end;

function xcb_image_get_pixel_XY32M(image: Pxcb_image_t; x, y: Tuint32_t): integer;
var
  unit_val: Tuint32_t;
  byte_val: Tuint32_t;
  bit: Tuint32_t;
  bp: pbyte;
begin
  unit_val := (x shr 3) and (not xcb_mask(2));
  byte_val := xcb_mask(2) - ((x shr 3) and xcb_mask(2));
  bit := xcb_mask(3) - (x and xcb_mask(3));
  bp := image^.data + (y * image^.stride) + (unit_val or byte_val);
  Result := (bp^ shr bit) and 1;
end;

function xcb_image_get_pixel_XY32L(image: Pxcb_image_t; x, y: Tuint32_t): integer;
var
  bit: Tuint32_t;
  bp: pbyte;
begin
  bit := x and xcb_mask(3);
  bp := image^.data + (y * image^.stride) + (x shr 3);
  Result := (bp^ shr bit) and 1;
end;

procedure xcb_image_put_pixel_Z8(image: Pxcb_image_t; x, y: Tuint32_t; pixel: Tuint8_t);
begin
  image^.data[x + y * image^.stride] := pixel;
end;

function xcb_image_get_pixel_Z8(image: Pxcb_image_t; x, y: Tuint32_t): Tuint8_t;
begin
  Result := image^.data[x + y * image^.stride];
end;

procedure xcb_image_put_pixel_Z32M(image: Pxcb_image_t; x, y: Tuint32_t; pixel: Tuint32_t);
var
  row: pbyte;
begin
  row := image^.data + (y * image^.stride);
  row[x << 2] := pixel shr 24;
  row[(x << 2) + 1] := pixel shr 16;
  row[(x << 2) + 2] := pixel shr 8;
  row[(x << 2) + 3] := pixel;
end;

procedure xcb_image_put_pixel_Z32L(image: Pxcb_image_t; x, y: Tuint32_t; pixel: Tuint32_t);
var
  row: pbyte;
begin
  row := image^.data + (y * image^.stride);

  row[x shl 2] := pixel;
  row[(x shl 2) + 1] := pixel shr 8;
  row[(x shl 2) + 2] := pixel shr 16;
  row[(x shl 2) + 3] := pixel shr 24;
end;

function xcb_image_get_pixel_Z32M(image: Pxcb_image_t; x, y: Tuint32_t): Tuint32_t;
var
  row: pbyte;
  pixel: Tuint32_t;
begin
  row := image^.data + (y * image^.stride);
  pixel := row[x shl 2] shl 24;
  pixel := pixel or (row[(x shl 2) + 1] shl 16);
  pixel := pixel or (row[(x shl 2) + 2] shl 8);
  Result := pixel or (row[(x shl 2) + 3]);
end;

function xcb_image_get_pixel_Z32L(image: Pxcb_image_t; x, y: Tuint32_t): Tuint32_t;
var
  row: pbyte;
  pixel: Tuint32_t;
begin
  row := image^.data + (y * image^.stride);
  pixel := row[x shl 2];
  pixel := pixel or (row[(x shl 2) + 1] shl 8);
  pixel := pixel or (row[(x shl 2) + 2] shl 16);
  Result := pixel or (row[(x shl 2) + 3] shl 24);
end;




end.
