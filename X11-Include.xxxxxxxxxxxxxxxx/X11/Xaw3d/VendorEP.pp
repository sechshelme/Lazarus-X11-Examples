
unit VendorEP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/VendorEP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/VendorEP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/VendorEP.pp
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
PVendorShellExtClassRec  = ^VendorShellExtClassRec;
PXawVendorShellExtClassPart  = ^XawVendorShellExtClassPart;
PXawVendorShellExtClassRec  = ^XawVendorShellExtClassRec;
PXawVendorShellExtPart  = ^XawVendorShellExtPart;
PXawVendorShellExtRec  = ^XawVendorShellExtRec;
PXawVendorShellExtWidget  = ^XawVendorShellExtWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _VendorEP_h}
{$define _VendorEP_h}
{$include <X11/Xaw3d/XawImP.h>}
type
  PXawVendorShellExtClassPart = ^TXawVendorShellExtClassPart;
  TXawVendorShellExtClassPart = record
      extension : TXtPointer;
    end;

  PVendorShellExtClassRec = ^TVendorShellExtClassRec;
  TVendorShellExtClassRec = record
      object_class : TObjectClassPart;
      vendor_shell_ext_class : TXawVendorShellExtClassPart;
    end;
  TXawVendorShellExtClassRec = TVendorShellExtClassRec;
  PXawVendorShellExtClassRec = ^TXawVendorShellExtClassRec;

  PXawVendorShellExtPart = ^TXawVendorShellExtPart;
  TXawVendorShellExtPart = record
      parent : TWidget;
      im : TXawImPart;
      ic : TXawIcPart;
    end;

  PXawVendorShellExtRec = ^TXawVendorShellExtRec;
  TXawVendorShellExtRec = record
      object : TObjectPart;
      vendor_ext : TXawVendorShellExtPart;
    end;
  TXawVendorShellExtWidget = PXawVendorShellExtRec;
  PXawVendorShellExtWidget = ^TXawVendorShellExtWidget;
{$endif}


implementation


end.
