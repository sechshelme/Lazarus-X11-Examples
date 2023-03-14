
unit Grip;
interface

{
  Automatically converted by H2Pas 1.0.0 from Grip.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    Grip.h
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
PGripCallData  = ^GripCallData;
PGripCallDataRec  = ^GripCallDataRec;
PGripClassRec  = ^GripClassRec;
PGripRec  = ^GripRec;
PGripWidget  = ^GripWidget;
PGripWidgetClass  = ^GripWidgetClass;
PString  = ^String;
PXawGripCallData  = ^XawGripCallData;
PXawGripCallDataRec  = ^XawGripCallDataRec;
PXEvent  = ^XEvent;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{**********************************************************

Copyright 1987, 1988, 1998  The Open Group

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
{
 *  Grip.h - Public Definitions for Grip widget (used by VPane Widget)
 *
  }
{$ifndef _XawGrip_h}
{$define _XawGrip_h}
{$include <X11/Xaw/Simple.h>}
{ Resources:

 Name		     Class		RepType		Default Value
 ----		     -----		-------		-------------
 foreground	     Foreground		Pixel		XtDefaultForeground
 border		     BorderColor	Pixel		XtDefaultForeground
 borderWidth	     BorderWidth	Dimension	0
 callback	     Callback		Pointer		GripAction
 cursor		     Cursor		Cursor		None
 cursorName	     Cursor		String		NULL
 destroyCallback     Callback		Pointer		NULL
 height		     Height		Dimension	8
 mappedWhenManaged   MappedWhenManaged	Boolean		True
 pointerColor	     Foreground		Pixel		XtDefaultForeground
 pointerColorBackground Background	Pixel		XtDefaultBackground
 sensitive	     Sensitive		Boolean		True
 width		     Width		Dimension	8
 x		     Position		Position	0
 y		     Position		Position	0

 }

const
  XtNgripTranslations = 'gripTranslations';  
{ the event causing the GripAction  }
{ the TranslationTable params  }
{ count of params  }
type
  PXawGripCallData = ^TXawGripCallData;
  TXawGripCallData = record
      event : PXEvent;
      params : PString;
      num_params : TCardinal;
    end;
  TXawGripCallDataRec = TXawGripCallData;
  PXawGripCallDataRec = ^TXawGripCallDataRec;
  TGripCallDataRec = TXawGripCallData;
  PGripCallDataRec = ^TGripCallDataRec;
  TGripCallData = PXawGripCallData;
  PGripCallData = ^TGripCallData;
{ supported for R4 compatibility  }
{ Class Record Constant  }
  var
    gripWidgetClass : TWidgetClass;cvar;external;
type
  PGripWidgetClass = ^TGripWidgetClass;
  TGripWidgetClass = PGripClassRec;

  PGripWidget = ^TGripWidget;
  TGripWidget = PGripRec;
{$endif}
{ _XawGrip_h  }

implementation


end.
