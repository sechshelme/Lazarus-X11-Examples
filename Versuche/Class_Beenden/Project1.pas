program Project1;

uses
  Crt;

type

  { TTestClass }

  TTestClass = class(TObject)
    procedure Run;
  end;

  { TTestClass }

  procedure TTestClass.Run;
  var
    ch: char;
  begin
    ch := #0;
    repeat
      ch := ReadKey;
    until ch = #27;
  end;

var
  TestClass: TTestClass;

begin
  TestClass := TTestClass.Create;
  TestClass.Run;
  TestClass.Free;
end.
