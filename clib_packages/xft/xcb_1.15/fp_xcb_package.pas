{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit fp_xcb_package;

{$warn 5023 off : no warning about unused units}
interface

uses
  fp_xcb, fp_composite, fp_damage, fp_dpms, fp_dri2, fp_dri3, fp_glx, 
  fp_present, fp_randr, fp_record, fp_render, fp_res, fp_screensaver, 
  fp_shape, fp_shm, fp_sync, fp_xcb_bitops, fp_xcb_cursor, fp_xcb_ewmh, 
  fp_xcb_icccm, fp_xcb_image, fp_xcb_keysyms, fp_xcb_pixel, fp_xcb_renderutil, 
  fp_xcb_util, fp_xcb_xrm, fp_xf86dri, fp_xfixes, fp_xinerama, fp_xinput, 
  fp_xkb, fp_xtest, fp_xv, fp_xvmc, LazarusPackageIntf;

implementation

procedure Register;
begin
end;

initialization
  RegisterPackage('fp_xcb_package', @Register);
end.
