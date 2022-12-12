
unit extutil;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/extutil.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/extutil.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/extutil.pp
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
    PDisplay  = ^Display;
    Plongint  = ^longint;
    PxError  = ^xError;
    PXEvent  = ^XEvent;
    PXExtCodes  = ^XExtCodes;
    PXExtDisplayInfo  = ^XExtDisplayInfo;
    PXExtensionHooks  = ^XExtensionHooks;
    PXExtensionInfo  = ^XExtensionInfo;
    PXFontStruct  = ^XFontStruct;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _EXTUTIL_H_}
{$define _EXTUTIL_H_}
{$include <X11/extensions/Xext.h>}





type
  PXExtDisplayInfo = ^TXExtDisplayInfo;
  TXExtDisplayInfo = record
      next : PXExtDisplayInfo;
      display : PDisplay;
      codes : PXExtCodes;
      data : TXPointer;
    end;




  PXExtensionInfo = ^TXExtensionInfo;
  TXExtensionInfo = record
      head : PXExtDisplayInfo;
      cur : PXExtDisplayInfo;
      ndisplays : longint;
    end;












  PXExtensionHooks = ^TXExtensionHooks;
  TXExtensionHooks = record
      create_gc : function (para1:PDisplay; para2:TGC; para3:PXExtCodes):longint;cdecl;
      copy_gc : function (para1:PDisplay; para2:TGC; para3:PXExtCodes):longint;cdecl;
      flush_gc : function (para1:PDisplay; para2:TGC; para3:PXExtCodes):longint;cdecl;
      free_gc : function (para1:PDisplay; para2:TGC; para3:PXExtCodes):longint;cdecl;
      create_font : function (para1:PDisplay; para2:PXFontStruct; para3:PXExtCodes):longint;cdecl;
      free_font : function (para1:PDisplay; para2:PXFontStruct; para3:PXExtCodes):longint;cdecl;
      close_display : function (para1:PDisplay; para2:PXExtCodes):longint;cdecl;
      wire_to_event : function (para1:PDisplay; para2:PXEvent; para3:PxEvent):TBool;cdecl;
      event_to_wire : function (para1:PDisplay; para2:PXEvent; para3:PxEvent):TStatus;cdecl;
      error : function (para1:PDisplay; para2:PxError; para3:PXExtCodes; para4:Plongint):longint;cdecl;
      error_string : function (para1:PDisplay; para2:longint; para3:PXExtCodes; para4:Pchar; para5:longint):Pchar;cdecl;
    end;

function XextCreateExtension:PXExtensionInfo;cdecl;external;

procedure XextDestroyExtension(para1:PXExtensionInfo);cdecl;external;
(* error 
    _Xconst char*	/* ext_name */,
(* error 
    XExtensionHooks*	/* hooks */,
(* error 
    int			/* nevents */,

(* error 
);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

function XextRemoveDisplay(para1:PXExtensionInfo; para2:PDisplay):longint;cdecl;external;

function XextFindDisplay(para1:PXExtensionInfo; para2:PDisplay):PXExtDisplayInfo;cdecl;external;
function XextHasExtension(i : longint) : Ti;

(* error 
  if (!XextHasExtension(i)) { XMissingExtension (dpy, name); return val; }
in declaration at line 142 *)
      var
        val : Treturn;cvar;public;
(* error 
  if (!XextHasExtension(i)) { XMissingExtension (dpy, name); return val; }
in declaration at line 144 *)
(* error 
  if (!XextHasExtension(i)) { XMissingExtension (dpy, name); return; }
in declaration at line 144 *)
(* error 
  if (!XextHasExtension(i)) { XMissingExtension (dpy, name); return; }

in declaration at line 156 *)
(* error 
    XExtDisplayInfo *dpyinfo; \
(* error 
    if (!extinfo) { if (!(extinfo = XextCreateExtension())) return NULL; } \
in declaration at line 157 *)
(* error 
    if (!extinfo) { if (!(extinfo = XextCreateExtension())) return NULL; } \
in declaration at line 159 *)
(* error 
      dpyinfo = XextAddDisplay (extinfo,dpy,extname,hooks,nev,data); \
(* error 
    return dpyinfo; \
in declaration at line 160 *)
(* error 
    return dpyinfo; \
(* error 
}
in define line 164 *)
(* error 
int proc (Display *dpy, XExtCodes *codes) \
in declaration at line 169 *)
(* error 
    return XextRemoveDisplay (extinfo, dpy); \
(* error 
}
in define line 173 *)
(* error 
char *proc (Display *dpy, int code, XExtCodes *codes, char *buf, int n) \
in declaration at line 178 *)
(* error 
    code -= codes->first_error;  \
(* error 
    if (code >= 0 && code < nerr) { \
in declaration at line 180 *)
(* error 
	char tmp[256]; \
(* error 
	snprintf (tmp, sizeof(tmp), "%s.%d", extname, code);            \
in declaration at line 181 *)
(* error 
	snprintf (tmp, sizeof(tmp), "%s.%d", extname, code);            \
(* error 
	XGetErrorDatabaseText (dpy, "XProtoError", tmp, errl[code], buf, n); \
in declaration at line 182 *)
(* error 
	XGetErrorDatabaseText (dpy, "XProtoError", tmp, errl[code], buf, n); \
(* error 
	return buf; \
in declaration at line 183 *)
(* error 
	return buf; \
(* error 
    } \
in declaration at line 185 *)
(* error 
    return (char *)0; \
(* error 
}
in define line 189 *)
{$endif}

implementation

function XextHasExtension(i : longint) : Ti;
begin
  XextHasExtension:=Ti(@(@(i^.codes)));
end;


end.
