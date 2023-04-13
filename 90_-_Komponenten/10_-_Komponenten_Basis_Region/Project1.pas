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
  heaptrc,
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  x,
  Button,
  Component,
  Panel,
  Window;

type

  { TMyWin }

  TMyWin = class(TX11Window)
  private
    Panel, PanelSub1, PanelSub2: TX11Panel;
    Button: array[0..3] of TX11Button;
    CloseButton: TX11Button;
    procedure ButtonClick(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure CloseButtonMouseMove(Sender: TObject; X, Y: integer);
  protected
    procedure DoOnPaint; override;
    procedure DoOnEventHandle(var Event: TXEvent); override;
  public
    constructor Create(TheOwner: TX11Component);
    destructor Destroy; override;
  end;

var
  MyWindows: TMyWin;

  { TMyWin }

  procedure TMyWin.ButtonClick(Sender: TObject);
  begin
    WriteLn(TX11Button(Sender).Caption);
  end;

  procedure TMyWin.CloseButtonClick(Sender: TObject);
  begin
    AppClose := True;
  end;

  procedure TMyWin.CloseButtonMouseMove(Sender: TObject; X, Y: integer);
  begin
    WriteLn('move: ', x, '  ', y);
  end;

  constructor TMyWin.Create(TheOwner: TX11Component);
  var
    i: integer;
    s: string;
  begin
    inherited Create(TheOwner);

    Color := $999999;

    Panel := TX11Panel.Create(Self);
    with Panel do begin
      Left := 10;
      Top := 10;
      Width := 530;
      Height := 100;
      BorderWidth := 4;
    end;

    PanelSub1 := TX11Panel.Create(Panel);
    with PanelSub1 do begin
      Color := $999999;
      Left := 10;
      Top := 10;
      Width := 370;
      Height := Panel.Height - 20;
      Bevel := bvLowred;
    end;

    PanelSub2 := TX11Panel.Create(Panel);
    with PanelSub2 do begin
      Color := $999999;
      Left := 390;
      Top := 10;
      Width := Panel.Width - PanelSub1.Width - 30;
      Height := Panel.Height - 20;
      Bevel := bvLowred;
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
      Width := 60;
      Height := 25;
      Caption := 'Close';
      OnClick := @CloseButtonClick;
      OnMouseMove := @CloseButtonMouseMove;
    end;
  end;

  destructor TMyWin.Destroy;
  var
    i: integer;
  begin
    //for i := 0 to Length(Button) - 1 do begin
    //  Button[i].Free;
    //end;
    //PanelSub1.Free;
    //Panel.Free;
    //CloseButton.Free;
    inherited Destroy;
  end;

  procedure TMyWin.DoOnPaint;
  const
    maxSektoren = 8;
  var
    punkte: array[0..maxSektoren] of TXPoint;
    i: integer;
  begin
    inherited DoOnPaint;
    XSetRegion(dis, gc, Region);

    for i := 0 to maxSektoren - 1 do begin
      punkte[i].x := round(Sin(Pi * 2 / (maxSektoren - 1) * i) * 50) + 250;
      punkte[i].y := round(Cos(Pi * 2 / (maxSektoren - 1) * i) * 50) + 220;
    end;

    // Ein Rechteck zeichnen
    XSetForeground(dis, gc, $FF00FF);
    XDrawRectangle(dis, win, gc, 10, 150, 50, 50);
    // Einen rechteckigen Bereich mit Farbe füllen
    XFillRectangle(dis, win, gc, 110, 150, 50, 50);

    // Ein Polygon
    XFillPolygon(dis, win, gc, @punkte, Length(punkte) - 1, 0, CoordModeOrigin);
  end;

  procedure TMyWin.DoOnEventHandle(var Event: TXEvent);
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
  MyWindows := TMyWin.Create(nil);
  MyWindows.Run;
  MyWindows.Free;
end.
//code-
