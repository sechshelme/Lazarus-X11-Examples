unit XmScrollBar;

interface

uses
  XTIntrinsic;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

//{$include <Xm/Xm.h>}

{ C++ extern C conditionnal removed }
{  ScrollBar Widget   }
  var
    xmScrollBarWidgetClass : TWidgetClass;cvar;external libXm;

//type
//  PXmScrollBarWidgetClass = ^TXmScrollBarWidgetClass;
//  TXmScrollBarWidgetClass = PXmScrollBarClassRec;
//
//  PXmScrollBarWidget = ^TXmScrollBarWidget;
//  TXmScrollBarWidget = PXmScrollBarRec;

function XmIsScrollBar(w : TWidget) : TBoolean;

{ XmIsScrollBar  }
{*******    Public Function Declarations    ******* }

function XmCreateScrollBar(parent:TWidget; name:Pchar; arglist:TArgList; argcount:TCardinal):TWidget;cdecl;external libXm;
procedure XmScrollBarGetValues(w:TWidget; value:Plongint; slider_size:Plongint; increment:Plongint; page_increment:Plongint);cdecl;external libXm;
{#if NeedWidePrototypes }
{                        int notify) ; }
{#else }
procedure XmScrollBarSetValues(w:TWidget; value:longint; slider_size:longint; increment:longint; page_increment:longint; 
            notify:TBoolean);cdecl;external libXm;
{#endif /* NeedWidePrototypes */ }
{
 * Variable argument list functions
  }
//function XmVaCreateScrollBar(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateScrollBar(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
//function XmVaCreateManagedScrollBar(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedScrollBar(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
{*******    End Public Function Declarations    ******* }

{ DON'T ADD ANYTHING AFTER THIS #endif  }

implementation

function XmIsScrollBar(w: TWidget): TBoolean;
begin
  XmIsScrollBar:=XtIsSubclass(w,xmScrollBarWidgetClass);
end;

end.
