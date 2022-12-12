unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, SynEdit, FileUtil;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    SynEdit1: TSynEdit;
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
  sl: TStringList;
  i: Integer;
  s: String;
begin
  SynEdit1.Clear;
  sl := FindAllFiles('/n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw', '*.h', True);
//  SynEdit1.Lines := sl;
  for i := 0 to sl.Count - 1 do begin
    SynEdit1.Lines.Add(ExtractFileName(sl[i]));
    SynEdit1.Lines.Add(ExtractFilePath(sl[i]));
    SynEdit1.Lines.Add(ExtractFileExt(sl[i]));


    s := sl[i];

    s:='h2pas Scrollbar.h -p -T -S -d -c -o test.pas'
  end;


  sl.Clear;

end;

end.
