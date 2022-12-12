
unit extutil;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/extutil.h
  The following command line parameters were used:
    /usr/include/X11/extensions/extutil.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/extutil.pp
}

    Type
    Pchar  = ^char;
    PDisplay  = ^Display;
    Plongint  = ^longint;
    PxError  = ^xError;
    PXEvent  = ^XEvent;
    PXExtCodes  = ^XExtCodes;
    PXExtensionInfo  = ^XExtensionInfo;
    PXFontStruct  = ^XFontStruct;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _EXTUTIL_H_}
{$define _EXTUTIL_H_}  
{$include <X11/extensions/Xext.h>}






  type
    _XExtDisplayInfo = record
        next : ^_XExtDisplayInfo;
        display : ^Display;
        codes : ^XExtCodes;
        data : XPointer;
      end;
    XExtDisplayInfo = _XExtDisplayInfo;




    _XExtensionInfo = record
        head : ^XExtDisplayInfo;
        cur : ^XExtDisplayInfo;
        ndisplays : longint;
      end;
    XExtensionInfo = _XExtensionInfo;












    _XExtensionHooks = record
        create_gc : function (_para1:PDisplay; _para2:GC; _para3:PXExtCodes):longint;cdecl;
        copy_gc : function (_para1:PDisplay; _para2:GC; _para3:PXExtCodes):longint;cdecl;
        flush_gc : function (_para1:PDisplay; _para2:GC; _para3:PXExtCodes):longint;cdecl;
        free_gc : function (_para1:PDisplay; _para2:GC; _para3:PXExtCodes):longint;cdecl;
        create_font : function (_para1:PDisplay; _para2:PXFontStruct; _para3:PXExtCodes):longint;cdecl;
        free_font : function (_para1:PDisplay; _para2:PXFontStruct; _para3:PXExtCodes):longint;cdecl;
        close_display : function (_para1:PDisplay; _para2:PXExtCodes):longint;cdecl;
        wire_to_event : function (_para1:PDisplay; _para2:PXEvent; _para3:PxEvent):Bool;cdecl;
        event_to_wire : function (_para1:PDisplay; _para2:PXEvent; _para3:PxEvent):Status;cdecl;
        error : function (_para1:PDisplay; _para2:PxError; _para3:PXExtCodes; _para4:Plongint):longint;cdecl;
        error_string : function (_para1:PDisplay; _para2:longint; _para3:PXExtCodes; _para4:Pchar; _para5:longint):Pchar;cdecl;
      end;
    XExtensionHooks = _XExtensionHooks;

  function XextCreateExtension:^XExtensionInfo;cdecl;


  procedure XextDestroyExtension(_para1:PXExtensionInfo);cdecl;

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

  function XextRemoveDisplay(_para1:PXExtensionInfo; _para2:PDisplay):longint;cdecl;


  function XextFindDisplay(_para1:PXExtensionInfo; _para2:PDisplay):^XExtDisplayInfo;cdecl;

  function XextHasExtension(i : longint) : i;  

(* error 
  if (!XextHasExtension(i)) { XMissingExtension (dpy, name); return val; }
in declaration at line 142 *)

      var
        val : return;cvar;public;
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

  function XextHasExtension(i : longint) : i;
  begin
    XextHasExtension:=i(@(@(i^.codes)));
  end;


end.
