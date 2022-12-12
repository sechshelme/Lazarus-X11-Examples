
unit Atoms;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xmu/Atoms.h
  The following command line parameters were used:
    /usr/include/X11/Xmu/Atoms.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xmu/Atoms.pp
}

    Type
    PAtom  = ^Atom;
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
    AtomPtr = ^_AtomRec;

    var
      _XA_ATOM_PAIR : AtomPtr;cvar;external;

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
    function XmuInternAtom(dpy:PDisplay; atom_ptr:AtomPtr):Atom;

    procedure XmuInternStrings(dpy:PDisplay; names:PString; count:Cardinal; atoms_return:PAtom);

(* error 
 _Xconst char	*name
 in declarator_list *)
    function XmuNameOfAtom(atom_ptr:AtomPtr):^char;

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

    function XmuInternAtom(dpy:PDisplay; atom_ptr:AtomPtr):Atom;
    begin
      { You must implement this function }
    end;
    procedure XmuInternStrings(dpy:PDisplay; names:PString; count:Cardinal; atoms_return:PAtom);
    begin
      { You must implement this function }
    end;
    function XmuNameOfAtom(atom_ptr:AtomPtr):Pchar;
    begin
      { You must implement this function }
    end;

end.
