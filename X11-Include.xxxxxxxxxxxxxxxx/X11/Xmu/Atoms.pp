
unit Atoms;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/Atoms.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/Atoms.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/Atoms.pp
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
    PAtom  = ^Atom;
    PAtomPtr  = ^AtomPtr;
    PAtomRec  = ^AtomRec;
    Pchar  = ^char;
    PDisplay  = ^Display;
    PString  = ^String;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XMU_ATOMS_H_}
{$define _XMU_ATOMS_H_}
{$include <X11/Intrinsic.h>}
{$include <X11/Xfuncproto.h>}
type
  PAtomPtr = ^TAtomPtr;
  TAtomPtr = PAtomRec;
  var
    _XA_ATOM_PAIR : TAtomPtr;cvar;external;

function XA_ATOM_PAIR(d : longint) : longint;

function XA_CHARACTER_POSITION(d : longint) : longint;

function XA_CLASS(d : longint) : longint;

function XA_CLIENT_WINDOW(d : longint) : longint;

function XA_CLIPBOARD(d : longint) : longint;

function XA_COMPOUND_TEXT(d : longint) : longint;

function XA_DECNET_ADDRESS(d : longint) : longint;

function XA_DELETE(d : longint) : longint;

function XA_FILENAME(d : longint) : longint;

function XA_HOSTNAME(d : longint) : longint;

function XA_IP_ADDRESS(d : longint) : longint;

function XA_LENGTH(d : longint) : longint;

function XA_LIST_LENGTH(d : longint) : longint;

function XA_NAME(d : longint) : longint;

function XA_NET_ADDRESS(d : longint) : longint;

function XA_NULL(d : longint) : longint;

function XA_OWNER_OS(d : longint) : longint;

function XA_SPAN(d : longint) : longint;

function XA_TARGETS(d : longint) : longint;

function XA_TEXT(d : longint) : longint;

function XA_TIMESTAMP(d : longint) : longint;

function XA_USER(d : longint) : longint;

function XA_UTF8_STRING(d : longint) : longint;

(* error 
char *XmuGetAtomName
in declaration at line 95 *)
function XmuInternAtom(dpy:PDisplay; atom_ptr:TAtomPtr):TAtom;cdecl;external;
procedure XmuInternStrings(dpy:PDisplay; names:PString; count:TCardinal; atoms_return:PAtom);cdecl;external;
(* error 
 _Xconst char	*name
 in declarator_list *)
function XmuNameOfAtom(atom_ptr:TAtomPtr):Pchar;cdecl;external;
{$endif}

(* error 
#endif /* _XMU_ATOMS_H_ */

implementation

function XA_ATOM_PAIR(d : longint) : longint;
begin
  XA_ATOM_PAIR:=XmuInternAtom(d,_XA_ATOM_PAIR);
end;

function XA_CHARACTER_POSITION(d : longint) : longint;
begin
  XA_CHARACTER_POSITION:=XmuInternAtom(d,_XA_CHARACTER_POSITION);
end;

function XA_CLASS(d : longint) : longint;
begin
  XA_CLASS:=XmuInternAtom(d,_XA_CLASS);
end;

function XA_CLIENT_WINDOW(d : longint) : longint;
begin
  XA_CLIENT_WINDOW:=XmuInternAtom(d,_XA_CLIENT_WINDOW);
end;

function XA_CLIPBOARD(d : longint) : longint;
begin
  XA_CLIPBOARD:=XmuInternAtom(d,_XA_CLIPBOARD);
end;

function XA_COMPOUND_TEXT(d : longint) : longint;
begin
  XA_COMPOUND_TEXT:=XmuInternAtom(d,_XA_COMPOUND_TEXT);
end;

function XA_DECNET_ADDRESS(d : longint) : longint;
begin
  XA_DECNET_ADDRESS:=XmuInternAtom(d,_XA_DECNET_ADDRESS);
end;

function XA_DELETE(d : longint) : longint;
begin
  XA_DELETE:=XmuInternAtom(d,_XA_DELETE);
end;

function XA_FILENAME(d : longint) : longint;
begin
  XA_FILENAME:=XmuInternAtom(d,_XA_FILENAME);
end;

function XA_HOSTNAME(d : longint) : longint;
begin
  XA_HOSTNAME:=XmuInternAtom(d,_XA_HOSTNAME);
end;

function XA_IP_ADDRESS(d : longint) : longint;
begin
  XA_IP_ADDRESS:=XmuInternAtom(d,_XA_IP_ADDRESS);
end;

function XA_LENGTH(d : longint) : longint;
begin
  XA_LENGTH:=XmuInternAtom(d,_XA_LENGTH);
end;

function XA_LIST_LENGTH(d : longint) : longint;
begin
  XA_LIST_LENGTH:=XmuInternAtom(d,_XA_LIST_LENGTH);
end;

function XA_NAME(d : longint) : longint;
begin
  XA_NAME:=XmuInternAtom(d,_XA_NAME);
end;

function XA_NET_ADDRESS(d : longint) : longint;
begin
  XA_NET_ADDRESS:=XmuInternAtom(d,_XA_NET_ADDRESS);
end;

function XA_NULL(d : longint) : longint;
begin
  XA_NULL:=XmuInternAtom(d,_XA_NULL);
end;

function XA_OWNER_OS(d : longint) : longint;
begin
  XA_OWNER_OS:=XmuInternAtom(d,_XA_OWNER_OS);
end;

function XA_SPAN(d : longint) : longint;
begin
  XA_SPAN:=XmuInternAtom(d,_XA_SPAN);
end;

function XA_TARGETS(d : longint) : longint;
begin
  XA_TARGETS:=XmuInternAtom(d,_XA_TARGETS);
end;

function XA_TEXT(d : longint) : longint;
begin
  XA_TEXT:=XmuInternAtom(d,_XA_TEXT);
end;

function XA_TIMESTAMP(d : longint) : longint;
begin
  XA_TIMESTAMP:=XmuInternAtom(d,_XA_TIMESTAMP);
end;

function XA_USER(d : longint) : longint;
begin
  XA_USER:=XmuInternAtom(d,_XA_USER);
end;

function XA_UTF8_STRING(d : longint) : longint;
begin
  XA_UTF8_STRING:=XmuInternAtom(d,_XA_UTF8_STRING);
end;


end.
