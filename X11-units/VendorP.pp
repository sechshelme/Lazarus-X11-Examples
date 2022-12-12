
unit VendorP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/VendorP.h
  The following command line parameters were used:
    /usr/include/X11/VendorP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/VendorP.pp
}

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
      _VendorShellClassRec = record
          core_class : CoreClassPart;
          composite_class : CompositeClassPart;
          shell_class : ShellClassPart;
          wm_shell_class : WMShellClassPart;
          vendor_shell_class : VendorShellClassPart;
        end;
      VendorShellClassRec = _VendorShellClassRec;
(* error 
externalref VendorShellClassRec vendorShellClassRec;
 in declarator_list *)


      VendorShellPart = record
          vendor_specific : longint;
        end;

      VendorShellRec = record
          core : CorePart;
          composite : CompositePart;
          shell : ShellPart;
          wm : WMShellPart;
          vendor : VendorShellPart;
        end;
      VendorShellWidget = ^VendorShellRec;
{$endif}

(* error 
#endif  /* _XtVendorPrivate_h */

implementation


end.
