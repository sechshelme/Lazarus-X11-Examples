unit libc;

interface

uses
  ctypes;

const
  lib_stdio='c';

type
  cFILE=Pointer;

var
  stdin :cFILE;cvar;external lib_stdio;
  stdout :cFILE;cvar;external lib_stdio;
  stderr :cFILE;cvar;external lib_stdio;

function printf(format:PChar):cint;varargs cdecl;external lib_stdio;
function fprintf(stream:cFILE; format:PChar):cint;varargs cdecl;external lib_stdio;
function fflush(stream:cFILE):cint; cdecl;external lib_stdio;

implementation

end.

