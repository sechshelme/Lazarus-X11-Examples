
unit Xmd;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xmd.h
  The following command line parameters were used:
    /usr/include/X11/Xmd.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xmd.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef XMD_H}

  const
    XMD_H = 1;    


{$if defined(__sun) && defined(__SVR4)}
{$include <sys/isa_defs.h> /* Solaris: defines _LP64 if necessary */}
{$endif}
{$if defined(__SIZEOF_LONG__)}
{$if __SIZEOF_LONG__ == 8}

{$define LONG64}  
{$endif}
{$else defined (_LP64) || defined(__LP64__) || \}
(* error 
     defined(__alpha) || defined(__alpha__) || \
{$if !defined(__ILP32__) /* amd64-x32 is 32bit */}

{$endif}

{$endif}




{$ifdef LONG64}
 in declarator_list *)

  type
    INT32 = longint;
{$else}

  type
    INT32 = longint;
{$endif}

  type
    INT16 = smallint;

    INT8 = char;
{$ifdef LONG64}

  type
    CARD64 = dword;

    CARD32 = dword;
{$else}

  type
    CARD64 = qword;

    CARD32 = dword;
{$endif}

  type
    CARD16 = word;

    CARD8 = byte;

    BITS32 = CARD32;

    BITS16 = CARD16;

    BYTE = CARD8;

    BOOL = CARD8;


  function cvtINT8toInt(val : longint) : longint;  

  function cvtINT16toInt(val : longint) : longint;  

  function cvtINT32toInt(val : longint) : longint;  

  function cvtINT8toShort(val : longint) : longint;  

  function cvtINT16toShort(val : longint) : longint;  

  function cvtINT32toShort(val : longint) : longint;  

  function cvtINT8toLong(val : longint) : longint;  

  function cvtINT16toLong(val : longint) : longint;  

  function cvtINT32toLong(val : longint) : longint;  


  function NEXTPTR(p,t : longint) : longint;  

{$endif}


implementation

  function cvtINT8toInt(val : longint) : longint;
  begin
    cvtINT8toInt:=val;
  end;

  function cvtINT16toInt(val : longint) : longint;
  begin
    cvtINT16toInt:=val;
  end;

  function cvtINT32toInt(val : longint) : longint;
  begin
    cvtINT32toInt:=val;
  end;

  function cvtINT8toShort(val : longint) : longint;
  begin
    cvtINT8toShort:=val;
  end;

  function cvtINT16toShort(val : longint) : longint;
  begin
    cvtINT16toShort:=val;
  end;

  function cvtINT32toShort(val : longint) : longint;
  begin
    cvtINT32toShort:=val;
  end;

  function cvtINT8toLong(val : longint) : longint;
  begin
    cvtINT8toLong:=val;
  end;

  function cvtINT16toLong(val : longint) : longint;
  begin
    cvtINT16toLong:=val;
  end;

  function cvtINT32toLong(val : longint) : longint;
  begin
    cvtINT32toLong:=val;
  end;

  function NEXTPTR(p,t : longint) : longint;
  begin
    NEXTPTR:=(pt(p))+1;
  end;


end.
