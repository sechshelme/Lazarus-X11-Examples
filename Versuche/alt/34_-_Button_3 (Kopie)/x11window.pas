unit X11Window;

{$mode ObjFPC}{$H+}

interface

uses
  unixtype, ctypes, xlib, xutil, keysym, x,
  X11Component;

type

  { TX11Window }

  TX11Window = class(TX11Component)
    constructor Create(TheOwner: TX11Component);
    destructor Destroy; override;
  end;

implementation

{ TX11Window }

constructor TX11Window.Create(TheOwner: TX11Component);
begin
  inherited Create(TheOwner);
end;

destructor TX11Window.Destroy;
begin
  inherited Destroy;
end;

end.
