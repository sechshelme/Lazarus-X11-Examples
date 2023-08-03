unit Xfixes;

interface

uses
  ctypes, x, xlib, xutil, xfixeswire;

  {$LinkLib Xfixes}

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

{
 * Copyright (c) 2006, Oracle and/or its affiliates. All rights reserved.
 * Copyright 2011, 2021 Red Hat, Inc.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice (including the next
 * paragraph) shall be included in all copies or substantial portions of the
 * Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
 * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
  }
{
 * Copyright © 2002 Keith Packard, member of The XFree86 Project, Inc.
 *
 * Permission to use, copy, modify, distribute, and sell this software and its
 * documentation for any purpose is hereby granted without fee, provided that
 * the above copyright notice appear in all copies and that both that
 * copyright notice and this permission notice appear in supporting
 * documentation, and that the name of Keith Packard not be used in
 * advertising or publicity pertaining to distribution of the software without
 * specific, written prior permission.  Keith Packard makes no
 * representations about the suitability of this software for any purpose.  It
 * is provided "as is" without express or implied warranty.
 *
 * KEITH PACKARD DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE,
 * INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO
 * EVENT SHALL KEITH PACKARD BE LIABLE FOR ANY SPECIAL, INDIRECT OR
 * CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE,
 * DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER
 * TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
 * PERFORMANCE OF THIS SOFTWARE.
  }

const
  XFIXES_REVISION = 1;
  XFIXES_VERSION = ((XFIXES_MAJOR * 10000) + (XFIXES_MINOR * 100)) + XFIXES_REVISION;

type
  PXFixesSelectionNotifyEvent = ^TXFixesSelectionNotifyEvent;

  TXFixesSelectionNotifyEvent = record
    _type: longint;
    serial: dword;
    send_event: TBool;
    display: PDisplay;
    window: TWindow;
    subtype: longint;
    owner: TWindow;
    selection: TAtom;
    timestamp: TTime;
    selection_timestamp: TTime;
  end;
  { event base  }

  PXFixesCursorNotifyEvent = ^TXFixesCursorNotifyEvent;

  TXFixesCursorNotifyEvent = record
    _type: longint;
    serial: dword;
    send_event: TBool;
    display: PDisplay;
    window: TWindow;
    subtype: longint;
    cursor_serial: dword;
    timestamp: TTime;
    cursor_name: TAtom;
  end;

type
  PXFixesCursorImage = ^TXFixesCursorImage;

  TXFixesCursorImage = record
    x: smallint;
    y: smallint;
    Width: word;
    Height: word;
    xhot: word;
    yhot: word;
    cursor_serial: dword;
    pixels: Pdword;
    atom: TAtom;
    Name: PChar;
  end;

type
  PXserverRegion = ^TXserverRegion;
  TXserverRegion = TXID;

  PXFixesCursorImageAndName = ^TXFixesCursorImageAndName;

  TXFixesCursorImageAndName = record
    x: smallint;
    y: smallint;
    Width: word;
    Height: word;
    xhot: word;
    yhot: word;
    cursor_serial: dword;
    pixels: Pdword;
    atom: TAtom;
    Name: PChar;
  end;

function XFixesQueryExtension(dpy: PDisplay; event_base_return: Plongint; error_base_return: Plongint): TBool; cdecl; external;
function XFixesQueryVersion(dpy: PDisplay; major_version_return: Plongint; minor_version_return: Plongint): TStatus; cdecl; external;
function XFixesVersion: longint; cdecl; external;
procedure XFixesChangeSaveSet(dpy: PDisplay; win: TWindow; mode: longint; target: longint; map: longint); cdecl; external;
procedure XFixesSelectSelectionInput(dpy: PDisplay; win: TWindow; selection: TAtom; eventMask: dword); cdecl; external;
procedure XFixesSelectCursorInput(dpy: PDisplay; win: TWindow; eventMask: dword); cdecl; external;
function XFixesGetCursorImage(dpy: PDisplay): PXFixesCursorImage; cdecl; external;

