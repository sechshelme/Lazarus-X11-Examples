
unit Misc;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xmu/Misc.h
  The following command line parameters were used:
    /usr/include/X11/Xmu/Misc.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xmu/Misc.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef _Xmu_Misc_h}
{$define _Xmu_Misc_h}  

  const
    MAXDIMENSION = (1 shl 31)-1;    

  function Max(x,y : longint) : longint;  

  function Min(x,y : longint) : longint;  

(* error 
#define AssignMax(x, y)	{if ((y) > (x)) x = (y);}
in declaration at line 60 *)
(* error 
#define AssignMax(x, y)	{if ((y) > (x)) x = (y);}
in declaration at line 61 *)
(* error 
#define AssignMin(x, y)	{if ((y) < (x)) x = (y);}
{$endif}


implementation

  function Max(x,y : longint) : longint;
  var
     if_local1 : longint;
  (* result types are not known *)
  begin
    if x>y then
      if_local1:=x
    else
      if_local1:=y;
    Max:=if_local1;
  end;

  function Min(x,y : longint) : longint;
  var
     if_local1 : longint;
  (* result types are not known *)
  begin
    if x<y then
      if_local1:=x
    else
      if_local1:=y;
    Min:=if_local1;
  end;


end.