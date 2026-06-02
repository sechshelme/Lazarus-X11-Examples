{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit PlotLib;

{$warn 5023 off : no warning about unused units}
interface

uses
  plot, LazarusPackageIntf;

implementation

procedure Register;
begin
end;

initialization
  RegisterPackage('PlotLib', @Register);
end.
