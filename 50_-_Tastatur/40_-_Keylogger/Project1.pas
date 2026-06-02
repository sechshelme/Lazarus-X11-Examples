program Project1;

uses
  unixtype,
  xlib,
  xutil,
  keysym,
  x;

var
  dis: PDisplay;
  i: integer;
  bit, keycode: byte;
  keys_return: pchararr32;
  sym: TKeySym;
  name: pansichar;

  function usleep(__useconds: int64): longint; cdecl; external 'c';


begin
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;

  repeat
    XQueryKeymap(dis, keys_return);

    for i := 0 to 21 do begin
      if keys_return[i] <> #0 then begin
        for  bit := 0 to 7 do begin
          if integer(keys_return[i]) and (1 shl bit) <> 0 then begin
            keycode := i * 8 + bit;
            sym := XKeycodeToKeysym(dis, keycode, 0);
            name := XKeysymToString(sym);

            if name <> nil then begin
              WriteLn('Taste gedrückt: ', name);
            end;
          end;
        end;
      end;
    end;
    usleep(100000);

  until False;

  XCloseDisplay(dis);
end.
