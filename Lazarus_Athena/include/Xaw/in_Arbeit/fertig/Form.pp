
unit Form;
interface

{
  Automatically converted by H2Pas 1.0.0 from Form.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    Form.h
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
PFormClassRec  = ^FormClassRec;
PFormRec  = ^FormRec;
PFormWidget  = ^FormWidget;
PFormWidgetClass  = ^FormWidgetClass;
PXawEdgeType  = ^XawEdgeType;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{**********************************************************

Copyright 1987, 1988, 1994, 1998  The Open Group

Permission to use, copy, modify, distribute, and sell this software and its
documentation for any purpose is hereby granted without fee, provided that
the above copyright notice appear in all copies and that both that
copyright notice and this permission notice appear in supporting
documentation.

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
OPEN GROUP BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN
AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Except as contained in this notice, the name of The Open Group shall not be
used in advertising or otherwise to promote the sale, use or other dealings
in this Software without prior written authorization from The Open Group.


Copyright 1987, 1988 by Digital Equipment Corporation, Maynard, Massachusetts.

                        All Rights Reserved

Permission to use, copy, modify, and distribute this software and its
documentation for any purpose and without fee is hereby granted,
provided that the above copyright notice appear in all copies and that
both that copyright notice and this permission notice appear in
supporting documentation, and that the name of Digital not be
used in advertising or publicity pertaining to distribution of the
software without specific, written prior permission.

DIGITAL DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING
ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT SHALL
DIGITAL BE LIABLE FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR
ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS,
WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,
ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS
SOFTWARE.

***************************************************************** }
{$ifndef _XawForm_h}
{$define _XawForm_h}
{$include <X11/Intrinsic.h>}
{ Resources:

 Name		     Class		RepType		Default Value
 ----		     -----		-------		-------------
 background	     Background		Pixel		XtDefaultBackground
 border		     BorderColor	Pixel		XtDefaultForeground
 borderWidth	     BorderWidth	Dimension	1
 defaultDistance     Thickness		int		4
 destroyCallback     Callback		Pointer		NULL
 displayList	     DisplayList	XawDisplayList*	NULL
 height		     Height		Dimension	computed at realize
 mappedWhenManaged   MappedWhenManaged	Boolean		True
 sensitive	     Sensitive		Boolean		True
 width		     Width		Dimension	computed at realize
 x		     Position		Position	0
 y		     Position		Position	0

 }
{ Constraint parameters:

 Name		     Class		RepType		Default Value
 ----		     -----		-------		-------------
 bottom		     Edge		XtEdgeType	XtRubber
 fromHoriz	     Widget		Widget		(left edge of form)
 fromVert	     Widget		Widget		(top of form)
 horizDistance	     Thickness		int		defaultDistance
 left		     Edge		XtEdgeType	XtRubber
 resizable	     Boolean		Boolean		False
 right		     Edge		XtEdgeType	XtRubber
 top		     Edge		XtEdgeType	XtRubber
 vertDistance	     Thickness		int		defaultDistance

 }
{$ifndef _XtStringDefs_h_}

const
  XtNtop = 'top';  
  XtRWidget = 'Widget';  
{$endif}

const
  XtNdefaultDistance = 'defaultDistance';  
  XtNbottom = 'bottom';  
  XtNleft = 'left';  
  XtNright = 'right';  
  XtNfromHoriz = 'fromHoriz';  
  XtNfromVert = 'fromVert';  
  XtNhorizDistance = 'horizDistance';  
  XtNvertDistance = 'vertDistance';  
  XtNresizable = 'resizable';  
  XtCEdge = 'Edge';  
  XtCWidget = 'Widget';  
{ Keep this edge a constant distance from
				   the top of the form  }
{ Keep this edge a constant distance from
				   the bottom of the form  }
{ Keep this edge a constant distance from
				   the left of the form  }
{ Keep this edge a constant distance from
				   the right of the form  }
{ Keep this edge a proportional distance
				   from the edges of the form  }
type
  PXawEdgeType = ^TXawEdgeType;
  TXawEdgeType =  Longint;
  Const
    XawChainTop = 0;
    XawChainBottom = 1;
    XawChainLeft = 2;
    XawChainRight = 3;
    XawRubber = 4;
;
  XtEdgeType = XawEdgeType;  
  XtChainTop = XawChainTop;  
  XtChainBottom = XawChainBottom;  
  XtChainLeft = XawChainLeft;  
  XtChainRight = XawChainRight;  
  XtRubber = XawRubber;  
  XtEchainLeft = 'chainLeft';  
  XtEchainRight = 'chainRight';  
  XtEchainTop = 'chainTop';  
  XtEchainBottom = 'chainBottom';  
  XtErubber = 'rubber';  
{$ifndef OLDXAW}
{$ifndef XawNdisplayList}

const
  XawNdisplayList = 'displayList';  
{$endif}
{$ifndef XawCDisplayList}

const
  XawCDisplayList = 'DisplayList';  
{$endif}
{$ifndef XawRDisplayList}

const
  XawRDisplayList = 'XawDisplayList';  
{$endif}
{$endif}
type
  PFormWidgetClass = ^TFormWidgetClass;
  TFormWidgetClass = PFormClassRec;

  PFormWidget = ^TFormWidget;
  TFormWidget = PFormRec;
  var
    formWidgetClass : TWidgetClass;cvar;external;
{_XFUNCPROTOBEGIN }
{#if NeedWidePrototypes }
{ Bool		do_layout }
{#else }
{#endif }

procedure XawFormDoLayout(w:TWidget; do_layout:TBoolean);cdecl;external;
{_XFUNCPROTOEND }
{$endif}
{ _XawForm_h  }

implementation


end.
