unit XmBulletinB;

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
    xmBulletinBoardWidgetClass : TWidgetClass;cvar;external libXm;

//type
//  PXmBulletinBoardWidgetClass = ^TXmBulletinBoardWidgetClass;
//  TXmBulletinBoardWidgetClass = PXmBulletinBoardClassRec;
//
//  PXmBulletinBoardWidget = ^TXmBulletinBoardWidget;
//  TXmBulletinBoardWidget = PXmBulletinBoardRec;

function XmIsBulletinBoard(w : TWidget) : TBoolean;

{*******    Public Function Declarations    ******* }

function XmCreateBulletinBoard(p:TWidget; name:TString; args:TArgList; n:TCardinal):TWidget;cdecl;external libXm;
function XmCreateBulletinBoardDialog(ds_p:TWidget; name:TString; bb_args:TArgList; bb_n:TCardinal):TWidget;cdecl;external libXm;
{
 * Variable argument list functions
  }
//function XmVaCreateBulletinBoard(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateBulletinBoard(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
//function XmVaCreateManagedBulletinBoard(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedBulletinBoard(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
{*******    End Public Function Declarations    ******* }
implementation

function XmIsBulletinBoard(w: TWidget): TBoolean;
begin
  XmIsBulletinBoard:=XtIsSubclass(w,xmBulletinBoardWidgetClass);
end;


end.
