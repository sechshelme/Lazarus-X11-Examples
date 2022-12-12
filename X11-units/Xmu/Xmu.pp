
unit Xmu;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xmu/Xmu.h
  The following command line parameters were used:
    /usr/include/X11/Xmu/Xmu.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xmu/Xmu.pp
}

    Type
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
    _XmuSegment = record
        x1 : longint;
        x2 : longint;
        next : ^_XmuSegment;
      end;
    XmuSegment = _XmuSegment;

    _XmuScanline = record
        y : longint;
        segment : ^XmuSegment;
        next : ^_XmuScanline;
      end;
    XmuScanline = _XmuScanline;

    _XmuArea = record
        scanline : ^XmuScanline;
      end;
    XmuArea = _XmuArea;

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
    function XmuAreaDup(_para1:PXmuArea):^XmuArea;

    function XmuAreaCopy(_para1:PXmuArea; _para2:PXmuArea):^XmuArea;

    function XmuAreaNot(_para1:PXmuArea; _para2:longint; _para3:longint; _para4:longint; _para5:longint):^XmuArea;

    function XmuAreaOrXor(_para1:PXmuArea; _para2:PXmuArea; _para3:Bool):^XmuArea;

    function XmuAreaAnd(_para1:PXmuArea; _para2:PXmuArea):^XmuArea;

    function XmuValidArea(_para1:PXmuArea):Bool;

    function XmuValidScanline(_para1:PXmuScanline):Bool;

    function XmuScanlineEqu(_para1:PXmuScanline; _para2:PXmuScanline):Bool;

    function XmuNewSegment(_para1:longint; _para2:longint):^XmuSegment;

    procedure XmuDestroySegmentList(_para1:PXmuSegment);

    function XmuScanlineCopy(_para1:PXmuScanline; _para2:PXmuScanline):^XmuScanline;

    function XmuAppendSegment(_para1:PXmuSegment; _para2:PXmuSegment):Bool;

    function XmuOptimizeScanline(_para1:PXmuScanline):^XmuScanline;

    function XmuScanlineNot(scanline:PXmuScanline; _para2:longint; _para3:longint):^XmuScanline;

    function XmuScanlineOr(_para1:PXmuScanline; _para2:PXmuScanline):^XmuScanline;

    function XmuScanlineAnd(_para1:PXmuScanline; _para2:PXmuScanline):^XmuScanline;

    function XmuScanlineXor(_para1:PXmuScanline; _para2:PXmuScanline):^XmuScanline;

    function XmuNewScanline(_para1:longint; _para2:longint; _para3:longint):^XmuScanline;

    procedure XmuDestroyScanlineList(_para1:PXmuScanline);

    function XmuOptimizeArea(area:PXmuArea):^XmuArea;

{$ifndef notdef}

    function XmuScanlineOrSegment(_para1:PXmuScanline; _para2:PXmuSegment):^XmuScanline;

    function XmuScanlineAndSegment(_para1:PXmuScanline; _para2:PXmuSegment):^XmuScanline;

    function XmuScanlineXorSegment(_para1:PXmuScanline; _para2:PXmuSegment):^XmuScanline;

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
    XmuDestroySegment:=XtFree(pchar(s));
  end;

    function XmuAreaDup(_para1:PXmuArea):PXmuArea;
    begin
      { You must implement this function }
    end;
    function XmuAreaCopy(_para1:PXmuArea; _para2:PXmuArea):PXmuArea;
    begin
      { You must implement this function }
    end;
    function XmuAreaNot(_para1:PXmuArea; _para2:longint; _para3:longint; _para4:longint; _para5:longint):PXmuArea;
    begin
      { You must implement this function }
    end;
    function XmuAreaOrXor(_para1:PXmuArea; _para2:PXmuArea; _para3:Bool):PXmuArea;
    begin
      { You must implement this function }
    end;
    function XmuAreaAnd(_para1:PXmuArea; _para2:PXmuArea):PXmuArea;
    begin
      { You must implement this function }
    end;
    function XmuValidArea(_para1:PXmuArea):Bool;
    begin
      { You must implement this function }
    end;
    function XmuValidScanline(_para1:PXmuScanline):Bool;
    begin
      { You must implement this function }
    end;
    function XmuScanlineEqu(_para1:PXmuScanline; _para2:PXmuScanline):Bool;
    begin
      { You must implement this function }
    end;
    function XmuNewSegment(_para1:longint; _para2:longint):PXmuSegment;
    begin
      { You must implement this function }
    end;
    procedure XmuDestroySegmentList(_para1:PXmuSegment);
    begin
      { You must implement this function }
    end;
    function XmuScanlineCopy(_para1:PXmuScanline; _para2:PXmuScanline):PXmuScanline;
    begin
      { You must implement this function }
    end;
    function XmuAppendSegment(_para1:PXmuSegment; _para2:PXmuSegment):Bool;
    begin
      { You must implement this function }
    end;
    function XmuOptimizeScanline(_para1:PXmuScanline):PXmuScanline;
    begin
      { You must implement this function }
    end;
    function XmuScanlineNot(scanline:PXmuScanline; _para2:longint; _para3:longint):PXmuScanline;
    begin
      { You must implement this function }
    end;
    function XmuScanlineOr(_para1:PXmuScanline; _para2:PXmuScanline):PXmuScanline;
    begin
      { You must implement this function }
    end;
    function XmuScanlineAnd(_para1:PXmuScanline; _para2:PXmuScanline):PXmuScanline;
    begin
      { You must implement this function }
    end;
    function XmuScanlineXor(_para1:PXmuScanline; _para2:PXmuScanline):PXmuScanline;
    begin
      { You must implement this function }
    end;
    function XmuNewScanline(_para1:longint; _para2:longint; _para3:longint):PXmuScanline;
    begin
      { You must implement this function }
    end;
    procedure XmuDestroyScanlineList(_para1:PXmuScanline);
    begin
      { You must implement this function }
    end;
    function XmuOptimizeArea(area:PXmuArea):PXmuArea;
    begin
      { You must implement this function }
    end;
    function XmuScanlineOrSegment(_para1:PXmuScanline; _para2:PXmuSegment):PXmuScanline;
    begin
      { You must implement this function }
    end;
    function XmuScanlineAndSegment(_para1:PXmuScanline; _para2:PXmuSegment):PXmuScanline;
    begin
      { You must implement this function }
    end;
    function XmuScanlineXorSegment(_para1:PXmuScanline; _para2:PXmuSegment):PXmuScanline;
    begin
      { You must implement this function }
    end;

end.
