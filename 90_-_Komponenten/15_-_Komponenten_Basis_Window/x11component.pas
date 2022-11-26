unit X11Component;

{$mode ObjFPC}{$H+}

interface

uses
  unixtype, ctypes, xlib, xutil, keysym, x,
  X11Utils;

type
  { TX11Component }

  TX11Component = class(TObject)
  private
    FWindow: TDrawable;
    FParent: TX11Component;

    FAnchors: TAnchors;
    FName: string;
    FCaption: string;
    FColor: culong;
    FHeight, FLeft, FTop, FWidth, FWindowBorderWidth: cint;

    FOnPaint: TPaintEvent;
    FOnClick: TNotifyEvent;
    FOnMouseMove: TMouseMoveEvent;
    FOnKeyPress: TKeyPressEvent;
    FOnKeyDown: TEvent;

    procedure SetCaption(AValue: string);
    procedure SetColor(AColor: culong);
    procedure SetWindowBorderWidth(AWindowBorderWidth: cint);
    procedure SetHeight(AHeight: cint);
    procedure SetTop(ATop: cint);
    procedure SetLeft(ALeft: cint);
    procedure SetWidth(AWidth: cint);

    procedure Resize(AWidth, AHeight: cint);
    procedure DeleteActive;
  protected
    dis: PDisplay; static;
    scr: cint; static;
    RootWin: TWindow; static;
    gc: TGC;
    xim: PXIM; static; // UTF8 Key
    xic: PXIC; // UTF8 Key
    wm_delete_window: TAtom; static;  // [x] Button

    IsActive, IsCursorOn, IsMouseDown, IsButtonDown: boolean;
    ComponentList: array of TX11Component;
    procedure DoOnEventHandle(var Event: TXEvent); virtual;
    procedure DoOnPaint; virtual;
    procedure DoOnClick; virtual;
    procedure DoOnKeyPress(UTF8Char: TUTF8Char); virtual;
    procedure DoOnKeyDown(var Event: TXEvent); virtual;
    procedure CursorOn; virtual;
    procedure CursorOff; virtual;
  public
    property Window: TDrawable read FWindow;
    property Anchors: TAnchors read FAnchors write FAnchors;
    property Name: string read FName write FName;
    property Caption: string read FCaption write SetCaption;
    property Parent: TX11Component read FParent;
    property WindowBorderWidth: cint read FWindowBorderWidth write SetWindowBorderWidth;
    property Color: culong read FColor write SetColor;
    property Left: cint read FLeft write SetLeft;
    property Top: cint read FTop write SetTop;
    property Width: cint read FWidth write SetWidth;
    property Height: cint read FHeight write SetHeight;
    property OnClick: TNotifyEvent read FOnClick write FOnClick;
    property OnPaint: TPaintEvent read FOnPaint write FOnPaint;
    property OnKeyPress: TKeyPressEvent read FOnKeyPress write FOnKeyPress;
    property OnKeyDown: TEvent read FOnKeyDown write FOnKeyDown;
    property OnMouseMove: TMouseMoveEvent read FOnMouseMove write FOnMouseMove;
    constructor Create(TheOwner: TX11Component; NewWindow: boolean = False);
    destructor Destroy; override;
    procedure Close;
  end;

implementation

{ TX11Component }

procedure TX11Component.SetTop(ATop: cint);
begin
  if FTop <> ATop then begin
    FTop := ATop;
    XMoveWindow(dis, Window, FLeft, ATop);
  end;
end;

procedure TX11Component.SetHeight(AHeight: cint);
var
  h: cint;
begin
  if FHeight <> AHeight then begin
    if AHeight < 1 then begin
      h := 1;
    end else begin
      h := AHeight;
    end;
    XResizeWindow(dis, Window, FWidth, h);
    Resize(FWidth, AHeight);
  end;
end;

procedure TX11Component.SetLeft(ALeft: cint);
begin
  if FLeft <> ALeft then begin
    FLeft := ALeft;
    XMoveWindow(dis, Window, ALeft, FTop);
  end;
end;

procedure TX11Component.SetWidth(AWidth: cint);
var
  w: cint;
begin
  if FWidth <> AWidth then begin
    if AWidth < 1 then begin
      w := 1;
    end else begin
      w := AWidth;
    end;
    FWidth := AWidth;
    XResizeWindow(dis, Window, w, FHeight);
    Resize(AWidth, FHeight);
  end;
end;

procedure TX11Component.SetWindowBorderWidth(AWindowBorderWidth: cint);
begin
  if FWindowBorderWidth <> AWindowBorderWidth then begin
    FWindowBorderWidth := AWindowBorderWidth;
    XSetWindowBorder(dis, Window, FWindowBorderWidth);
  end;
