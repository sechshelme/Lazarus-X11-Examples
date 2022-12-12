
unit VendorEP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/VendorEP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/VendorEP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/VendorEP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _VendorEP_h}
{$define _VendorEP_h}  
{$include <X11/Xaw/XawImP.h>}

  type
    XawVendorShellExtClassPart = record
        extension : XtPointer;
      end;

    _VendorShellExtClassRec = record
        object_class : ObjectClassPart;
        vendor_shell_ext_class : XawVendorShellExtClassPart;
      end;
    XawVendorShellExtClassRec = _VendorShellExtClassRec;
{$ifndef OLDXAW}

{$endif}

  type
    XawVendorShellExtPart = record
        parent : Widget;
        im : XawImPart;
        ic : XawIcPart;
        pad : array[0..3] of XtPointer;
      end;

    XawVendorShellExtRec = record
        object : ObjectPart;
        vendor_ext : XawVendorShellExtPart;
      end;
    XawVendorShellExtWidget = ^XawVendorShellExtRec;
{$endif}


implementation


end.
