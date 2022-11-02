unit X11Window;

{$mode ObjFPC}{$H+}

interface

uses unixtype, ctypes, xlib, xutil, keysym, x,
  X11Component;

type

  { TX11Window }

  TX11Window = class(TObject)
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TX11Window }

constructor TX11Window.Create;
begin

end;

destructor TX11Window.Destroy;
begin
  inherited Destroy;
end;

end.
