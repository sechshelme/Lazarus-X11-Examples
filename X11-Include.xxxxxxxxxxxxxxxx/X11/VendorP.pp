
unit VendorP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/VendorP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/VendorP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/VendorP.pp
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
    PVendorShellPart  = ^VendorShellPart;
    PVendorShellRec  = ^VendorShellRec;
    PVendorShellWidget  = ^VendorShellWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef  _XtVendorPrivate_h}
{$define _XtVendorPrivate_h}
{$include <X11/Vendor.h>}

(* error 
typedef struct {
in declaration at line 73 *)

(* error 
} VendorShellClassPart;
in declaration at line 74 *)
    type
      PVendorShellClassRec = ^TVendorShellClassRec;
      TVendorShellClassRec = record
          core_class : TCoreClassPart;
          composite_class : TCompositeClassPart;
          shell_class : TShellClassPart;
          wm_shell_class : TWMShellClassPart;
          vendor_shell_class : TVendorShellClassPart;
        end;
(* error 
externalref VendorShellClassRec vendorShellClassRec;
 in declarator_list *)


      PVendorShellPart = ^TVendorShellPart;
      TVendorShellPart = record
          vendor_specific : longint;
        end;

      PVendorShellRec = ^TVendorShellRec;
      TVendorShellRec = record
          core : TCorePart;
          composite : TCompositePart;
          shell : TShellPart;
          wm : TWMShellPart;
          vendor : TVendorShellPart;
        end;
      TVendorShellWidget = PVendorShellRec;
      PVendorShellWidget = ^TVendorShellWidget;
{$endif}

(* error 
#endif  /* _XtVendorPrivate_h */

implementation


end.
