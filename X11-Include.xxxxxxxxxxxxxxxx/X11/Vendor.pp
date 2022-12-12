
unit Vendor;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Vendor.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Vendor.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Vendor.pp
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
PVendorShellClassRec  = ^VendorShellClassRec;
PVendorShellWidgetClass  = ^VendorShellWidgetClass;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XtVendor_h}
{$define _XtVendor_h}
{$include <X11/Intrinsic.h>}


type
  PVendorShellWidgetClass = ^TVendorShellWidgetClass;
  TVendorShellWidgetClass = PVendorShellClassRec;
(* error 
externalref WidgetClass vendorShellWidgetClass;
 in declarator_list *)
{$endif}


(* error 
/* DON'T ADD STUFF AFTER THIS #endif */

implementation


end.
