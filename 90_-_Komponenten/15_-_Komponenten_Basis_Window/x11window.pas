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
  end;

implementation

constructor TX11Window.Create(TheOwner: TX11Component; NewWindow: boolean);
begin
  inherited Create(TheOwner, NewWindow);
  Width := 640;
  Height := 480;
  Name:='window';
end;

destructor TX11Window.Destroy;
begin
  inherited Destroy;
end;

end.
