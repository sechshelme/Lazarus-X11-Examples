unit Xdbe;

interface

uses
  ctypes, x, xlib, xutil, render;

{$LinkLib Xext}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

{*****************************************************************************
 *
 * Copyright (c) 1994, 1995  Hewlett-Packard Company
 *
 * Permission is hereby granted, free of charge, to any person obtaining
 * a copy of this software and associated documentation files (the
 * "Software"), to deal in the Software without restriction, including
 * without limitation the rights to use, copy, modify, merge, publish,
 * distribute, sublicense, and/or sell copies of the Software, and to
 * permit persons to whom the Software is furnished to do so, subject to
 * the following conditions:
 *
 * The above copyright notice and this permission notice shall be included
 * in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
 * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
 * IN NO EVENT SHALL HEWLETT-PACKARD COMPANY BE LIABLE FOR ANY CLAIM,
 * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
 * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR
 * THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 * Except as contained in this notice, the name of the Hewlett-Packard
 * Company shall not be used in advertising or otherwise to promote the
 * sale, use or other dealings in this Software without prior written
 * authorization from the Hewlett-Packard Company.
 *
 *     Header file for Xlib-related DBE
 *
 **************************************************************************** }
type
  PXdbeVisualInfo = ^TXdbeVisualInfo;
  TXdbeVisualInfo = record
      visual : TVisualID;
      depth : longint;
      perflevel : longint;
    end;

  PXdbeScreenVisualInfo = ^TXdbeScreenVisualInfo;
  TXdbeScreenVisualInfo = record
      count : longint;
      visinfo : PXdbeVisualInfo;
    end;

  PXdbeBackBuffer = ^TXdbeBackBuffer;
  TXdbeBackBuffer = TDrawable;

  PXdbeSwapAction = ^TXdbeSwapAction;
  TXdbeSwapAction = byte;

  PXdbeSwapInfo = ^TXdbeSwapInfo;
  TXdbeSwapInfo = record
      swap_window : TWindow;
      swap_action : TXdbeSwapAction;
    end;

  PXdbeBackBufferAttributes = ^TXdbeBackBufferAttributes;
  TXdbeBackBufferAttributes = record
      window : TWindow;
    end;

  PXdbeBufferError = ^TXdbeBufferError;
  TXdbeBufferError = record
      _type : longint;
      display : PDisplay;
      buffer : TXdbeBackBuffer;
      serial : culong;
      error_code : byte;
      request_code : byte;
      minor_code : byte;
    end;

function XdbeQueryExtension(para1:PDisplay; para2:Plongint; para3:Plongint):TStatus;cdecl;external;
function XdbeAllocateBackBufferName(para1:PDisplay; para2:TWindow; para3:TXdbeSwapAction):TXdbeBackBuffer;cdecl;external;
function XdbeDeallocateBackBufferName(para1:PDisplay; para2:TXdbeBackBuffer):TStatus;cdecl;external;
function XdbeSwapBuffers(para1:PDisplay; para2:PXdbeSwapInfo; para3:longint):TStatus;cdecl;external;
function XdbeBeginIdiom(para1:PDisplay):TStatus;cdecl;external;
function XdbeEndIdiom(para1:PDisplay):TStatus;cdecl;external;
function XdbeGetVisualInfo(para1:PDisplay; para2:PDrawable; para3:Plongint):PXdbeScreenVisualInfo;cdecl;external;
procedure XdbeFreeVisualInfo(para1:PXdbeScreenVisualInfo);cdecl;external;
function XdbeGetBackBufferAttributes(para1:PDisplay; para2:TXdbeBackBuffer):PXdbeBackBufferAttributes;cdecl;external;

implementation

end.
