unit XmDragOverS;

interface

uses
  unixtype,
  x, xlib,
  XTIntrinsic,
  XmXm;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

//{$include <Xm/Xm.h>}
//{$include <Xm/DragC.h>}
//{$include <Xm/DragIcon.h>}

{**********************************************************************
 *
 * DragOverShell Widget
 *
 ********************************************************************** }
{ Class record constants  }
//type
//  PXmDragOverShellWidget = ^TXmDragOverShellWidget;
//  TXmDragOverShellWidget = PXmDragOverShellRec;
//
//  PXmDragOverShellWidgetClass = ^TXmDragOverShellWidgetClass;
//  TXmDragOverShellWidgetClass = PXmDragOverShellClassRec;
  var
    xmDragOverShellWidgetClass : TWidgetClass;cvar;external libXm;

implementation

end.
