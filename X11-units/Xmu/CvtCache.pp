
unit CvtCache;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xmu/CvtCache.h
  The following command line parameters were used:
    /usr/include/X11/Xmu/CvtCache.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xmu/CvtCache.pp
}

  Type
  PXmuCvtCache  = ^XmuCvtCache;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XMU_CVTCACHE_H_}
{$define _XMU_CVTCACHE_H_}  
{$include <X11/Xmu/DisplayQue.h>}
{$include <X11/Xfuncproto.h>}


  type
    _XmuCvtCache = record
        string_to_bitmap : record
            bitmapFilePath : ^^char;
          end;
      end;
    XmuCvtCache = _XmuCvtCache;
(* error 
XmuCvtCache *_XmuCCLookupDisplay
 in declarator_list *)

  procedure _XmuStringToBitmapInitCache(c:PXmuCvtCache);cdecl;

  procedure _XmuStringToBitmapFreeCache(c:PXmuCvtCache);cdecl;

{$endif}

(* error 
#endif /* _XMU_CVTCACHE_H_ */

implementation


end.
