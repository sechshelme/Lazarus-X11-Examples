
unit Xfixes;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xfixes.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xfixes.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xfixes.pp
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
    PAtom  = ^Atom;
    Pchar  = ^char;
    PDisplay  = ^Display;
    Pdword  = ^dword;
    Plongint  = ^longint;
    PPointerBarrier  = ^PointerBarrier;
    PXFixesCursorImage  = ^XFixesCursorImage;
    PXFixesCursorImageAndName  = ^XFixesCursorImageAndName;
    PXFixesCursorNotifyEvent  = ^XFixesCursorNotifyEvent;
    PXFixesSelectionNotifyEvent  = ^XFixesSelectionNotifyEvent;
    PXRectangle  = ^XRectangle;
    PXserverRegion  = ^XserverRegion;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XFIXES_H_}
{$define _XFIXES_H_}
{$include <X11/extensions/xfixeswire.h>}
{$include <X11/Xfuncproto.h>}
{$include <X11/Xlib.h>}


const
  XFIXES_REVISION = 1;  
(* error 
#define XFIXES_VERSION	((XFIXES_MAJOR * 10000) + (XFIXES_MINOR * 100) + (XFIXES_REVISION))
in define line 59 *)

    type
      PXFixesSelectionNotifyEvent = ^TXFixesSelectionNotifyEvent;
      TXFixesSelectionNotifyEvent = record
          _type : longint;
          serial : dword;
          send_event : TBool;
          display : PDisplay;
          window : TWindow;
          subtype : longint;
          owner : TWindow;
          selection : TAtom;
          timestamp : TTime;
          selection_timestamp : TTime;
        end;


      PXFixesCursorNotifyEvent = ^TXFixesCursorNotifyEvent;
      TXFixesCursorNotifyEvent = record
          _type : longint;
          serial : dword;
          send_event : TBool;
          display : PDisplay;
          window : TWindow;
          subtype : longint;
          cursor_serial : dword;
          timestamp : TTime;
          cursor_name : TAtom;
        end;
{$if XFIXES_MAJOR >= 2}


