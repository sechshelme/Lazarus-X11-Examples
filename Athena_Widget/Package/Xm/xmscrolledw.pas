unit XmScrolledW;

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

function XmIsScrolledWindow(w : TWidget) : TBoolean;

{ XmIsScrolledWindow  }
  var
    xmScrolledWindowWidgetClass : TWidgetClass;cvar;external libXm;


    {*******    Public Function Declarations    ******* }

procedure XmScrolledWindowSetAreas(w:TWidget; hscroll:TWidget; vscroll:TWidget; wregion:TWidget);cdecl;external libXm;
function XmCreateScrolledWindow(parent:TWidget; name:Pchar; args:TArgList; argCount:TCardinal):TWidget;cdecl;external libXm;
procedure XmScrollVisible(scrw:TWidget; wid:TWidget; hor_margin:TDimension; ver_margin:TDimension);cdecl;external libXm;
{
 * Variable argument list functions
  }
// function XmVaCreateScrolledWindow(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateScrolledWindow(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
//function XmVaCreateManagedScrolledWindow(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedScrolledWindow(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
{*******    End Public Function Declarations    ******* }

implementation

function XmIsScrolledWindow(w: TWidget): TBoolean;
begin
  XmIsScrolledWindow:=XtIsSubclass(w,xmScrolledWindowWidgetClass);
end;


end.
