unit X11Desktop;

{$mode ObjFPC}{$H+}

interface

uses
  unixtype, ctypes, xlib, xutil, keysym, x,
  X11Component, X11Window;

function setlocale(cat: integer; p: PChar): cint; cdecl; external 'c';

type

  { TX11Desktop }

  TX11Desktop = class(TX11Window)
  protected
    procedure DoOnEventHandle(var Event: TXEvent); override;
  public
    constructor Create(TheOwner: TX11Component);
    destructor Destroy; override;
  end;

implementation

{ TX11Desktop }

constructor TX11Desktop.Create(TheOwner: TX11Component);
begin
  // Erstellt die Verbindung zum Server
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;

// UTF8 Key
  if setlocale(0 {LC_ALL}, '') = 0 then begin
    WriteLn('setlocale Fehler');
  end;
//    XSetLocaleModifiers('');

  xim := XOpenIM(dis, nil, nil, nil);
  if xim = nil then begin
    // fallback to internal input method
    XSetLocaleModifiers('@im=none');
    xim := XOpenIM(dis, nil, nil, nil);
  end;
  // End UTF8 Key


  scr := DefaultScreen(dis);
  gc := DefaultGC(dis, scr);
  RootWin := RootWindow(dis, scr);

  // [X] abfangen
  wm_delete_window := XInternAtom(dis, 'WM_DELETE_WINDOW', False);

  inherited Create(TheOwner);
end;

destructor TX11Desktop.Destroy;
begin
  XCloseDisplay(dis);
  inherited Destroy;
end;

procedure TX11Desktop.DoOnEventHandle(var Event: TXEvent);
var
  i: integer;
begin
  case Event._type of
    DestroyNotify: begin
      WriteLn(Event.xbutton.window);
      for i := 0 to Length(ComponentList) - 1 do begin
        if Event.xbutton.window = ComponentList[i].Window then begin
          ComponentList[i].Free;
          WriteLn('Close Command');
          Break;
        end;
      end;
    end;
    ClientMessage: begin
      if (Event.xclient.Data.l[0] = wm_delete_window) then begin
        for i := 0 to Length(ComponentList) - 1 do begin
          if Event.xbutton.window = ComponentList[i].Window then begin
            ComponentList[i].Free;
//            WriteLn('[X] wurde gedrückt');
            Break;
          end;
        end;
        if Event.xbutton.window = Window then begin
          AppClose := True;
        end;
      end;
    end;
  end;

  inherited DoOnEventHandle(Event);
end;

end.
