{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit XExtension;

{$warn 5023 off : no warning about unused units}
interface

uses
  randr, Xrandr, shape, shapeconst, Xrender, render, Xdbe, dbe, composite, 
  Xcomposite, LazarusPackageIntf;

implementation

procedure Register;
begin
end;

initialization
  RegisterPackage('XExtension', @Register);
end.
