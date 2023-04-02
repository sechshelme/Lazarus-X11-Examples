unit XmIconH;

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
  var
    xmIconHeaderClass : TWidgetClass;cvar;external libXm;

//type
//  PXmIconHeaderClass = ^TXmIconHeaderClass;
//  TXmIconHeaderClass = PXmIconHeaderClassRec;
//
//  PXmIconHeader = ^TXmIconHeader;
//  TXmIconHeader = PXmIconHeaderRec;

function XmIsIconHeader(w : TWidget) : TBoolean;

{*******    Public Function Declarations    ******* }

function XmCreateIconHeader(parent:TWidget; name:TString; arglist:TArgList; argcount:TCardinal):TWidget;cdecl;external libXm;
{*******    End Public Function Declarations    ******* }

implementation

function XmIsIconHeader(w: TWidget): TBoolean;
begin
  XmIsIconHeader:=XtIsSubclass(w,xmIconHeaderClass);
end;

end.
