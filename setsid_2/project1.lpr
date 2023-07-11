program project1;

uses
  ctypes;

  procedure setsid; cdecl; external 'c';
  function fork: cint; cdecl; external 'c';
  function getpgrp: cint; cdecl; external 'c';
  function sleep(sec: cint): cint; cdecl; external 'c';

  procedure main;
  begin
    WriteLn('begin');
    if fork <> 0 then begin
      setsid;
      repeat
        Write('A');
      until False;;
    end else begin
      repeat
        Write('B');
      until False;;
    end;
    WriteLn('end');
  end;

begin
  WriteLn('begin');
  fork;
  WriteLn(1);
  setsid;

  fork;
  WriteLn(2);
  setsid;


  WriteLn('end');

//
//  WriteLn('begin');
//  WriteLn('1: ',fork);
//  setsid;
//  WriteLn('2: ',fork);
//  setsid;
//  WriteLn('3: ',fork);
//  setsid;
//  WriteLn('4: ',fork);
//  setsid;
//  WriteLn('end');
//

//  main;
end.
