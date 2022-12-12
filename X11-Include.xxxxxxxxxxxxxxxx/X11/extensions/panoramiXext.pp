
unit panoramiXext;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/panoramiXext.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/panoramiXext.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/panoramiXext.pp
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
    PDisplay  = ^Display;
    Plongint  = ^longint;
    PXPanoramiXInfo  = ^XPanoramiXInfo;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef _panoramiXext_h}
{$define _panoramiXext_h}
{$include <X11/Xfuncproto.h>}






type
  PXPanoramiXInfo = ^TXPanoramiXInfo;
  TXPanoramiXInfo = record
      window : TWindow;
      screen : longint;
      State : longint;
      width : longint;
      height : longint;
      ScreenCount : longint;
      eventMask : TXID;
    end;
(* error 
extern Bool XPanoramiXQueryExtension (

in declaration at line 52 *)


function XPanoramiXQueryVersion(para1:PDisplay; para2:Plongint; para3:Plongint):TStatus;cdecl;external;
function XPanoramiXAllocInfo:PXPanoramiXInfo;cdecl;external;

function XPanoramiXGetState(para1:PDisplay; para2:TDrawable; para3:PXPanoramiXInfo):TStatus;cdecl;external;

function XPanoramiXGetScreenCount(para1:PDisplay; para2:TDrawable; para3:PXPanoramiXInfo):TStatus;cdecl;external;

function XPanoramiXGetScreenSize(para1:PDisplay; para2:TDrawable; para3:longint; para4:PXPanoramiXInfo):TStatus;cdecl;external;
{$endif}

(* error 
#endif /* _panoramiXext_h */

implementation


end.
