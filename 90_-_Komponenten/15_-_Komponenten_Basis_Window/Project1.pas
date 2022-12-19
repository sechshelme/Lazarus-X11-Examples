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
  MyWindow,
  X11Edit,
  X11Utils,
  X11Scrollbar;

type

  { TMyDesktop }

  TMyDesktop = class(TX11Desktop)
  private
    Panel, PanelButtons, PanelSub2, PanelEdit, PanelScrollBar: TX11Panel;
    IdlePanel: TX11Panel;
    ColorPanel: TX11Panel;
    Button: array[0..3] of TX11Button;
    Edit: array[0..3] of TX11Edit;
    NewButton, CloseButton, OutpuButton: TX11Button;
    ScrollBar: record
      r, g, b: TX11ScrollBar;
      end;

    SubWin: TX11Window;
    SubWinButton: TX11Button;
    procedure ButtonClick(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure CloseButtonMouseMove(Sender: TObject; X, Y: integer);
    procedure IdlePanelIdle(Sender: TObject);
    procedure MyDesktopKeyPress(Sender: TObject; UTF8Char: TUTF8Char);
    procedure NewButtonClick(Sender: TObject);
    procedure NewButtonPaint(Sender: TObject; ADisplay: PDisplay; AWindowwin: TDrawable; AGC: TGC);
    procedure OutButtonClick(Sender: TObject);
    procedure ScrollBarrChange(Sender: TObject);
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
    XBell(dis, 100);
  end;

  procedure TMyDesktop.CloseButtonClick(Sender: TObject);
  begin
    AppClose := True;
  end;

  procedure TMyDesktop.CloseButtonMouseMove(Sender: TObject; X, Y: integer);
  begin
    //    WriteLn('move: ', x, '  ', y);
  end;

  procedure TMyDesktop.IdlePanelIdle(Sender: TObject);
  begin
    IdlePanel.Color := Random($ffffff);
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

  procedure TMyDesktop.OutButtonClick(Sender: TObject);
  var
    i: integer;
  begin
    for i := 0 to Length(Edit) - 1 do begin
      WriteLn(Edit[i].Text);
    end;
    WriteLn();
  end;

  procedure TMyDesktop.ScrollBarrChange(Sender: TObject);
  begin
    if Sender = ScrollBar.r then  begin
      WriteLn('Scrollbar rot geklickt: ', ScrollBar.r.Position);
    end;
    if Sender = ScrollBar.g then  begin
      WriteLn('Scrollbar grün geklickt: ', ScrollBar.g.Position);
    end;
    if Sender = ScrollBar.b then  begin
      WriteLn('Scrollbar blau geklickt: ', ScrollBar.b.Position);
    end;
    ColorPanel.Color:=ScrollBar.b.Position+ScrollBar.g.Position shl 8+ScrollBar.r.Position shl 16;
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

    // --- 2. Fenster
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

    // Grosses Panel
    Panel := TX11Panel.Create(Self);
    with Panel do begin
      Left := 10;
      Top := 10;
      Width := Self.Width - 20;
      Height := 350;
      BorderWidth := 4;
      Anchors := [akTop, akLeft, akRight, akBottom];
    end;

    // --- 4 Buttons
    PanelButtons := TX11Panel.Create(Panel);
    with PanelButtons do begin
      Color := $999999;
      Left := 10;
      Top := 10;
      Width := 370;
      Height := 100 - 20;
      Bevel := bvLowred;
      Anchors := [akTop, akLeft];
    end;

    for i := 0 to Length(Button) - 1 do begin
      Button[i] := TX11Button.Create(PanelButtons);
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

    // Panel rechts-oben
    PanelSub2 := TX11Panel.Create(Panel);
    with PanelSub2 do begin
      Color := $999999;
      Left := 390;
      Top := 10;
      Width := Panel.Width - PanelButtons.Width - 30;
      Height := 100 - 20;
      Bevel := bvLowred;
      Anchors := [akTop, akLeft, akRight];
    end;

    IdlePanel := TX11Panel.Create(PanelSub2);
    with IdlePanel do begin
      Name := 'IdlePanel';
      Left := 10;
      Top := 10;
      Width := PanelSub2.Width div 2 - 20;
      Height := PanelSub2.Height - 20;
      Bevel := bvLowred;
      Anchors := [akTop, akLeft, akRight, akBottom];
      OnIdle := @IdlePanelIdle;
    end;

    ColorPanel := TX11Panel.Create(PanelSub2);
    with ColorPanel do begin
      Name := 'ColorPanel';
      Left := PanelSub2.Width div 2 + 10;
      Top := 10;
      Width := PanelSub2.Width div 2 - 20;
      Height := PanelSub2.Height - 20;
      Bevel := bvLowred;
      Anchors := [akTop, akRight, akBottom];
      OnIdle := @IdlePanelIdle;
    end;


    //--- Edit Felder
    PanelEdit := TX11Panel.Create(Panel);
    with PanelEdit do begin
      Color := $999999;
      Left := 10;
      Top := 100;
      Width := Panel.Width - 20;
      Height := 130;
      Bevel := bvLowred;
      Anchors := [akTop, akLeft, akRight, akBottom];
    end;

    for i := 0 to Length(Edit) - 1 do begin
      Edit[i] := TX11Edit.Create(PanelEdit);
      //  if Parent=nil then WriteLn('nil');
      Edit[i].Width := Edit[i].Parent.Width - 20;
      Edit[i].Left := 10;
      Edit[i].Top := 10 + i * (Edit[0].Height + 5);
      str(i, s);
      Edit[i].Text := 'Edit' + s;
      Edit[i].Name := 'Edit' + s;
      Edit[i].Anchors := [akTop, akLeft, akRight];
    end;
    Button[1].Color := $8888FF;
    Button[2].Color := $88FF88;
    Button[3].Color := $FF8888;

    // ScrollBars
    PanelScrollBar := TX11Panel.Create(Panel);
    with PanelScrollBar do begin
      Color := $999999;
      Left := 10;
      Top := 240;
      Width := Panel.Width - 20;
      Height := Panel.Height - PanelButtons.Height - PanelEdit.Height - 45;
      Bevel := bvLowred;
      Anchors := [akLeft, akRight, akBottom];
    end;

    ScrollBar.r := TX11ScrollBar.Create(PanelScrollBar);
    with ScrollBar.r do begin
      Color := $FF8888;
      Left := 10;
      Top := 10;
      Width := Parent.Width - 20;
      Height := 25;
      Anchors := [akLeft, akRight, akTop];
      OnChange := @ScrollBarrChange;
    end;

    ScrollBar.g := TX11ScrollBar.Create(PanelScrollBar);
    with ScrollBar.g do begin
      Color := $88FF88;
      Left := 10;
      Top := 10 + 25;
      Width := Parent.Width - 20;
      Height := 25;
      Anchors := [akLeft, akRight, akTop];
      OnChange := @ScrollBarrChange;
    end;

    ScrollBar.b := TX11ScrollBar.Create(PanelScrollBar);
    with ScrollBar.b do begin
      Color := $8888FF;
      Left := 10;
      Top := 10 + 50;
      Width := Parent.Width - 20;
      Height := 25;
      Anchors := [akLeft, akRight, akTop];
      OnChange := @ScrollBarrChange;
    end;

    // --- Divers Buttons
    CloseButton := TX11Button.Create(Self);
    with CloseButton do begin
      Top := Panel.Height + 20;
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
      Top := CloseButton.Top;
      Left := 250;
      Height := 50;
      Width := 120;
      Caption := 'New';
      OnClick := @NewButtonClick;
      OnPaint := @NewButtonPaint;
    end;

    OutpuButton := TX11Button.Create(Self);
    with OutpuButton do begin
      Anchors := [akRight, akBottom];
      Top := CloseButton.Top;
      Left := 400;
      Height := 50;
      Width := 120;
      Caption := 'Write';
      OnClick := @OutButtonClick;
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