end;

procedure TX11Component.SetCaption(AValue: string);
begin
  if FCaption <> AValue then begin
    XStoreName(dis, Window, PChar(AValue));
    FCaption := AValue;
  end;
end;

procedure TX11Component.SetColor(AColor: culong);
begin
  if FColor <> AColor then begin
    FColor := AColor;
    XSetBackground(dis, gc, AColor);
  end;
end;

constructor TX11Component.Create(TheOwner: TX11Component; NewWindow: boolean);
var
  s: string;
  size_hints: TXSizeHints;
  len: SizeInt;
begin
  inherited Create;

  FParent := TheOwner;
  OnPaint := nil;
  OnClick := nil;
  OnMouseMove := nil;
  OnKeyPress := nil;
  FOnKeyDown := nil;

  FColor := $BBBBBB;
  Anchors := [akLeft, akTop];
  FLeft := 0;
  FTop := 0;
  FWidth := 320;
  FHeight := 200;

  //  ActiveComponent := -1;

  Name := 'X11Component';

  if TheOwner <> nil then begin
    len := Length(TheOwner.ComponentList);
    SetLength(TheOwner.ComponentList, len + 1);
    TheOwner.ComponentList[len] := Self;
    str(len + 1, s);
    FName += s;
    if NewWindow then begin
      FWindow := XCreateSimpleWindow(dis, RootWin, 10, 10, FWidth, FHeight, 0, BlackPixel(dis, scr), WhitePixel(dis, scr));
      XSelectInput(dis, FWindow, EventMask or StructureNotifyMask);
    end else begin
      FWindow := XCreateSimpleWindow(dis, TheOwner.Window, 10, 10, FWidth, FHeight, 0, BlackPixel(dis, scr), WhitePixel(dis, scr));
      XSelectInput(dis, FWindow, EventMask);
    end;
  end else begin
    FWindow := XCreateSimpleWindow(dis, RootWin, 10, 10, FWidth, FHeight, 0, BlackPixel(dis, scr), WhitePixel(dis, scr));
    XSelectInput(dis, FWindow, EventMask or StructureNotifyMask);
  end;
  with  size_hints do begin
    flags := PSize or PPosition or PMinSize;
    min_width := 50;
    min_height := 50;
    Width := FWidth;
    Height := FHeight;
    x := 300;
    y := 200;
  end;

  gc := XCreateGC(dis, Window, 0, nil);

  XSetStandardProperties(dis, Window, 'noname', 'noname', None, nil, 0, @size_hints);

  XStoreName(dis, FWindow, 'none');
  XSetBackground(dis, gc, $FF);
  XSetForeground(dis, gc, $FF00);

  // Fenster anzeigen
  XMapWindow(dis, FWindow);

  // [X] abfangen
  XSetWMProtocols(dis, FWindow, @wm_delete_window, 1);

  // UTF8 Key
  xic := XCreateIC(xim, [XNInputStyle, XIMPreeditNothing or XIMStatusNothing, XNClientWindow, Window, XNFocusWindow, Window, nil]);
  if xic = nil then begin
    WriteLn('Could not open IC');
  end;
  XSetICFocus(xic);

end;

destructor TX11Component.Destroy;
var
  i: integer;
begin
  for i := 0 to Length(ComponentList) - 1 do begin
    if ComponentList[0] <> nil then  begin
      ComponentList[0].Free;
    end;
  end;
  SetLength(ComponentList, 0);
  if Parent <> nil then begin
    for i := 0 to Length(Parent.ComponentList) - 1 do begin
      if Parent.ComponentList[i] = self then begin
        Delete(Parent.ComponentList, i, 1);
        Break;
      end;
    end;
  end;

  XDestroyWindow(dis, FWindow);
  inherited Destroy;
end;

procedure TX11Component.Close;
var
  e: TXEvent;
begin
  e._type := DestroyNotify;
  e.xbutton.window := Window;
  XSendEvent(dis, Window, True, StructureNotifyMask, @e);
end;

procedure TX11Component.DoOnEventHandle(var Event: TXEvent);
var
  i: integer;
  x, y: cint;
  IsInRegion: TBoolResult;

  status: TStatus;
  Count: integer;
  keysym: TKeySym;
  buf: array[0..31] of char;
  tempParent: TX11Component;
