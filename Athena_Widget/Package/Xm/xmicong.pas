unit XmIconG;

interface

uses
  unixtype,
  x, xlib,
  XTIntrinsic,
  XmXm;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{ $XConsortium: IconG.h /main/5 1995/07/15 20:52:04 drk $  }
{
 * Motif
 *
 * Copyright (c) 1987-2012, The Open Group. All rights reserved.
 *
 * These libraries and programs are free software; you can
 * redistribute them and/or modify them under the terms of the GNU
 * Lesser General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option)
 * any later version.
 *
 * These libraries and programs are distributed in the hope that
 * they will be useful, but WITHOUT ANY WARRANTY; without even the
 * implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
 * PURPOSE. See the GNU Lesser General Public License for more
 * details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with these librararies and programs; if not, write
 * to the Free Software Foundation, Inc., 51 Franklin Street, Fifth
 * Floor, Boston, MA 02110-1301 USA
  }
{
 * HISTORY
  }
//{$include <Xm/Xm.h>}
{ Class record constants  }
  var
    xmIconGadgetClass : TWidgetClass;cvar;external libXm;

//type
//  PXmIconGadgetClass = ^TXmIconGadgetClass;
//  TXmIconGadgetClass = PXmIconGadgetClassRec;
//
//  PXmIconGadget = ^TXmIconGadget;
//  TXmIconGadget = PXmIconGadgetRec;

function XmIsIconGadget(w : TWidget) : TBoolean;

{ XmIsIconGadget  }
{*******    Public Function Declarations    ******* }

function XmCreateIconGadget(parent:TWidget; name:TString; arglist:TArgList; argcount:TCardinal):TWidget;cdecl;external libXm;

//function XmVaCreateIconGadget(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateIconGadget(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
//function XmVaCreateManagedIconGadget(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedIconGadget(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
{*******    End Public Function Declarations    ******* }

implementation

function XmIsIconGadget(w: TWidget): TBoolean;
begin
  XmIsIconGadget:=XtIsSubclass(w,xmIconGadgetClass);
end;

end.
