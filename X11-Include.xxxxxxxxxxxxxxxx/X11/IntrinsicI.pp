
unit IntrinsicI;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/IntrinsicI.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/IntrinsicI.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/IntrinsicI.pp
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
    PBoolean  = ^Boolean;
    Pchar  = ^char;
    PDisplay  = ^Display;
    PXtWidgetGeometry  = ^XtWidgetGeometry;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XtintrinsicI_h}
{$define _XtintrinsicI_h}
{$include "Xtos.h"}
{$include "IntrinsicP.h"}
{$ifdef WIN32}
{$define _WILLWINSOCK_}
{$endif}
{$include <X11/Xos.h>}
{$include "Object.h"}
{$include "RectObj.h"}
{$include "ObjectP.h"}
{$include "RectObjP.h"}
{$include "ConvertI.h"}
{$include "TranslateI.h"}

const
  RectObjClassFlag = $02;  
  WidgetClassFlag = $04;  
  CompositeClassFlag = $08;  
  ConstraintClassFlag = $10;  
  ShellClassFlag = $20;  
  WMShellClassFlag = $40;  
  TopLevelClassFlag = $80;  


function XtDisplayOfObject(object : longint) : longint;

function XtScreenOfObject(object : longint) : longint;

function XtWindowOfObject(object : longint) : longint;

function XtIsManaged(object : longint) : longint;

function XtIsSensitive(object : longint) : longint;


(* error 
#define XtSetBits(dst,src,len)  dst = (((1U << (len)) - 1) & (unsigned)(src))
in define line 107 *)
    function XtSetBit(dst,src : longint) : longint;    


    const
      _XBCOPYFUNC = _XtBcopy;      
{$include <X11/Xfuncs.h>}
(* error 
    if ((const void *)(dst) != (const void *)(src)) {		    \
in declaration at line 121 *)
(* error 
	(void) memcpy((void *) (dst), (const void *) (src), (size_t) (size)); \
(* error 
    }
in define line 125 *)

    function XtMemcmp(b1,b2,size : longint) : longint;    


    function XtStackAlloc(size,stack_cache_array : longint) : longint;    

(* error 
    { if ((pointer) != ((XtPointer)(stack_cache_array))) XtFree(pointer); }
in declaration at line 143 *)
(* error 
    { if ((pointer) != ((XtPointer)(stack_cache_array))) XtFree(pointer); }


{$ifndef XFILESEARCHPATHDEFAULT}
in define line 153 *)
{$endif}

{$ifndef XTERROR_PREFIX}

    const
      XTERROR_PREFIX = '';      
{$endif}
{$ifndef XTWARNING_PREFIX}

    const
      XTWARNING_PREFIX = '';      
{$endif}
{$ifndef ERRORDB}

    const
      ERRORDB = '/usr/lib/X11/XtErrorDB';      
{$endif}
(* error 
extern String XtCXtToolkitError;
in declaration at line 171 *)

(* error 
) _X_NORETURN;
 in declarator_list *)
      var
 : pointer;


procedure _XtCompileResourceList(para1:TXtResourceList; para2:TCardinal);cdecl;external;

function _XtMakeGeometryRequest(para1:TWidget; para2:PXtWidgetGeometry; para3:PXtWidgetGeometry; para4:PBoolean):TXtGeometryResult;cdecl;external;

function _XtIsHookObject(para1:TWidget):TBoolean;cdecl;external;

procedure _XtAddShellToHookObj(para1:TWidget);cdecl;external;

procedure _XtGClistFree(dpy:PDisplay; pd:TXtPerDisplay);cdecl;external;

{$ifdef XT_GEO_TATTLER}
procedure _XtGeoTab(para1:longint);cdecl;external;
(* error 
) _X_ATTRIBUTE_PRINTF(2,3);
(* error 
) _X_ATTRIBUTE_PRINTF(2,3);
 in declarator_list *)
 in declarator_list *)
    function CALLGEOTAT(f : longint) : longint;    

{$else}

(* error 
#define CALLGEOTAT(f)
in define line 215 *)
{$endif}

{$ifndef XTTRACEMEMORY}


function __XtMalloc(para1:dword):Pchar;cdecl;external;

function __XtCalloc(para1:dword; para2:dword):Pchar;cdecl;external;
{$else}

    const
      __XtMalloc = XtMalloc;      
      __XtCalloc = XtCalloc;      
{$endif}
{$endif}


(* error 
/* DON'T ADD STUFF AFTER THIS #endif */

implementation

function XtDisplayOfObject(object : longint) : longint;
var
   if_local1, if_local2 : longint;
(* result types are not known *)
begin
  if XtIsWidget(object) then
    if_local1:=object^.(core.(screen^.display))
  else
    if_local1:=_XtIsHookObject(object);
  if if_local1 then
    if_local2:=(THookObject(object))^.(hooks.(screen^.display))
  else
    if_local2:=(_XtWindowedAncestor(object))^.(core.(screen^.display));
  XtDisplayOfObject:=if_local2;
end;

function XtScreenOfObject(object : longint) : longint;
var
   if_local1, if_local2 : longint;
(* result types are not known *)
begin
  if XtIsWidget(object) then
    if_local1:=object^.(core.screen)
  else
    if_local1:=_XtIsHookObject(object);
  if if_local1 then
    if_local2:=(THookObject(object))^.(hooks.screen)
  else
    if_local2:=(_XtWindowedAncestor(object))^.(core.screen);
  XtScreenOfObject:=if_local2;
end;

function XtWindowOfObject(object : longint) : longint;
var
   if_local1 : longint;
(* result types are not known *)
begin
  if XtIsWidget(object) then
    if_local1:=object
  else
    if_local1:=_XtWindowedAncestor(object);
  XtWindowOfObject:=(if_local1)^.(core.window);
end;

function XtIsManaged(object : longint) : longint;
var
   if_local1 : longint;
(* result types are not known *)
begin
  if XtIsRectObj(object) then
    if_local1:=object^.(core.managed)
  else
    if_local1:=_False;
  XtIsManaged:=if_local1;
end;

function XtIsSensitive(object : longint) : longint;
var
   if_local1 : longint;
(* result types are not known *)
begin
  if XtIsRectObj(object) then
    if_local1:=(object^.(core.sensitive)) and (@(object^.(core.ancestor_sensitive)))
  else
    if_local1:=_False;
  XtIsSensitive:=if_local1;
end;

    function XtSetBit(dst,src : longint) : longint;
    begin
      XtSetBit:=XtSetBits(dst,src,1);
    end;

    function XtMemcmp(b1,b2,size : longint) : longint;
    begin
      XtMemcmp:=memcmp(pointer(b1),pointer(b2),Tsize_t(size));
    end;

    function XtStackAlloc(size,stack_cache_array : longint) : longint;
    var
       if_local1 : longint;
    (* result types are not known *)
    begin
      if sizeof(stack_cache_array) then
        if_local1:=TXtPointer(stack_cache_array)
      else
        if_local1:=XtMalloc(TCardinal(size));
      XtStackAlloc:=size<=(if_local1);
    end;

    function CALLGEOTAT(f : longint) : longint;
    begin
      CALLGEOTAT:=f;
    end;


end.