begin
  if Event._type in [KeyPress, KeyRelease] then begin
    for i := 0 to Length(ComponentList) - 1 do begin
      if ComponentList[i].IsActive then begin
        ComponentList[i].DoOnEventHandle(Event);
      end;
    end;
  end else begin
    for i := 0 to Length(ComponentList) - 1 do begin
      ComponentList[i].DoOnEventHandle(Event);
    end;
  end;

  x := Event.xbutton.x;
  y := Event.xbutton.y;
  IsInRegion := (x >= 0) and (x < FWidth) and (y >= 0) and (y < FHeight);
  case Event._type of
    Expose: begin
      DoOnPaint;
    end;
    ConfigureNotify: begin
      if Event.xconfigure.window = Window then begin
        if (Event.xconfigure.Width <> FWidth) or (Event.xconfigure.Height <> FHeight) then begin
          Resize(Event.xconfigure.Width, Event.xconfigure.Height);
        end;
      end;
    end;
    KeyPress: begin
      if not XFilterEvent(@Event, 0) then begin
        keysym := NoSymbol;

        FillChar(buf, Length(buf), #0);
        Count := Xutf8LookupString(xic, @Event.xkey, @buf, SizeOf(buf) - 1, @keysym, @status);
        if status = XLookupBoth then begin
        end;

        if status = XBufferOverflow then begin
          //            WriteLn('Buffer Überlauf !');
        end;
        DoOnKeyPress(buf);
        DoOnKeyDown(Event);
      end;
    end;
    ButtonPress: begin
      if Event.xbutton.window = Window then begin
        tempParent := Self;
        while tempParent.Parent <> nil do begin
          tempParent := tempParent.Parent;
        end;
        tempParent.DeleteActive;
        IsActive := True;
        tempParent := Self;
        while tempParent.Parent <> nil do begin
          tempParent.IsActive := True;
          tempParent := tempParent.Parent;
        end;
        XMapRaised(dis, Event.xbutton.window);
        if IsInRegion then begin
          IsMouseDown := True;
          IsButtonDown := True;
        end else begin
          IsMouseDown := False;
          IsButtonDown := False;
        end;
        DoOnPaint;
      end;
    end;
    MotionNotify: begin
      if Event.xmotion.window = Window then begin
        if IsInRegion and (OnMouseMove <> nil) then begin
          OnMouseMove(self, x, y);
        end;
        if IsMouseDown then begin
          if IsInRegion then begin
            IsButtonDown := True;
          end else begin
            IsButtonDown := False;
          end;
          DoOnPaint;
        end;
      end;
    end;
    ButtonRelease: begin
      if Event.xbutton.window = Window then begin
        if IsMouseDown and IsInRegion then begin
          DoOnClick;
        end;
        IsMouseDown := False;
        IsButtonDown := False;
        DoOnPaint;
      end;
    end;
  end;
end;

procedure TX11Component.DoOnPaint;
begin
  if OnPaint <> nil then begin
    OnPaint(self, dis, Window, gc);
  end;
end;

procedure TX11Component.DoOnClick;
begin
  if OnClick <> nil then begin
    OnClick(self);
  end;
end;

procedure TX11Component.DoOnKeyPress(UTF8Char: TUTF8Char);
begin
  if OnKeyPress <> nil then begin
    OnKeyPress(Self, UTF8Char);
  end;
end;

procedure TX11Component.DoOnKeyDown(var Event: TXEvent);
begin
  if OnKeyDown <> nil then begin
    OnKeyDown(Self, Event);
  end;
end;

procedure TX11Component.CursorOn;
begin
  IsCursorOn := True;
end;

procedure TX11Component.CursorOff;
begin
  IsCursorOn := False;
end;

procedure TX11Component.Resize(AWidth, AHeight: cint);
var
  dx, dy, L, T, W, H: cint;
  i: integer;
begin
  dx := AWidth - FWidth;
  dy := AHeight - FHeight;

  FWidth := AWidth;
  FHeight := AHeight;

  for i := 0 to Length(ComponentList) - 1 do begin
    with ComponentList[i] do begin
      L := FLeft;
      T := FTop;
      W := FWidth;
      H := FHeight;

      if akRight in Anchors then begin
        if akLeft in Anchors then begin
          Inc(W, dx);
        end else begin
          Inc(L, dx);
        end;
      end;

      if akBottom in Anchors then begin
        if akTop in Anchors then begin
          Inc(H, dy);
        end else begin
          Inc(T, dy);
        end;
      end;

      if (H <> FHeight) or (W <> FWidth) or (T <> FTop) or (L <> FLeft) then  begin
        FLeft := L;
        FTop := T;
        Resize(W, H);
        XMoveResizeWindow(dis, Window, L, T, W, H);
      end;
    end;
  end;
end;

procedure TX11Component.DeleteActive;
var
  i: integer;
begin
  IsActive := False;
  for i := 0 to Length(ComponentList) - 1 do begin
    ComponentList[i].DeleteActive;
  end;
end;

end.
