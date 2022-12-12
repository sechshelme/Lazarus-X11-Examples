
unit Xmu;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/Xmu.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/Xmu.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/Xmu.pp
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
    Pchar  = ^char;
    PXmuArea  = ^XmuArea;
    PXmuScanline  = ^XmuScanline;
    PXmuSegment  = ^XmuSegment;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XMU_H_}
{$define _XMU_H_}
{$include <X11/Xfuncproto.h>}
{$include <X11/Intrinsic.h>}
{$include <X11/Xmu/Atoms.h>		/* _XA_... */}
{$include <X11/Xmu/CharSet.h>		/* CopyISOLatin1Lowered */}
{$include <X11/Xmu/Converters.h>		/* CvtStringTo... */}
{$include <X11/Xmu/Drawing.h>		/* DrawRoundedRect, DrawLogo */}
{$include <X11/Xmu/Error.h>		/* PrintDefaultError */}
{$include <X11/Xmu/StdSel.h>		/* ConvertStandardSelection */}

type
  PXmuSegment = ^TXmuSegment;
  TXmuSegment = record
      x1 : longint;
      x2 : longint;
      next : PXmuSegment;
    end;

  PXmuScanline = ^TXmuScanline;
  TXmuScanline = record
      y : longint;
      segment : PXmuSegment;
      next : PXmuScanline;
    end;

  PXmuArea = ^TXmuArea;
  TXmuArea = record
      scanline : PXmuScanline;
    end;

function XmuCreateArea : longint;

function XmuAreaOr(dst,src : longint) : longint;

function XmuAreaXor(dst,src : longint) : longint;

(* error 
		  do {						\
in declaration at line 68 *)
(* error 
		    XmuDestroyScanlineList((a)->scanline);	\
(* error 
		    XtFree((char *)(a));			\
in declaration at line 69 *)
(* error 
		    XtFree((char *)(a));			\
(* error 
		  } while (0)
in declaration at line 74 *)
(* error 
		    XmuDestroyScanlineList((a)->scanline);	\
(* error 
		    a->scanline = (Scanline *)0;		\
in declaration at line 75 *)
(* error 
		    a->scanline = (Scanline *)0;		\
(* error 
		  } while (0)
in define line 78 *)
    function XmuSegmentEqu(s1,s2 : longint) : longint;    

    function XmuDestroySegment(s : longint) : longint;    

(* error 
		  do {						\
in declaration at line 84 *)
(* error 
		    XmuDestroySegmentList((s)->segment);	\
(* error 
		    XtFree((char*)(s));				\
in declaration at line 85 *)
(* error 
		    XtFree((char*)(s));				\
(* error 
		  } while (0)
in declaration at line 88 *)
function XmuAreaDup(para1:PXmuArea):PXmuArea;cdecl;external;
function XmuAreaCopy(para1:PXmuArea; para2:PXmuArea):PXmuArea;cdecl;external;
function XmuAreaNot(para1:PXmuArea; para2:longint; para3:longint; para4:longint; para5:longint):PXmuArea;cdecl;external;
function XmuAreaOrXor(para1:PXmuArea; para2:PXmuArea; para3:TBool):PXmuArea;cdecl;external;
function XmuAreaAnd(para1:PXmuArea; para2:PXmuArea):PXmuArea;cdecl;external;
function XmuValidArea(para1:PXmuArea):TBool;cdecl;external;
function XmuValidScanline(para1:PXmuScanline):TBool;cdecl;external;
function XmuScanlineEqu(para1:PXmuScanline; para2:PXmuScanline):TBool;cdecl;external;
function XmuNewSegment(para1:longint; para2:longint):PXmuSegment;cdecl;external;
procedure XmuDestroySegmentList(para1:PXmuSegment);cdecl;external;
function XmuScanlineCopy(para1:PXmuScanline; para2:PXmuScanline):PXmuScanline;cdecl;external;
function XmuAppendSegment(para1:PXmuSegment; para2:PXmuSegment):TBool;cdecl;external;
function XmuOptimizeScanline(para1:PXmuScanline):PXmuScanline;cdecl;external;
function XmuScanlineNot(scanline:PXmuScanline; para2:longint; para3:longint):PXmuScanline;cdecl;external;
function XmuScanlineOr(para1:PXmuScanline; para2:PXmuScanline):PXmuScanline;cdecl;external;
function XmuScanlineAnd(para1:PXmuScanline; para2:PXmuScanline):PXmuScanline;cdecl;external;
function XmuScanlineXor(para1:PXmuScanline; para2:PXmuScanline):PXmuScanline;cdecl;external;
function XmuNewScanline(para1:longint; para2:longint; para3:longint):PXmuScanline;cdecl;external;
procedure XmuDestroyScanlineList(para1:PXmuScanline);cdecl;external;
function XmuOptimizeArea(area:PXmuArea):PXmuArea;cdecl;external;
{$ifndef notdef}

function XmuScanlineOrSegment(para1:PXmuScanline; para2:PXmuSegment):PXmuScanline;cdecl;external;
function XmuScanlineAndSegment(para1:PXmuScanline; para2:PXmuSegment):PXmuScanline;cdecl;external;
function XmuScanlineXorSegment(para1:PXmuScanline; para2:PXmuSegment):PXmuScanline;cdecl;external;
{$endif}

{$ifndef _SYSUTIL_H_}
(* error 
int XmuSnprintf(char *str, int size, _Xconst char *fmt, ...)
(* error 
int XmuSnprintf(char *str, int size, _Xconst char *fmt, ...)
(* error 
    _X_ATTRIBUTE_PRINTF(3,4);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
{$endif}
{$endif}


implementation

function XmuCreateArea : longint;
begin
  XmuCreateArea:=XmuNewArea(0,0,0,0);
end;

function XmuAreaOr(dst,src : longint) : longint;
begin
  XmuAreaOr:=XmuAreaOrXor(dst,src,_True);
end;

function XmuAreaXor(dst,src : longint) : longint;
begin
  XmuAreaXor:=XmuAreaOrXor(dst,src,_False);
end;

    function XmuSegmentEqu(s1,s2 : longint) : longint;
    begin
      XmuSegmentEqu:=((s1^.x1)=((s2^.x1) and (@(s1^.x2))))=(s2^.x2);
    end;

    function XmuDestroySegment(s : longint) : longint;
    begin
      XmuDestroySegment:=XtFree(Pchar(s));
    end;


end.
