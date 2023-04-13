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

procedure Find_Enum_End(sl: TStrings; p: integer);
var
  s: string;

begin
  WriteLn(p);
  repeat
    s := sl[p];
    if Pos('}', s) <> 0 then begin
      WriteLn('---------',p,'     ',Pos('}', s));
      Insert('blabla', s, pos('}', s) + 1);
      sl[p] := s;
      Exit;
    end;
    Inc(p);
  until False;

  //
  //  Dec(p);
  //  repeat
  //    Inc(p);
  //    s := sl[p];
  //  until Pos('}', s) <> 0;
  //  Insert('blabla', s, pos('}', s) + 1);
  //  sl[p] := s;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i: integer;
begin
  memo1.Lines.LoadFromFile('/n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/Athena_Widget/include/Xm/in_Arbeit/Xm.h');

  for i := 0 to memo1.Lines.Count - 1 do begin
//    s := Memo1.Lines[i];
    Memo1.Lines[i] := StringReplace(Memo1.Lines[i], 'externalref', 'extern', []);
    Memo1.Lines[i] := StringReplace(Memo1.Lines[i], 'register int', 'int', []);
    if pos('enum', Memo1.Lines[i]) = 1 then begin
      Memo1.Lines[i] := StringReplace(Memo1.Lines[i], 'enum', 'typedef enum', []);
//      Memo1.Lines[i] := s;
      Find_Enum_End(Memo1.Lines, i);
    end;
  end;

  memo1.Lines.SaveToFile('/n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/Athena_Widget/include/Xm/in_Arbeit/XmXm.h');
end;

end.
