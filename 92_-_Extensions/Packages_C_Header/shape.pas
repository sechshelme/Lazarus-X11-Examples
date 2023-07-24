unit shape;

interface

uses
  x, xlib, xutil, render;

  {$LinkLib Xext}

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

type
  PXShapeEvent = ^TXShapeEvent;

  TXShapeEvent = record
    _type: longint;
    serial: dword;
    send_event: TBool;
    display: PDisplay;
    window: TWindow;
    kind: longint;
    x: longint;
    y: longint;
    Width: dword;
    Height: dword;
    time: TTime;
    shaped: TBool;
  end;

  { display  }{ event_base  }{ error_base  }

function XShapeQueryExtension(para1: PDisplay; para2: Plongint; para3: Plongint): TBool; cdecl; external;
{ display  }{ major_version  }{ minor_version  }
function XShapeQueryVersion(para1: PDisplay; para2: Plongint; para3: Plongint): TStatus; cdecl; external;
{ display  }{ dest  }{ dest_kind  }{ x_off  }{ y_off  }{ region  }{ op  }
procedure XShapeCombineRegion(para1: PDisplay; para2: TWindow; para3: longint; para4: longint; para5: longint;
  para6: TRegion; para7: longint); cdecl; external;
{ display  }{ dest  }{ dest_kind  }{ x_off  }{ y_off  }{ rectangles  }{ n_rects  }{ op  }{ ordering  }
procedure XShapeCombineRectangles(para1: PDisplay; para2: TWindow; para3: longint; para4: longint; para5: longint;
  para6: PXRectangle; para7: longint; para8: longint; para9: longint); cdecl; external;
{ display  }{ dest  }{ dest_kind  }{ x_off  }{ y_off  }{ src  }{ op  }
procedure XShapeCombineMask(para1: PDisplay; para2: TWindow; para3: longint; para4: longint; para5: longint;
  para6: TPixmap; para7: longint); cdecl; external;
{ display  }{ dest  }{ dest_kind  }{ x_off  }{ y_off  }{ src  }{ src_kind  }{ op  }
procedure XShapeCombineShape(para1: PDisplay; para2: TWindow; para3: longint; para4: longint; para5: longint;
  para6: TWindow; para7: longint; para8: longint); cdecl; external;
{ display  }{ dest  }{ dest_kind  }{ x_off  }{ y_off  }
procedure XShapeOffsetShape(para1: PDisplay; para2: TWindow; para3: longint; para4: longint; para5: longint); cdecl; external;
{ display  }{ window  }{ bounding_shaped  }{ x_bounding  }{ y_bounding  }{ w_bounding  }{ h_bounding  }{ clip_shaped  }{ x_clip  }{ y_clip  }{ w_clip  }{ h_clip  }
function XShapeQueryExtents(para1: PDisplay; para2: TWindow; para3: PBool; para4: Plongint; para5: Plongint;
  para6: Pdword; para7: Pdword; para8: PBool; para9: Plongint; para10: Plongint;
  para11: Pdword; para12: Pdword): TStatus; cdecl; external;
{ display  }{ window  }{ mask  }
procedure XShapeSelectInput(para1: PDisplay; para2: TWindow; para3: dword); cdecl; external;
{ display  }{ window  }
function XShapeInputSelected(para1: PDisplay; para2: TWindow): dword; cdecl; external;
{ display  }{ window  }{ kind  }{ count  }{ ordering  }
function XShapeGetRectangles(para1: PDisplay; para2: TWindow; para3: longint; para4: Plongint; para5: Plongint): PXRectangle; cdecl; external;

implementation


end.
