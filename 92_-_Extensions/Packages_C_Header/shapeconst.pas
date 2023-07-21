
unit shapeconst;
interface

{
  Automatically converted by H2Pas 1.0.0 from shapeconst.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    shapeconst.h
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{***********************************************************

Copyright 1989, 1998  The Open Group

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

******************************************************* }
{$ifndef _SHAPECONST_H_}
{$define _SHAPECONST_H_}
{
 * Protocol requests constants and alignment values
 * These would really be in SHAPE's X.h and Xproto.h equivalents
  }

const
  SHAPENAME = 'SHAPE';  
{ current version numbers  }
  SHAPE_MAJOR_VERSION = 1;  
  SHAPE_MINOR_VERSION = 1;  
  ShapeSet = 0;  
  ShapeUnion = 1;  
  ShapeIntersect = 2;  
  ShapeSubtract = 3;  
  ShapeInvert = 4;  
  ShapeBounding = 0;  
  ShapeClip = 1;  
  ShapeInput = 2;  
  ShapeNotifyMask = 1 shl 0;  
  ShapeNotify = 0;  
  ShapeNumberEvents = ShapeNotify+1;  
{$endif}
{ _SHAPECONST_H_  }

implementation


end.
