
unit Label;
interface

{
  Automatically converted by H2Pas 1.0.0 from Label.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    Label.h
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
PLabelClassRec  = ^LabelClassRec;
PLabelRec  = ^LabelRec;
PLabelWidget  = ^LabelWidget;
PLabelWidgetClass  = ^LabelWidgetClass;
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
{$ifndef _XawLabel_h}
{$define _XawLabel_h}
{
 * Label Widget
  }
{$include <X11/Xaw/Simple.h>}
{ Resources:

 Name		     Class		RepType		Default Value
 ----		     -----		-------		-------------
 background	     Background		Pixel		XtDefaultBackground
 bitmap		     Pixmap		Pixmap		None
 border		     BorderColor	Pixel		XtDefaultForeground
 borderWidth	     BorderWidth	Dimension	1
 cursor		     Cursor		Cursor		None
 cursorName	     Cursor		String		NULL
 destroyCallback     Callback		XtCallbackList	NULL
 encoding	     Encoding		UnsignedChar	XawTextEncoding8bit
 font		     Font		XFontStruct*	XtDefaultFont
 foreground	     Foreground		Pixel		XtDefaultForeground
 height		     Height		Dimension	text height
 insensitiveBorder   Insensitive	Pixmap		Gray
 internalHeight	     Height		Dimension	2
 internalWidth	     Width		Dimension	4
 justify	     Justify		XtJustify	XtJustifyCenter
 label		     Label		String		NULL
 leftBitmap	     LeftBitmap		Pixmap		None
 mappedWhenManaged   MappedWhenManaged	Boolean		True
 pointerColor	     Foreground		Pixel		XtDefaultForeground
 pointerColorBackground Background	Pixel		XtDefaultBackground
 resize		     Resize		Boolean		True
 sensitive	     Sensitive		Boolean		True
 width		     Width		Dimension	text width
 x		     Position		Position	0
 y		     Position		Position	0

 }

const
  XawTextEncoding8bit = 0;  
  XawTextEncodingChar2b = 1;  
  XtNleftBitmap = 'leftBitmap';  
  XtCLeftBitmap = 'LeftBitmap';  
  XtNencoding = 'encoding';  
  XtCEncoding = 'Encoding';  
{$ifndef XtNfontSet}

const
  XtNfontSet = 'fontSet';  
{$endif}
{$ifndef XtCFontSet}

const
  XtCFontSet = 'FontSet';  
{$endif}
{$ifndef _XtStringDefs_h_}

const
  XtNbitmap = 'bitmap';  
  XtNforeground = 'foreground';  
  XtNlabel = 'label';  
  XtNfont = 'font';  
  XtNinternalWidth = 'internalWidth';  
  XtNinternalHeight = 'internalHeight';  
  XtNresize = 'resize';  
  XtCResize = 'Resize';  
  XtCBitmap = 'Bitmap';  
{$endif}
{$ifndef XtNlabelX}

const
  XtNlabelX = 'labelX';  
{$endif}
{$ifndef XtNlabelY}

const
  XtNlabelY = 'labelY';  
{$endif}
{ Class record constants  }
  var
    labelWidgetClass : TWidgetClass;cvar;external;
type
  PLabelWidgetClass = ^TLabelWidgetClass;
  TLabelWidgetClass = PLabelClassRec;

  PLabelWidget = ^TLabelWidget;
  TLabelWidget = PLabelRec;
{$endif}
{ _XawLabel_h  }

implementation


end.
