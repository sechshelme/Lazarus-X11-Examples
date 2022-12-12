
unit XShm;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XShm.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XShm.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XShm.pp
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
PBool  = ^Bool;
Pchar  = ^char;
PDisplay  = ^Display;
Plongint  = ^longint;
PShmSeg  = ^ShmSeg;
PVisual  = ^Visual;
PXImage  = ^XImage;
PXShmCompletionEvent  = ^XShmCompletionEvent;
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
  PShmSeg = ^TShmSeg;
  TShmSeg = dword;










  PXShmCompletionEvent = ^TXShmCompletionEvent;
  TXShmCompletionEvent = record
      _type : longint;
      serial : dword;
      send_event : TBool;
      display : PDisplay;
      drawable : TDrawable;
      major_code : longint;
      minor_code : longint;
      shmseg : TShmSeg;
      offset : dword;
    end;





  PXShmSegmentInfo = ^TXShmSegmentInfo;
  TXShmSegmentInfo = record
      shmseg : TShmSeg;
      shmid : longint;
      shmaddr : Pchar;
      readOnly : TBool;
    end;
(* error 
Bool XShmQueryExtension(

 in declarator_list *)


function XShmGetEventBase(para1:PDisplay):longint;cdecl;external;

function XShmQueryVersion(para1:PDisplay; para2:Plongint; para3:Plongint; para4:PBool):TBool;cdecl;external;

function XShmPixmapFormat(para1:PDisplay):longint;cdecl;external;

function XShmAttach(para1:PDisplay; para2:PXShmSegmentInfo):TBool;cdecl;external;

function XShmDetach(para1:PDisplay; para2:PXShmSegmentInfo):TBool;cdecl;external;

function XShmPutImage(para1:PDisplay; para2:TDrawable; para3:TGC; para4:PXImage; para5:longint; 
           para6:longint; para7:longint; para8:longint; para9:dword; para10:dword; 
           para11:TBool):TBool;cdecl;external;

function XShmGetImage(para1:PDisplay; para2:TDrawable; para3:PXImage; para4:longint; para5:longint; 
           para6:dword):TBool;cdecl;external;

function XShmCreateImage(para1:PDisplay; para2:PVisual; para3:dword; para4:longint; para5:Pchar; 
           para6:PXShmSegmentInfo; para7:dword; para8:dword):PXImage;cdecl;external;

function XShmCreatePixmap(para1:PDisplay; para2:TDrawable; para3:Pchar; para4:PXShmSegmentInfo; para5:dword; 
           para6:dword; para7:dword):TPixmap;cdecl;external;
{$endif}

{$endif}
(* error 
#endif

implementation


end.
