
unit Sme;
interface

{
  Automatically converted by H2Pas 1.0.0 from Sme.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    Sme.h
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
PSmeClassRec  = ^SmeClassRec;
PSmeObject  = ^SmeObject;
PSmeObjectClass  = ^SmeObjectClass;
PSmeRec  = ^SmeRec;
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
 * This is the public header file for the Athena Sme object.
 * It is intended to be used with the simple menu widget.
 *
 * Date:    April 3, 1989
 *
 * By:      Chris D. Peterson
 *          MIT X Consortium
 *          kit@expo.lcs.mit.edu
  }
{$ifndef _Sme_h}
{$define _Sme_h}
{$include <X11/Intrinsic.h>}
{$include <X11/RectObj.h>}
{ Resources:

 Name		     Class		RepType		Default Value
 ----		     -----		-------		-------------
 callback            Callback		Pointer		NULL
 destroyCallback     Callback		Pointer		NULL
 height		     Height		Dimension	0
 sensitive	     Sensitive		Boolean		True
 width		     Width		Dimension	0
 x		     Position		Position	0
 y		     Position		Position	0

 }
{$ifndef XtCInternational}

const
  XtCInternational = 'International';  
{$endif}
{$ifndef XtNinternational}

const
  XtNinternational = 'international';  
{$endif}
type
  PSmeObjectClass = ^TSmeObjectClass;
  TSmeObjectClass = PSmeClassRec;

  PSmeObject = ^TSmeObject;
  TSmeObject = PSmeRec;
  var
    smeObjectClass : TWidgetClass;cvar;external;
{$endif}
{ _Sme_h  }

implementation


end.