function XFixesCreateRegion(dpy: PDisplay; rectangles: PXRectangle; nrectangles: longint): TXserverRegion; cdecl; external;
function XFixesCreateRegionFromBitmap(dpy: PDisplay; bitmap: TPixmap): TXserverRegion; cdecl; external;
function XFixesCreateRegionFromWindow(dpy: PDisplay; window: TWindow; kind: longint): TXserverRegion; cdecl; external;
function XFixesCreateRegionFromGC(dpy: PDisplay; gc: TGC): TXserverRegion; cdecl; external;
function XFixesCreateRegionFromPicture(dpy: PDisplay; picture: TXID): TXserverRegion; cdecl; external;
procedure XFixesDestroyRegion(dpy: PDisplay; region: TXserverRegion); cdecl; external;
procedure XFixesSetRegion(dpy: PDisplay; region: TXserverRegion; rectangles: PXRectangle; nrectangles: longint); cdecl; external;
procedure XFixesCopyRegion(dpy: PDisplay; dst: TXserverRegion; src: TXserverRegion); cdecl; external;
procedure XFixesUnionRegion(dpy: PDisplay; dst: TXserverRegion; src1: TXserverRegion; src2: TXserverRegion); cdecl; external;
procedure XFixesIntersectRegion(dpy: PDisplay; dst: TXserverRegion; src1: TXserverRegion; src2: TXserverRegion); cdecl; external;
procedure XFixesSubtractRegion(dpy: PDisplay; dst: TXserverRegion; src1: TXserverRegion; src2: TXserverRegion); cdecl; external;
procedure XFixesInvertRegion(dpy: PDisplay; dst: TXserverRegion; rect: PXRectangle; src: TXserverRegion); cdecl; external;
procedure XFixesTranslateRegion(dpy: PDisplay; region: TXserverRegion; dx: longint; dy: longint); cdecl; external;
procedure XFixesRegionExtents(dpy: PDisplay; dst: TXserverRegion; src: TXserverRegion); cdecl; external;
function XFixesFetchRegion(dpy: PDisplay; region: TXserverRegion; nrectanglesRet: Plongint): PXRectangle; cdecl; external;
function XFixesFetchRegionAndBounds(dpy: PDisplay; region: TXserverRegion; nrectanglesRet: Plongint; bounds: PXRectangle): PXRectangle; cdecl; external;
procedure XFixesSetGCClipRegion(dpy: PDisplay; gc: TGC; clip_x_origin: longint; clip_y_origin: longint; region: TXserverRegion); cdecl; external;
procedure XFixesSetWindowShapeRegion(dpy: PDisplay; win: TWindow; shape_kind: longint; x_off: longint; y_off: longint;
  region: TXserverRegion); cdecl; external;
procedure XFixesSetPictureClipRegion(dpy: PDisplay; picture: TXID; clip_x_origin: longint; clip_y_origin: longint; region: TXserverRegion); cdecl; external;
(* Const before type ignored *)
procedure XFixesSetCursorName(dpy: PDisplay; cursor: TCursor; Name: PChar); cdecl; external;
(* Const before type ignored *)
function XFixesGetCursorName(dpy: PDisplay; cursor: TCursor; atom: PAtom): PChar; cdecl; external;
procedure XFixesChangeCursor(dpy: PDisplay; Source: TCursor; destination: TCursor); cdecl; external;
(* Const before type ignored *)
procedure XFixesChangeCursorByName(dpy: PDisplay; Source: TCursor; Name: PChar); cdecl; external;

procedure XFixesExpandRegion(dpy: PDisplay; dst: TXserverRegion; src: TXserverRegion; left: dword; right: dword;
  top: dword; bottom: dword); cdecl; external;

procedure XFixesHideCursor(dpy: PDisplay; win: TWindow); cdecl; external;
procedure XFixesShowCursor(dpy: PDisplay; win: TWindow); cdecl; external;

type
  PPointerBarrier = ^TPointerBarrier;
  TPointerBarrier = TXID;

function XFixesCreatePointerBarrier(dpy: PDisplay; w: TWindow; x1: longint; y1: longint; x2: longint;
  y2: longint; directions: longint; num_devices: longint; devices: Plongint): TPointerBarrier; cdecl; external;
procedure XFixesDestroyPointerBarrier(dpy: PDisplay; b: TPointerBarrier); cdecl; external;

procedure XFixesSetClientDisconnectMode(dpy: PDisplay; disconnect_mode: longint); cdecl; external;
function XFixesGetClientDisconnectMode(dpy: PDisplay): longint; cdecl; external;

implementation

end.
