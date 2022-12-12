
unit Xfixes;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/Xfixes.h
  The following command line parameters were used:
    /usr/include/X11/extensions/Xfixes.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/Xfixes.pp
}

    Type
    PAtom  = ^Atom;
    Pchar  = ^char;
    PDisplay  = ^Display;
    Plongint  = ^longint;
    PXFixesCursorImage  = ^XFixesCursorImage;
    PXRectangle  = ^XRectangle;
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
      XFixesSelectionNotifyEvent = record
          _type : longint;
          serial : dword;
          send_event : Bool;
          display : ^Display;
          window : Window;
          subtype : longint;
          owner : Window;
          selection : Atom;
          timestamp : Time;
          selection_timestamp : Time;
        end;


      XFixesCursorNotifyEvent = record
          _type : longint;
          serial : dword;
          send_event : Bool;
          display : ^Display;
          window : Window;
          subtype : longint;
          cursor_serial : dword;
          timestamp : Time;
          cursor_name : Atom;
        end;
{$if XFIXES_MAJOR >= 2}


{$endif}

    type
      XFixesCursorImage = record
          x : smallint;
          y : smallint;
          width : word;
          height : word;
          xhot : word;
          yhot : word;
          cursor_serial : dword;
          pixels : ^dword;
          atom : Atom;
          name : ^char;
        end;
{$if XFIXES_MAJOR >= 2}


    type
      XserverRegion = XID;

      XFixesCursorImageAndName = record
          x : smallint;
          y : smallint;
          width : word;
          height : word;
          xhot : word;
          yhot : word;
          cursor_serial : dword;
          pixels : ^dword;
          atom : Atom;
          name : ^char;
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

    function XFixesQueryVersion(dpy:PDisplay; major_version_return:Plongint; minor_version_return:Plongint):Status;

    function XFixesVersion:longint;

    procedure XFixesChangeSaveSet(dpy:PDisplay; win:Window; mode:longint; target:longint; map:longint);

    procedure XFixesSelectSelectionInput(dpy:PDisplay; win:Window; selection:Atom; eventMask:dword);

    procedure XFixesSelectCursorInput(dpy:PDisplay; win:Window; eventMask:dword);

    function XFixesGetCursorImage(dpy:PDisplay):^XFixesCursorImage;

{$if XFIXES_MAJOR >= 2}


    function XFixesCreateRegion(dpy:PDisplay; rectangles:PXRectangle; nrectangles:longint):XserverRegion;

    function XFixesCreateRegionFromBitmap(dpy:PDisplay; bitmap:Pixmap):XserverRegion;

    function XFixesCreateRegionFromWindow(dpy:PDisplay; window:Window; kind:longint):XserverRegion;

    function XFixesCreateRegionFromGC(dpy:PDisplay; gc:GC):XserverRegion;

    function XFixesCreateRegionFromPicture(dpy:PDisplay; picture:XID):XserverRegion;

    procedure XFixesDestroyRegion(dpy:PDisplay; region:XserverRegion);

    procedure XFixesSetRegion(dpy:PDisplay; region:XserverRegion; rectangles:PXRectangle; nrectangles:longint);

    procedure XFixesCopyRegion(dpy:PDisplay; dst:XserverRegion; src:XserverRegion);

    procedure XFixesUnionRegion(dpy:PDisplay; dst:XserverRegion; src1:XserverRegion; src2:XserverRegion);

    procedure XFixesIntersectRegion(dpy:PDisplay; dst:XserverRegion; src1:XserverRegion; src2:XserverRegion);

    procedure XFixesSubtractRegion(dpy:PDisplay; dst:XserverRegion; src1:XserverRegion; src2:XserverRegion);

    procedure XFixesInvertRegion(dpy:PDisplay; dst:XserverRegion; rect:PXRectangle; src:XserverRegion);

    procedure XFixesTranslateRegion(dpy:PDisplay; region:XserverRegion; dx:longint; dy:longint);

    procedure XFixesRegionExtents(dpy:PDisplay; dst:XserverRegion; src:XserverRegion);

    function XFixesFetchRegion(dpy:PDisplay; region:XserverRegion; nrectanglesRet:Plongint):^XRectangle;

    function XFixesFetchRegionAndBounds(dpy:PDisplay; region:XserverRegion; nrectanglesRet:Plongint; bounds:PXRectangle):^XRectangle;

    procedure XFixesSetGCClipRegion(dpy:PDisplay; gc:GC; clip_x_origin:longint; clip_y_origin:longint; region:XserverRegion);

    procedure XFixesSetWindowShapeRegion(dpy:PDisplay; win:Window; shape_kind:longint; x_off:longint; y_off:longint; 
                region:XserverRegion);

    procedure XFixesSetPictureClipRegion(dpy:PDisplay; picture:XID; clip_x_origin:longint; clip_y_origin:longint; region:XserverRegion);

    procedure XFixesSetCursorName(dpy:PDisplay; cursor:Cursor; name:Pchar);

    function XFixesGetCursorName(dpy:PDisplay; cursor:Cursor; atom:PAtom):^char;

    procedure XFixesChangeCursor(dpy:PDisplay; source:Cursor; destination:Cursor);

    procedure XFixesChangeCursorByName(dpy:PDisplay; source:Cursor; name:Pchar);

