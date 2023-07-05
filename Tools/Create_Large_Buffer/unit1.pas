unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  s:String;
  i, j: Integer;
begin
  Memo1.Lines.Clear;

    for j := 1 to 100000 do begin s:='';
  for i := 1 to 70 do begin
if i mod 8 = 0 then begin
      s:=s+ ' ';
    end else begin
      s :=s+ char(Random(26) + 65);
    end;
  end;
  Memo1.Lines.Add(IntToStr(j)+': '+ s+'\n\');

    end;
end;

end.

