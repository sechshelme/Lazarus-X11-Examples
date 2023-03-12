
unit SmeBSB;
interface

{
  Automatically converted by H2Pas 1.0.0 from SmeBSB.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    SmeBSB.h
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
PSmeBSBClassRec  = ^SmeBSBClassRec;
PSmeBSBObject  = ^SmeBSBObject;
PSmeBSBObjectClass  = ^SmeBSBObjectClass;
PSmeBSBRec  = ^SmeBSBRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{
 *
Copyright 1989, 1994, 1998  The Open Group

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
  }
{
 * SmeBSB.h - Public Header file for SmeBSB object.
 *
 * This is the public header file for the Athena BSB Sme object.
 * It is intended to be used with the simple menu widget.  This object
 * provides bitmap - string - bitmap style entries.
 *
 * Date:    April 3, 1989
 *
 * By:      Chris D. Peterson
 *          MIT X Consortium
 *          kit@expo.lcs.mit.edu
  }
{$ifndef _SmeBSB_h}
{$define _SmeBSB_h}
{$include <X11/Xmu/Converters.h>}
{$include <X11/Xaw/Sme.h>}
{ BSB Menu Entry Resources:

 Name		     Class		RepType		Default Value
 ----		     -----		-------		-------------
 callback            Callback           Callback        NULL
 destroyCallback     Callback		Pointer		NULL
 font                Font               XFontStruct *   XtDefaultFont
 foreground          Foreground         Pixel           XtDefaultForeground
 height		     Height		Dimension	0
 label               Label              String          Name of entry
 leftBitmap          LeftBitmap         Pixmap          None
 leftMargin          HorizontalMargins  Dimension       4
 menuName	     MenuName		String		NULL
 rightBitmap         RightBitmap        Pixmap          None
 rightMargin         HorizontalMargins  Dimension       4
 sensitive	     Sensitive		Boolean		True
 vertSpace           VertSpace          int             25
 width		     Width		Dimension	0
 x		     Position		Position	0
 y		     Position		Position	0

 }
type
  PSmeBSBObjectClass = ^TSmeBSBObjectClass;
  TSmeBSBObjectClass = PSmeBSBClassRec;

  PSmeBSBObject = ^TSmeBSBObject;
  TSmeBSBObject = PSmeBSBRec;
  var
    smeBSBObjectClass : TWidgetClass;cvar;external;

const
  XtNleftBitmap = 'leftBitmap';  
  XtNleftMargin = 'leftMargin';  
  XtNrightBitmap = 'rightBitmap';  
  XtNrightMargin = 'rightMargin';  
  XtNvertSpace = 'vertSpace';  
  XtNmenuName = 'menuName';  
  XtCMenuName = 'MenuName';  
{$ifndef XtNfontSet}

const
  XtNfontSet = 'fontSet';  
{$endif}
{$ifndef XtCFontSet}

const
  XtCFontSet = 'FontSet';  
{$endif}

const
  XtCLeftBitmap = 'LeftBitmap';  
  XtCHorizontalMargins = 'HorizontalMargins';  
  XtCRightBitmap = 'RightBitmap';  
  XtCVertSpace = 'VertSpace';  
{$endif}
{ _SmeBSB_h  }

implementation


end.
