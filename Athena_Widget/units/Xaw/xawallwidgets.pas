unit XawAllWidgets;

interface

uses
XmuWidgetNode;

const
  libXmu = 'libXmu.so';

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


// {$include <X11/Xmu/WidgetNode.h>}
{
 * This file matches the generated AllWidgets.c
  }
  var
    XawWidgetArray : PXmuWidgetNode;cvar;external libXmu;
    XawWidgetCount : longint;cvar;external libXmu;

implementation

end.
