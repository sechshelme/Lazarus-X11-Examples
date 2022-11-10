unit X11Window;

{$mode ObjFPC}{$H+}

interface

uses
  unixtype, ctypes, xlib, xutil, keysym, x,
  X11Component;

type

  { TX11Window }

  TX11Window = class(TX11Component)
  public
    AppClose: boolean; static;
    constructor Create(TheOwner: TX11Component; NewWindow: boolean = False);
    destructor Destroy; override;
    procedure DoOnEventHandle(var Event: TXEvent); override;
    procedure Run;
  end;

implementation

constructor TX11Window.Create(TheOwner: TX11Component; NewWindow: boolean);
begin
  inherited Create(TheOwner, NewWindow);
  Width := 640;
  Height := 480;
end;

destructor TX11Window.Destroy;
begin
  inherited Destroy;
end;

procedure TX11Window.DoOnEventHandle(var Event: TXEvent);
begin
  inherited DoOnEventHandle(Event);
  case Event._type of
    CreateNotify: begin
      //      WriteLn('create');
    end;
    ConfigureNotify: begin
    end;
  end;
end;

procedure TX11Window.Run;
var
  Event: TXEvent;
begin
  // Ereignisschleife
  while not AppClose do begin
    XNextEvent(dis, @Event);
    DoOnEventHandle(Event);
  end;
end;

end.
