unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, SynEdit, FileUtil;

type

  { TForm1 }

  TForm1 = class(TForm)
    CreateBtn: TButton;
    SaveBtn: TButton;
    SynEdit1: TSynEdit;
    procedure CreateBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure SynEdit1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{
  Automatically converted by H2Pas 0.99.15 from x.h
  The following command line parameters were used:
    -p
    -T
    -S
    -d
    -c
    x.h
}


{ TForm1 }

procedure TForm1.CreateBtnClick(Sender: TObject);
var
  sl: TStringList;
  i: integer;
  cmd, qpath, zpath, qs, zs: string;
begin
  SynEdit1.Clear;
  SynEdit1.Lines.Add('#!/bin/bash');
  //  sl := FindAllFiles('/n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw', '*.h', True);
  sl := FindAllFiles('/usr/include/X11', '*.h', True);
  //  SynEdit1.Lines := sl;
  for i := 0 to sl.Count - 1 do begin
    qpath := ExtractFileDir(sl[i]);
    qs := ExtractFileName(sl[i]);
    zs := Copy(qs, 1, Length(qs) - 2);
    zpath := Copy(qpath, 17);
    zpath := '/n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units' + zpath;

    if not DirectoryExists(zpath) then begin
      MkDir(zpath);
    end;
    SynEdit1.Lines.Add('echo --- ' + qpath + qs);


//    cmd := 'h2pas ' + qpath +'/'+ qs + ' -p -T -S -d -c -o ' + zpath +'/'+ zs + '.pp';
    cmd := 'h2pas ' + qpath +'/'+ qs + ' -s -S -o ' + zpath +'/'+ zs + '.pp';
    SynEdit1.Lines.Add(cmd);
  end;
  SynEdit1.Lines.SaveToFile('cppToPas.sh');
  sl.Clear;
end;

procedure TForm1.SaveBtnClick(Sender: TObject);
begin
end;

procedure TForm1.SynEdit1Change(Sender: TObject);
begin

end;

end.
