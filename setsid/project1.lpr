program project1;

uses
  ctypes;

type
  Tpa2 = array[0..1] of cint;

  procedure setsid; cdecl; external 'c';
  function pipe(pipedes: Tpa2): cint; cdecl; external 'c';
  function fork: cint; cdecl; external 'c';
  function getpgrp: cint; cdecl; external 'c';
  function _write(fd: cint; buf: Pointer; n: SizeInt): SizeInt; cdecl; external 'c' Name 'write';
  function _read(fd: cint; buf: Pointer; n: SizeInt): SizeInt; cdecl; external 'c' Name 'read';
  function sleep(sec: cint): cint; cdecl; external 'c';

  procedure main;
  var
    pid: cint = 0;
    p: Tpa2 = (0, 0);
    c: char = '?';
    i: integer;
  begin
    WriteLn('begin');
    if pipe(p) <> 0 then begin
      WriteLn('pipe() error');
    end else if (pid = fork) = False then begin
      WriteLn('1. child''s process group id is ', getpgrp);
      _write(p[1], @c, 1);
      setsid;
      WriteLn('2. child''s process group id is now ', getpgrp);
      Halt(0);
    end else begin
      WriteLn('3. child''s process group id is ', getpgrp);
      _read(p[0], @c, 1);
      for i := 0 to 9 do begin
        sleep(1);
        WriteLn(i);
      end;
    end;
    WriteLn('end');
  end;

begin
  main;
end.
