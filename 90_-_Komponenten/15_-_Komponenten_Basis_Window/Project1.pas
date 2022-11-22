//image image.png
(*
Ein Beispiel wie man ein Widget mit Buttons und Panels erstellt.
Dabei bekommt jede Komponente ein eigenes Window.
*)
//lineal
//code+
program Project1;

uses
  heaptrc,
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  x,
  X11Button,
  X11Component,
  X11Panel,
  X11Window,
  X11Desktop,
  MyWindow;

type

  { TMyDesktop }

  TMyDesktop = class(TX11Desktop)
  private
    Panel, PanelSub1, PanelSub2: TX11Panel;
    Button: array[0..3] of TX11Button;
    NewButton, CloseButton: TX11Button;

    SubWin: TX11Window;
    SubWinButton: TX11Button;
    procedure ButtonClick(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure CloseButtonMouseMove(Sender: TObject; X, Y: integer);
    procedure MyDesktopKeyPress(Sender: TObject; UTF8Char: TUTF8Char);
    procedure NewButtonClick(Sender: TObject);
    procedure NewButtonPaint(Sender: TObject; ADisplay: PDisplay; AWindowwin: TDrawable; AGC: TGC);
    procedure SubWinButtonClick(Sender: TObject);
  protected
    procedure DoOnEventHandle(var Event: TXEvent); override;
    procedure DoOnPaint; override;
  public
    constructor Create(TheOwner: TX11Component);
    destructor Destroy; override;
  end;

var
  MyDesktop: TMyDesktop;

  { TMyWin }

  procedure TMyDesktop.ButtonClick(Sender: TObject);
  begin
    WriteLn(TX11Button(Sender).Caption);
  end;

  procedure TMyDesktop.CloseButtonClick(Sender: TObject);
  begin
    AppClose := True;
  end;

  procedure TMyDesktop.CloseButtonMouseMove(Sender: TObject; X, Y: integer);
  begin
    WriteLn('move: ', x, '  ', y);
  end;

  procedure TMyDesktop.MyDesktopKeyPress(Sender: TObject; UTF8Char: TUTF8Char);
  begin
    WriteLn(TX11Button(Sender).Caption, ' Key: ', UTF8Char);
  end;

  procedure TMyDesktop.NewButtonClick(Sender: TObject);
  var
    Mywindow: TMyWindow;
  begin
    Mywindow := TMyWindow.Create(Self);
  end;

  procedure TMyDesktop.NewButtonPaint(Sender: TObject; ADisplay: PDisplay; AWindowwin: TDrawable; AGC: TGC);
  begin
    XSetForeground(ADisplay, AGC, $FF);
    XDrawRectangle(ADisplay, AWindowwin, AGC, 5, 5, 50, 50);
  end;

  procedure TMyDesktop.SubWinButtonClick(Sender: TObject);
  begin
    WriteLn('Hello World');
  end;

  constructor TMyDesktop.Create(TheOwner: TX11Component);
  var
    i: integer;
    s: string;
  begin
    inherited Create(TheOwner);
    Color := $FF;

    Width := 680;
    Height := 480;

    Caption := 'Mein Fenster';

    SubWin := TX11Window.Create(Self, True);
    with SubWin do begin
      Height := 45;
      Width := 95;
    end;

    SubWinButton := TX11Button.Create(SubWin);
    with SubWinButton do begin
      Left := 10;
      Top := 10;
      Caption := 'Hallo';
      OnClick := @SubWinButtonClick;
    end;


    Panel := TX11Panel.Create(Self);
    with Panel do begin
      Left := 10;
      Top := 10;
      Width := Self.Width - 20;
      Height := 100;
      BorderWidth := 4;
      Anchors := [akTop, akLeft, akRight, akBottom];
    end;

    PanelSub1 := TX11Panel.Create(Panel);
    with PanelSub1 do begin
      Color := $999999;
      Left := 10;
      Top := 10;
      Width := 370;
      Height := Panel.Height - 20;
      Bevel := bvLowred;
      Anchors := [akTop, akLeft, akBottom];
    end;

    PanelSub2 := TX11Panel.Create(Panel);
    with PanelSub2 do begin
      Color := $999999;
      Left := 390;
      Top := 10;
      Width := Panel.Width - PanelSub1.Width - 30;
      Height := Panel.Height - 20;
      Bevel := bvLowred;
      Anchors := [akTop, akLeft, akRight, akBottom];
    end;

    for i := 0 to Length(Button) - 1 do begin
      Button[i] := TX11Button.Create(PanelSub1);
      Button[i].Width := 80;
      Button[i].Left := 10 + i * (Button[0].Width + 5);
      Button[i].Top := 10;

      str(i, s);
      Button[i].Caption := 'Button' + s;
      Button[i].Name := 'Button' + s;
      Button[i].OnClick := @ButtonClick;
      Button[i].OnKeyPress := @MyDesktopKeyPress;
    end;
    Button[1].Color := $8888FF;
    Button[2].Color := $88FF88;
    Button[3].Color := $FF8888;

    CloseButton := TX11Button.Create(Self);
    with CloseButton do begin
      Top := 120;
      Left := 100;
      Width := 120;
      Height := 50;
      Anchors := [akRight, akBottom];
      Caption := 'Close';
      Color := $BB2222;
      OnClick := @CloseButtonClick;
      OnMouseMove := @CloseButtonMouseMove;
    end;

    NewButton := TX11Button.Create(Self);
    with NewButton do begin
      Anchors := [akRight, akBottom];
      Top := 120;
      Left := 250;
      Height := 50;
      Width := 120;
      Caption := 'New';
      OnClick := @NewButtonClick;
      OnPaint := @NewButtonPaint;
    end;
  end;

  destructor TMyDesktop.Destroy;
  begin
    inherited Destroy;
  end;

  procedure TMyDesktop.DoOnPaint;
  const
    maxSektoren = 8;
  var
    punkte: array[0..maxSektoren] of TXPoint;
    i: integer;
  begin
    inherited DoOnPaint;

    for i := 0 to maxSektoren - 1 do begin
      punkte[i].x := round(Sin(Pi * 2 / (maxSektoren - 1) * i) * 50) + 250;
      punkte[i].y := round(Cos(Pi * 2 / (maxSektoren - 1) * i) * 50) + 220;
    end;

    XSetForeground(dis, gc, $FF00FF);
    XDrawRectangle(dis, Window, gc, 10, 150, 50, 50);
    XFillRectangle(dis, Window, gc, 110, 150, 50, 50);

    // Ein Polygon
    XFillPolygon(dis, Window, gc, @punkte, Length(punkte) - 1, 0, CoordModeOrigin);
  end;

  procedure TMyDesktop.DoOnEventHandle(var Event: TXEvent);
  begin
    inherited DoOnEventHandle(Event);
    case Event._type of
      KeyPress: begin
        if XLookupKeysym(@Event.xkey, 0) = XK_Escape then begin
          AppClose := True;
        end;
      end;
    end;
  end;

begin
  MyDesktop := TMyDesktop.Create(nil);
  MyDesktop.Run;
  MyDesktop.Free;
end.
//code-
