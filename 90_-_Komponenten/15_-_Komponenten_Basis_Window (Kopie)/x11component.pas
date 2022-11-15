unit X11Component;

{$mode ObjFPC}{$H+}

interface

uses
  unixtype, ctypes, xlib, xutil, keysym, x;

const
  EventMask = KeyPressMask or ExposureMask or ButtonReleaseMask or ButtonPressMask or StructureNotifyMask or PointerMotionMask;

type

  TAnchorKind = (akTop, akLeft, akRight, akBottom);
  TAnchors = set of TAnchorKind;

  TNotifyEvent = procedure(Sender: TObject) of object;
  TMouseMoveEvent = procedure(Sender: TObject; X, Y: integer) of object;
  { TX11Component }

  TX11Component = class(TObject)
  private
    FAnchors: TAnchors;
    FCaption: string;
    FColor: culong;
    FHeight, FLeft, FTop, FWidth, FWindowBorderWidth: cint;
    FWindow: TDrawable;
    FOnMouseMove: TMouseMoveEvent;
    FName: string;
    FParent: TX11Component;
    FOnClick: TNotifyEvent;
    procedure SetCaption(AValue: string);
    procedure SetColor(AColor: culong);
    procedure SetWindowBorderWidth(AWindowBorderWidth: cint);
    procedure SetHeight(AHeight: cint);
    procedure SetTop(ATop: cint);
    procedure SetLeft(ALeft: cint);
    procedure SetWidth(AWidth: cint);

    procedure Resize(ALeft, ATop, AWidth, AHeight: cint);
  protected
    dis: PDisplay; static;
    scr: cint; static;
    RootWin: TWindow; static;
    gc: TGC; static;
    wm_delete_window: TAtom; static;

    IsMouseDown, IsButtonDown: boolean;
    procedure DoOnEventHandle(var Event: TXEvent); virtual;
    procedure DoOnPaint; virtual;
  public
    ComponentList: array of TX11Component;
    property Window: TDrawable read FWindow;
    property Anchors: TAnchors read FAnchors write FAnchors;
    property Name: string read FName write FName;
    property Parent: TX11Component read FParent write FParent;
    property Caption: string read FCaption write SetCaption;
    property WindowBorderWidth: cint read FWindowBorderWidth write SetWindowBorderWidth;
    property Color: culong read FColor write SetColor;
    property Left: cint read FLeft write SetLeft;
    property Top: cint read FTop write SetTop;
    property Width: cint read FWidth write SetWidth;
    property Height: cint read FHeight write SetHeight;
    property OnClick: TNotifyEvent read FOnClick write FOnClick;
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
begin
  if FHeight <> AHeight then begin
    FHeight := AHeight;
    XResizeWindow(dis, Window, FWidth, AHeight);
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
begin
  if FWidth <> AWidth then begin
    FWidth := AWidth;
    XResizeWindow(dis, Window, AWidth, FHeight);
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
begin
  inherited Create;

  FParent := TheOwner;
  OnClick := nil;
  OnMouseMove := nil;

  FColor := $BBBBBB;
  Anchors := [akLeft, akTop];
  FLeft := 0;
  FTop := 0;
  FWidth := 320;
  FHeight := 200;

  Name := 'X11Component';

  if TheOwner <> nil then begin
    SetLength(TheOwner.ComponentList, Length(TheOwner.ComponentList) + 1);
    TheOwner.ComponentList[Length(TheOwner.ComponentList) - 1] := Self;
    str(Length(TheOwner.ComponentList), s);
    FName += s;
    if NewWindow then begin
      FWindow := XCreateSimpleWindow(dis, RootWin, 10, 10, FWidth, FHeight, 0, BlackPixel(dis, scr), WhitePixel(dis, scr));
    end else begin
      FWindow := XCreateSimpleWindow(dis, TheOwner.Window, 10, 10, FWidth, FHeight, 0, BlackPixel(dis, scr), WhitePixel(dis, scr));
    end;
  end else begin
    FWindow := XCreateSimpleWindow(dis, RootWin, 10, 10, FWidth, FHeight, 0, BlackPixel(dis, scr), WhitePixel(dis, scr));
  end;
  //with  size_hints do begin
  //  flags := PSize or PMinSize or PMaxSize;
  //  //    flags:=0;
  //  min_width := FWidth;
  //  max_width := FWidth;
  //  min_height := FHeight;
  //  max_height := FHeight;
  //  x := 300;
  //  y := 200;
  //end;
  //XSetStandardProperties(dis, Window, 'none', 'none', None, nil, 0, @size_hints);

  XStoreName(dis, FWindow, 'none');
  XSetBackground(dis, gc, $FF);
  XSetForeground(dis, gc, $FF00);

  // Wählt die gewünschten Ereignisse aus
  XSelectInput(dis, FWindow, EventMask);

  // Fenster anzeigen
  XMapWindow(dis, FWindow);

  // [X] abfangen
  XSetWMProtocols(dis, FWindow, @wm_delete_window, 1);
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
begin
  for i := 0 to Length(ComponentList) - 1 do begin
    ComponentList[i].DoOnEventHandle(Event);
  end;

  x := Event.xbutton.x;
  y := Event.xbutton.y;
  IsInRegion := (x >= 0) and (x < FWidth) and (y >= 0) and (y < FHeight);
  if Event.xbutton.window = Window then begin
    case Event._type of
      Expose: begin
        DoOnPaint;
      end;
      ConfigureNotify: begin
//        if (Event.xconfigure.Width <> FWidth) or (Event.xconfigure.Height <> FHeight) then begin
          Resize(FLeft, FTop, Event.xconfigure.Width, Event.xconfigure.Height);
  //      end;
        //Resize(FLeft, FTop, FWidth, FHeight);
      end;
      KeyPress: begin
        if XLookupKeysym(@Event.xkey, 0) = XK_Escape then begin
          // Taste auswerten
        end;
      end;
      ButtonPress: begin
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
      MotionNotify: begin
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
      ButtonRelease: begin
        if IsMouseDown and IsInRegion then begin
          if OnClick <> nil then begin
            OnClick(self);
          end;
        end;
        IsMouseDown := False;
        IsButtonDown := False;
        DoOnPaint;
      end;
    end;
  end;
end;

procedure TX11Component.DoOnPaint;
var
  i: integer;
begin
  for i := 0 to Length(ComponentList) - 1 do begin
    ComponentList[i].DoOnPaint;
  end;
end;

procedure TX11Component.Resize(ALeft, ATop, AWidth, AHeight: cint);
var
  dx, dy, L, T, W, H: cint;
  i: integer;
begin
  dx := AWidth - FWidth;
  dy := AHeight - FHeight;
  FLeft := ALeft;
  FTop := ATop;
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
        FWidth := W;
        FHeight := H;
        XMoveResizeWindow(dis, Window, L, T, W, H);
        //        XResizeWindow(dis, Window, W, H);
        //      XMoveWindow(dis, Window, L, T);
      end;
    end;
  end;

end;

end.
