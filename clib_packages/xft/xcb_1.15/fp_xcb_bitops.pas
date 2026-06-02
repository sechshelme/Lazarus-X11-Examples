unit fp_xcb_bitops;

interface

uses
  fp_xcb;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


function xcb_mask(n: Tuint32_t): Tuint32_t;
function xcb_popcount(x: Tuint32_t): Tuint32_t;
function xcb_roundup_2(base, pad: Tuint32_t): Tuint32_t;
function xcb_rounddown_2(base, pad: Tuint32_t): Tuint32_t;
function xcb_roundup(base, pad: Tuint32_t): Tuint32_t;
function xcb_rounddown(base, pad: Tuint32_t): Tuint32_t;
function xcb_bit_reverse(x: Tuint32_t; n: Tuint8_t): Tuint32_t;
function xcb_host_byte_order: Txcb_image_order_t;


// === Konventiert am: 12-10-25 13:16:17 ===


implementation

function xcb_mask(n: Tuint32_t): Tuint32_t;
begin
  if n = 32 then begin
    Result := not 0;
  end else begin
    Result := (1 shl n) - 1;
  end;
end;

function xcb_popcount(x: Tuint32_t): Tuint32_t;
const
  m1 = $55555555;
  m2 = $33333333;
  m4 = $0f0f0f0f;
begin
  x := x - ((x shr 1) and m1);
  x := (x and m2) + ((x shr 2) and m2);
  x := (x + (x shr 4)) and m4;
  x := x + (x shr 8);
  Result := (x + (x shr 16)) and $3f;
end;

function xcb_roundup_2(base, pad: Tuint32_t): Tuint32_t;
begin
  Result := (base + pad - 1) and (not pad);
end;

function xcb_rounddown_2(base, pad: Tuint32_t): Tuint32_t;
begin
  Result := base and (not pad);
end;

function xcb_roundup(base, pad: Tuint32_t): Tuint32_t;
var
  b: Tuint32_t;
begin
  b := base + pad - 1;
  if ((pad - 1) and pad) = 0 then begin
    Result := b and (not pad);
  end else begin
    Result := b - (b mod pad);
  end;
end;

function xcb_rounddown(base, pad: Tuint32_t): Tuint32_t;
begin
  if (((pad - 1) and pad) = 0) then begin
    Result := base and (not pad);
  end else begin
    Result := base - (base mod pad);
  end;
end;

function xcb_bit_reverse(x: Tuint32_t; n: Tuint8_t): Tuint32_t;
const
  m1 = $00ff00ff;
  m2 = $0f0f0f0f;
  m3 = $33333333;
  m4 = $55555555;
begin
  x := ((x shl 16) or (x shr 16));
  x := ((x and m1) shl 8) or ((x shr 8) and m1);
  x := ((x and m2) shl 4) or ((x shr 4) and m2);
  x := ((x and m3) shl 2) or ((x shr 2) and m3);
  x := ((x and m4) shl 1) or ((x shr 1) and m4);
  x := x shr (32 - n);
  Result := x;
end;

function xcb_host_byte_order: Txcb_image_order_t;
var
  endian_test: cardinal = $01020304;
  first_byte: byte absolute endian_test;
begin
  case first_byte of
    $01: begin
      Result := XCB_IMAGE_ORDER_MSB_FIRST;
    end;
    $04: begin
      Result := XCB_IMAGE_ORDER_LSB_FIRST;
    end;
    else begin
      Halt(1);
    end;
  end;
end;

end.
