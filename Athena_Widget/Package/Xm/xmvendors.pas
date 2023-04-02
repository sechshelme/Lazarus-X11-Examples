unit XmVendors;

interface

uses
  unixtype,
  x, xlib,
  XTIntrinsic,
  XmXm;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <Xm/Xm.h>}

function XmIsVendorShell(w : TWidget) : TBoolean;

{ XmIsVendorShell  }
//type
//  PXmVendorShellWidget = ^TXmVendorShellWidget;
//  TXmVendorShellWidget = PXmVendorShellRec;
//
//  PXmVendorShellWidgetClass = ^TXmVendorShellWidgetClass;
//  TXmVendorShellWidgetClass = PXmVendorShellClassRec;

  var
    vendorShellWidgetClass : TWidgetClass;cvar;external libXm;
{*******    Public Function Declarations    ******* }

function XmIsMotifWMRunning(shell:TWidget):TBoolean;cdecl;external libXm;
function XmToolTipGetLabel(wid:TWidget):TWidget;cdecl;external libXm;
{*******    End Public Function Declarations    ******* }

implementation

function XmIsVendorShell(w: TWidget): TBoolean;
begin
  XmIsVendorShell:=XtIsSubclass(w,vendorShellWidgetClass);
end;

end.
