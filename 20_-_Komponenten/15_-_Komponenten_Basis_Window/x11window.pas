unit X11Window;

{$mode ObjFPC}{$H+}

interface

uses
  unixtype, ctypes, xlib, xutil, keysym, x,
  X11Component;

type

  { TX11Window }

  TX11Window = class(TX11Component)
  private
  public
    AppClose: boolean; static;
    constructor Create(TheOwner: TX11Component);
    destructor Destroy; override;
    procedure DoOnEventHandle(var Event: TXEvent); override;
    procedure Run;
  end;

implementation

constructor TX11Window.Create(TheOwner: TX11Component);
begin

  // Erstellt das Fenster
  LastWindowWidth := 640;
  LastWindowHeight := 480;
  Width := LastWindowWidth;
  Height := LastWindowHeight;
  Anchors := [akTop, akLeft, akRight, akBottom];
  inherited Create(TheOwner);

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
      WriteLn('create');
    end;
    ConfigureNotify: begin
      LastWindowWidth := Event.xconfigure.Width;
      LastWindowHeight := Event.xconfigure.Height;
      WriteLn('Event.xconfigure.Width ',Event.xconfigure.Width);
      Width := LastWindowWidth;
      Height := LastWindowHeight;
    end;
  end;
  DoOnResize(Event.xconfigure.Width, Event.xconfigure.Height);
  //  inherited DoOnEventHandle(Event);
  case Event._type of
    CreateNotify: begin
    end;
    ConfigureNotify: begin
      //      Width := LastWindowWidth;
      //      Height := LastWindowHeight;
    end;
  end;
  //  inherited DoOnEventHandle(Event);

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
