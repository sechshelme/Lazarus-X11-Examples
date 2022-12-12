
unit XShm;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/XShm.h
  The following command line parameters were used:
    /usr/include/X11/extensions/XShm.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/XShm.pp
}

  Type
  PBool  = ^Bool;
  Pchar  = ^char;
  PDisplay  = ^Display;
  Plongint  = ^longint;
  PVisual  = ^Visual;
  PXImage  = ^XImage;
  PXShmSegmentInfo  = ^XShmSegmentInfo;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XSHM_H_}
{$define _XSHM_H_}  
{$include <X11/Xfuncproto.h>}
{$include <X11/extensions/shm.h>}
{$ifndef _XSHM_SERVER_}

  type
    ShmSeg = dword;










    XShmCompletionEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        drawable : Drawable;
        major_code : longint;
        minor_code : longint;
        shmseg : ShmSeg;
        offset : dword;
      end;





    XShmSegmentInfo = record
        shmseg : ShmSeg;
        shmid : longint;
        shmaddr : ^char;
        readOnly : Bool;
      end;
(* error 
Bool XShmQueryExtension(

 in declarator_list *)


  function XShmGetEventBase(_para1:PDisplay):longint;


  function XShmQueryVersion(_para1:PDisplay; _para2:Plongint; _para3:Plongint; _para4:PBool):Bool;


  function XShmPixmapFormat(_para1:PDisplay):longint;


  function XShmAttach(_para1:PDisplay; _para2:PXShmSegmentInfo):Bool;


  function XShmDetach(_para1:PDisplay; _para2:PXShmSegmentInfo):Bool;


  function XShmPutImage(_para1:PDisplay; _para2:Drawable; _para3:GC; _para4:PXImage; _para5:longint; 
             _para6:longint; _para7:longint; _para8:longint; _para9:dword; _para10:dword; 
             _para11:Bool):Bool;


  function XShmGetImage(_para1:PDisplay; _para2:Drawable; _para3:PXImage; _para4:longint; _para5:longint; 
             _para6:dword):Bool;


  function XShmCreateImage(_para1:PDisplay; _para2:PVisual; _para3:dword; _para4:longint; _para5:Pchar; 
             _para6:PXShmSegmentInfo; _para7:dword; _para8:dword):^XImage;


  function XShmCreatePixmap(_para1:PDisplay; _para2:Drawable; _para3:Pchar; _para4:PXShmSegmentInfo; _para5:dword; 
             _para6:dword; _para7:dword):Pixmap;

{$endif}

{$endif}
(* error 
#endif

implementation

  function XShmGetEventBase(_para1:PDisplay):longint;
  begin
    { You must implement this function }
  end;
  function XShmQueryVersion(_para1:PDisplay; _para2:Plongint; _para3:Plongint; _para4:PBool):Bool;
  begin
    { You must implement this function }
  end;
  function XShmPixmapFormat(_para1:PDisplay):longint;
  begin
    { You must implement this function }
  end;
  function XShmAttach(_para1:PDisplay; _para2:PXShmSegmentInfo):Bool;
  begin
    { You must implement this function }
  end;
  function XShmDetach(_para1:PDisplay; _para2:PXShmSegmentInfo):Bool;
  begin
    { You must implement this function }
  end;
  function XShmPutImage(_para1:PDisplay; _para2:Drawable; _para3:GC; _para4:PXImage; _para5:longint; 
             _para6:longint; _para7:longint; _para8:longint; _para9:dword; _para10:dword; 
             _para11:Bool):Bool;
  begin
    { You must implement this function }
  end;
  function XShmGetImage(_para1:PDisplay; _para2:Drawable; _para3:PXImage; _para4:longint; _para5:longint; 
             _para6:dword):Bool;
  begin
    { You must implement this function }
  end;
  function XShmCreateImage(_para1:PDisplay; _para2:PVisual; _para3:dword; _para4:longint; _para5:Pchar; 
             _para6:PXShmSegmentInfo; _para7:dword; _para8:dword):PXImage;
  begin
    { You must implement this function }
  end;
  function XShmCreatePixmap(_para1:PDisplay; _para2:Drawable; _para3:Pchar; _para4:PXShmSegmentInfo; _para5:dword; 
             _para6:dword; _para7:dword):Pixmap;
  begin
    { You must implement this function }
  end;

end.
