//image image.png
(*
Verschiedene Varinaten um Rechtecke zu zeichnen:

- [XDrawRectangle](https://tronche.com/gui/x/xlib/graphics/filling-areas/XDrawRectangle.html)
- [XFillRectangle](https://tronche.com/gui/x/xlib/graphics/filling-areas/XFillRectangle.html)
- [XFillPolygon](https://tronche.com/gui/x/xlib/graphics/filling-areas/XFillPolygon.html) (Für ein nicht ausgefülltes Polygon nimmt man **XDrawLines**.)
*)
//lineal
//code+
program Project1;

uses
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
  X11Desktop;

type

  { TMyDesktop }

  TMyDesktop = class(TX11Desktop)
  private
    Panel, PanelSub1, PanelSub2: TX11Panel;
    Button: array[0..3] of TX11Button;
    CloseButton: TX11Button;
    SubWin: TX11Window;
    SubWinButton: TX11Button;
    procedure ButtonClick(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure CloseButtonMouseMove(Sender: TObject; X, Y: integer);
    procedure SubWinButtonClick(Sender: TObject);
  protected
    procedure DoOnPaint; override;
    procedure DoOnEventHandle(var Event: TXEvent); override;
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
    Color:=$FF;

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
      Width := 530;
      Height := 100;
      BorderWidth := 4;
      //      Anchors := [akRight, akBottom];
      //      Anchors := [akTop, akLeft, akRight, akBottom];
    end;

    PanelSub1 := TX11Panel.Create(Panel);
    with PanelSub1 do begin
      Color := $999999;
      Left := 10;
      Top := 10;
      Width := 370;
      Height := Panel.Height - 20;
      Bevel := bvLowred;
      //                  Anchors:=[akTop,akLeft, akRight, akBottom];
    end;

    PanelSub2 := TX11Panel.Create(Panel);
    with PanelSub2 do begin
      Color := $999999;
      Left := 390;
      Top := 10;
      Width := Panel.Width - PanelSub1.Width - 30;
      Height := Panel.Height - 20;
      Bevel := bvLowred;
      //      Anchors := [akTop, akLeft, akRight];
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
    end;
    Button[1].Color := $8888FF;
    Button[2].Color := $88FF88;
    Button[3].Color := $FF8888;

    CloseButton := TX11Button.Create(Self);
    with CloseButton do begin
      Left := 100;
      Top := 100;
      Width := 120;
      Height := 50;
      //      Anchors := [akRight, akBottom];
      //            Anchors:=[akTop,akLeft, akRight, akBottom];
      Caption := 'Close';
      OnClick := @CloseButtonClick;
      OnMouseMove := @CloseButtonMouseMove;
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
    XDrawRectangle(dis, win, gc, 10, 150, 50, 50);
    XFillRectangle(dis, win, gc, 110, 150, 50, 50);

    // Ein Polygon
    XFillPolygon(dis, win, gc, @punkte, Length(punkte) - 1, 0, CoordModeOrigin);
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
