
unit Simple;
interface

{
  Automatically converted by H2Pas 1.0.0 from Simple.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    Simple.h
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
PSimpleClassRec  = ^SimpleClassRec;
PSimpleRec  = ^SimpleRec;
PSimpleWidget  = ^SimpleWidget;
PSimpleWidgetClass  = ^SimpleWidgetClass;
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
{$ifndef _Simple_h}
{$define _Simple_h}
{$include <X11/Xmu/Converters.h>}
{ Resources:

 Name		     Class		RepType		Default Value
 ----		     -----		-------		-------------
 background	     Background		Pixel		XtDefaultBackground
 border		     BorderColor	Pixel		XtDefaultForeground
 borderWidth	     BorderWidth	Dimension	1
 cursor		     Cursor		Cursor		None
 cursorName	     Cursor		String		NULL
 destroyCallback     Callback		Pointer		NULL
 displayList	     DisplayList	XawDisplayList*	NULL
 height		     Height		Dimension	0
 insensitiveBorder   Insensitive	Pixmap		Gray
 mappedWhenManaged   MappedWhenManaged	Boolean		True
 pointerColor        Foreground         Pixel           XtDefaultForeground
 pointerColorBackground Background      Pixel           XtDefaultBackground
 sensitive	     Sensitive		Boolean		True
 tip		     Tip		String		NULL
 width		     Width		Dimension	0
 x		     Position		Position	0
 y		     Position		Position	0

 }

const
  XtNcursor = 'cursor';  
  XtNcursorName = 'cursorName';  
  XtNinsensitiveBorder = 'insensitiveBorder';  
  XtCInsensitive = 'Insensitive';  
{$ifndef XtCInternational}

const
  XtCInternational = 'International';  
{$endif}
{$ifndef XtNinternational}

const
  XtNinternational = 'international';  
{$endif}
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

const
  XtNtip = 'tip';  
  XtCTip = 'Tip';  
{$endif}
{ OLDXAW  }
type
  PSimpleWidgetClass = ^TSimpleWidgetClass;
  TSimpleWidgetClass = PSimpleClassRec;

  PSimpleWidget = ^TSimpleWidget;
  TSimpleWidget = PSimpleRec;
  var
    simpleWidgetClass : TWidgetClass;cvar;external;
{$endif}
{ _Simple_h  }

implementation


end.
