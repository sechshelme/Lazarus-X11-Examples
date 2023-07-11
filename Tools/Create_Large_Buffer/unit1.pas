unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

//  {$i buffer.inc}

implementation

{$R *.lfm}

{ TForm1 }

const
//  Count = 200000;
  Count = 50000;

procedure TForm1.Button1Click(Sender: TObject);
var
  s: string;
  i, j: integer;
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Add('static char * MyBuffer = "\');
  for j := 1 to Count do begin
    s := '';
    for i := 1 to 70 do begin
      if i mod 8 = 0 then begin
        s := s + ' ';
      end else begin
        s := s + char(Random(10) + 48);
      end;
    end;
    Memo1.Lines.Add(IntToStr(j) + ': ' + s + '\n\');

  end;
  Memo1.Lines.Add('\0";');
  Memo1.Lines.SaveToFile('buffer.c');
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  s: string;
  i, j: integer;
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Add('const MyBuffer : PChar =');
  for j := 1 to Count do begin
    s := '';
    for i := 1 to 70 do begin
      if i mod 8 = 0 then begin
        s := s + ' ';
      end else begin
        s := s + char(Random(10) + 48);
      end;
    end;
    Memo1.Lines.Add('  ''' + IntToStr(j) + ': ' + s + '''#10 +');
  end;
  Memo1.Lines.Add('  '' '';');
  Memo1.Lines.SaveToFile('buffer.inc');
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  s: string;
  i, j: integer;
begin
  Memo1.Lines.Clear;
  s := 'const MyBuffer : PChar = ';
  for j := 1 to Count do begin
    for i := 1 to 70 do begin
      s := s + '#' + IntToStr(Random(10) + 48);
    end;
  end;
  Memo1.Lines.Add(s + ';');
  Memo1.Lines.SaveToFile('test.inc');
end;

end.