{$endif}

{$if XFIXES_MAJOR >= 3}

    procedure XFixesExpandRegion(dpy:PDisplay; dst:XserverRegion; src:XserverRegion; left:dword; right:dword; 
                top:dword; bottom:dword);

{$endif}

{$if XFIXES_MAJOR >= 4}


    procedure XFixesHideCursor(dpy:PDisplay; win:Window);

    procedure XFixesShowCursor(dpy:PDisplay; win:Window);

{$endif}

{$if XFIXES_MAJOR >= 5}

    type
      PointerBarrier = XID;

    function XFixesCreatePointerBarrier(dpy:PDisplay; w:Window; x1:longint; y1:longint; x2:longint; 
               y2:longint; directions:longint; num_devices:longint; devices:Plongint):PointerBarrier;

    procedure XFixesDestroyPointerBarrier(dpy:PDisplay; b:PointerBarrier);

{$endif}

{$if XFIXES_MAJOR >= 6}

    procedure XFixesSetClientDisconnectMode(dpy:PDisplay; disconnect_mode:longint);

    function XFixesGetClientDisconnectMode(dpy:PDisplay):longint;

{$endif}

{$endif}

(* error 
#endif /* _XFIXES_H_ */

implementation

    function XFixesQueryVersion(dpy:PDisplay; major_version_return:Plongint; minor_version_return:Plongint):Status;
    begin
      { You must implement this function }
    end;
    function XFixesVersion:longint;
    begin
      { You must implement this function }
    end;
    procedure XFixesChangeSaveSet(dpy:PDisplay; win:Window; mode:longint; target:longint; map:longint);
    begin
      { You must implement this function }
    end;
    procedure XFixesSelectSelectionInput(dpy:PDisplay; win:Window; selection:Atom; eventMask:dword);
    begin
      { You must implement this function }
    end;
    procedure XFixesSelectCursorInput(dpy:PDisplay; win:Window; eventMask:dword);
    begin
      { You must implement this function }
    end;
    function XFixesGetCursorImage(dpy:PDisplay):PXFixesCursorImage;
    begin
      { You must implement this function }
    end;
    function XFixesCreateRegion(dpy:PDisplay; rectangles:PXRectangle; nrectangles:longint):XserverRegion;
    begin
      { You must implement this function }
    end;
    function XFixesCreateRegionFromBitmap(dpy:PDisplay; bitmap:Pixmap):XserverRegion;
    begin
      { You must implement this function }
    end;
    function XFixesCreateRegionFromWindow(dpy:PDisplay; window:Window; kind:longint):XserverRegion;
    begin
      { You must implement this function }
    end;
    function XFixesCreateRegionFromGC(dpy:PDisplay; gc:GC):XserverRegion;
    begin
      { You must implement this function }
    end;
    function XFixesCreateRegionFromPicture(dpy:PDisplay; picture:XID):XserverRegion;
    begin
      { You must implement this function }
    end;
    procedure XFixesDestroyRegion(dpy:PDisplay; region:XserverRegion);
    begin
      { You must implement this function }
    end;
    procedure XFixesSetRegion(dpy:PDisplay; region:XserverRegion; rectangles:PXRectangle; nrectangles:longint);
    begin
      { You must implement this function }
    end;
    procedure XFixesCopyRegion(dpy:PDisplay; dst:XserverRegion; src:XserverRegion);
    begin
      { You must implement this function }
    end;
    procedure XFixesUnionRegion(dpy:PDisplay; dst:XserverRegion; src1:XserverRegion; src2:XserverRegion);
    begin
      { You must implement this function }
    end;
    procedure XFixesIntersectRegion(dpy:PDisplay; dst:XserverRegion; src1:XserverRegion; src2:XserverRegion);
    begin
      { You must implement this function }
    end;
    procedure XFixesSubtractRegion(dpy:PDisplay; dst:XserverRegion; src1:XserverRegion; src2:XserverRegion);
    begin
      { You must implement this function }
    end;
    procedure XFixesInvertRegion(dpy:PDisplay; dst:XserverRegion; rect:PXRectangle; src:XserverRegion);
    begin
      { You must implement this function }
    end;
    procedure XFixesTranslateRegion(dpy:PDisplay; region:XserverRegion; dx:longint; dy:longint);
    begin
      { You must implement this function }
    end;
    procedure XFixesRegionExtents(dpy:PDisplay; dst:XserverRegion; src:XserverRegion);
    begin
      { You must implement this function }
    end;
    function XFixesFetchRegion(dpy:PDisplay; region:XserverRegion; nrectanglesRet:Plongint):PXRectangle;
    begin
      { You must implement this function }
    end;
    function XFixesFetchRegionAndBounds(dpy:PDisplay; region:XserverRegion; nrectanglesRet:Plongint; bounds:PXRectangle):PXRectangle;
    begin
      { You must implement this function }
    end;
    procedure XFixesSetGCClipRegion(dpy:PDisplay; gc:GC; clip_x_origin:longint; clip_y_origin:longint; region:XserverRegion);
    begin
      { You must implement this function }
    end;
    procedure XFixesSetWindowShapeRegion(dpy:PDisplay; win:Window; shape_kind:longint; x_off:longint; y_off:longint; 
                region:XserverRegion);
    begin
      { You must implement this function }
    end;
    procedure XFixesSetPictureClipRegion(dpy:PDisplay; picture:XID; clip_x_origin:longint; clip_y_origin:longint; region:XserverRegion);
    begin
      { You must implement this function }
    end;
    procedure XFixesSetCursorName(dpy:PDisplay; cursor:Cursor; name:Pchar);
    begin
      { You must implement this function }
    end;
    function XFixesGetCursorName(dpy:PDisplay; cursor:Cursor; atom:PAtom):Pchar;
    begin
      { You must implement this function }
    end;
    procedure XFixesChangeCursor(dpy:PDisplay; source:Cursor; destination:Cursor);
    begin
      { You must implement this function }
    end;
    procedure XFixesChangeCursorByName(dpy:PDisplay; source:Cursor; name:Pchar);
    begin
      { You must implement this function }
    end;
    procedure XFixesExpandRegion(dpy:PDisplay; dst:XserverRegion; src:XserverRegion; left:dword; right:dword; 
                top:dword; bottom:dword);
    begin
      { You must implement this function }
    end;
    procedure XFixesHideCursor(dpy:PDisplay; win:Window);
    begin
      { You must implement this function }
    end;
    procedure XFixesShowCursor(dpy:PDisplay; win:Window);
    begin
      { You must implement this function }
    end;
    function XFixesCreatePointerBarrier(dpy:PDisplay; w:Window; x1:longint; y1:longint; x2:longint; 
               y2:longint; directions:longint; num_devices:longint; devices:Plongint):PointerBarrier;
    begin
      { You must implement this function }
    end;
    procedure XFixesDestroyPointerBarrier(dpy:PDisplay; b:PointerBarrier);
    begin
      { You must implement this function }
    end;
    procedure XFixesSetClientDisconnectMode(dpy:PDisplay; disconnect_mode:longint);
    begin
      { You must implement this function }
    end;
    function XFixesGetClientDisconnectMode(dpy:PDisplay):longint;
    begin
      { You must implement this function }
    end;

end.