{$endif}
    type
      PXFixesCursorImage = ^TXFixesCursorImage;
      TXFixesCursorImage = record
          x : smallint;
          y : smallint;
          width : word;
          height : word;
          xhot : word;
          yhot : word;
          cursor_serial : dword;
          pixels : Pdword;
          atom : TAtom;
          name : Pchar;
        end;
{$if XFIXES_MAJOR >= 2}

    type
      PXserverRegion = ^TXserverRegion;
      TXserverRegion = TXID;

      PXFixesCursorImageAndName = ^TXFixesCursorImageAndName;
      TXFixesCursorImageAndName = record
          x : smallint;
          y : smallint;
          width : word;
          height : word;
          xhot : word;
          yhot : word;
          cursor_serial : dword;
          pixels : Pdword;
          atom : TAtom;
          name : Pchar;
        end;
{$endif}
(* error 
Bool XFixesQueryExtension (Display *dpy,
(* error 
			    int *event_base_return,
(* error 
			    int *error_base_return);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

function XFixesQueryVersion(dpy:PDisplay; major_version_return:Plongint; minor_version_return:Plongint):TStatus;cdecl;external;
function XFixesVersion:longint;cdecl;external;
procedure XFixesChangeSaveSet(dpy:PDisplay; win:TWindow; mode:longint; target:longint; map:longint);cdecl;external;
procedure XFixesSelectSelectionInput(dpy:PDisplay; win:TWindow; selection:TAtom; eventMask:dword);cdecl;external;
procedure XFixesSelectCursorInput(dpy:PDisplay; win:TWindow; eventMask:dword);cdecl;external;
function XFixesGetCursorImage(dpy:PDisplay):PXFixesCursorImage;cdecl;external;
{$if XFIXES_MAJOR >= 2}


function XFixesCreateRegion(dpy:PDisplay; rectangles:PXRectangle; nrectangles:longint):TXserverRegion;cdecl;external;
function XFixesCreateRegionFromBitmap(dpy:PDisplay; bitmap:TPixmap):TXserverRegion;cdecl;external;
function XFixesCreateRegionFromWindow(dpy:PDisplay; window:TWindow; kind:longint):TXserverRegion;cdecl;external;
function XFixesCreateRegionFromGC(dpy:PDisplay; gc:TGC):TXserverRegion;cdecl;external;
function XFixesCreateRegionFromPicture(dpy:PDisplay; picture:TXID):TXserverRegion;cdecl;external;
procedure XFixesDestroyRegion(dpy:PDisplay; region:TXserverRegion);cdecl;external;
procedure XFixesSetRegion(dpy:PDisplay; region:TXserverRegion; rectangles:PXRectangle; nrectangles:longint);cdecl;external;
procedure XFixesCopyRegion(dpy:PDisplay; dst:TXserverRegion; src:TXserverRegion);cdecl;external;
procedure XFixesUnionRegion(dpy:PDisplay; dst:TXserverRegion; src1:TXserverRegion; src2:TXserverRegion);cdecl;external;
procedure XFixesIntersectRegion(dpy:PDisplay; dst:TXserverRegion; src1:TXserverRegion; src2:TXserverRegion);cdecl;external;
procedure XFixesSubtractRegion(dpy:PDisplay; dst:TXserverRegion; src1:TXserverRegion; src2:TXserverRegion);cdecl;external;
procedure XFixesInvertRegion(dpy:PDisplay; dst:TXserverRegion; rect:PXRectangle; src:TXserverRegion);cdecl;external;
procedure XFixesTranslateRegion(dpy:PDisplay; region:TXserverRegion; dx:longint; dy:longint);cdecl;external;
procedure XFixesRegionExtents(dpy:PDisplay; dst:TXserverRegion; src:TXserverRegion);cdecl;external;
function XFixesFetchRegion(dpy:PDisplay; region:TXserverRegion; nrectanglesRet:Plongint):PXRectangle;cdecl;external;
function XFixesFetchRegionAndBounds(dpy:PDisplay; region:TXserverRegion; nrectanglesRet:Plongint; bounds:PXRectangle):PXRectangle;cdecl;external;
procedure XFixesSetGCClipRegion(dpy:PDisplay; gc:TGC; clip_x_origin:longint; clip_y_origin:longint; region:TXserverRegion);cdecl;external;
procedure XFixesSetWindowShapeRegion(dpy:PDisplay; win:TWindow; shape_kind:longint; x_off:longint; y_off:longint; 
                region:TXserverRegion);cdecl;external;
procedure XFixesSetPictureClipRegion(dpy:PDisplay; picture:TXID; clip_x_origin:longint; clip_y_origin:longint; region:TXserverRegion);cdecl;external;
procedure XFixesSetCursorName(dpy:PDisplay; cursor:TCursor; name:Pchar);cdecl;external;
function XFixesGetCursorName(dpy:PDisplay; cursor:TCursor; atom:PAtom):Pchar;cdecl;external;
procedure XFixesChangeCursor(dpy:PDisplay; source:TCursor; destination:TCursor);cdecl;external;
procedure XFixesChangeCursorByName(dpy:PDisplay; source:TCursor; name:Pchar);cdecl;external;
{$endif}

{$if XFIXES_MAJOR >= 3}

procedure XFixesExpandRegion(dpy:PDisplay; dst:TXserverRegion; src:TXserverRegion; left:dword; right:dword; 
                top:dword; bottom:dword);cdecl;external;
{$endif}

{$if XFIXES_MAJOR >= 4}


procedure XFixesHideCursor(dpy:PDisplay; win:TWindow);cdecl;external;
procedure XFixesShowCursor(dpy:PDisplay; win:TWindow);cdecl;external;
{$endif}

{$if XFIXES_MAJOR >= 5}
    type
      PPointerBarrier = ^TPointerBarrier;
      TPointerBarrier = TXID;

function XFixesCreatePointerBarrier(dpy:PDisplay; w:TWindow; x1:longint; y1:longint; x2:longint; 
               y2:longint; directions:longint; num_devices:longint; devices:Plongint):TPointerBarrier;cdecl;external;
procedure XFixesDestroyPointerBarrier(dpy:PDisplay; b:TPointerBarrier);cdecl;external;
{$endif}

{$if XFIXES_MAJOR >= 6}

procedure XFixesSetClientDisconnectMode(dpy:PDisplay; disconnect_mode:longint);cdecl;external;
function XFixesGetClientDisconnectMode(dpy:PDisplay):longint;cdecl;external;
{$endif}

{$endif}

(* error 
#endif /* _XFIXES_H_ */

implementation


end.
