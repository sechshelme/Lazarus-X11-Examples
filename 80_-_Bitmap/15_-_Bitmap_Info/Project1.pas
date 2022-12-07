//image image.png
(*
Source: https://github.com/tristanred/x11-examples/blob/master/main.cpp
*)
//lineal
//code+
program Project1;

uses
  BaseUnix,
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  x;

type

  { TMyWin }

  TMyWin = class(TObject)
  private
    dis: PDisplay;
    scr: cint;
    win: TWindow;
    widht, Height: cuint;
    wm_delete_window: TAtom;
    procedure BitmapInfo;
    procedure ScreenInfo;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
  end;

  procedure TMyWin.BitmapInfo;
  var
    formats, current: PXPixmapFormatValues;
    Count: cint = 0;
    i: integer;
  begin
    formats := XListPixmapFormats(dis, @Count);
    if formats = nil then begin
      WriteLn('Unable to get pixel formats');
    end;
    current := formats;
    for i := 0 to Count - 1 do begin
      with current^ do begin
        WriteLn('Format: ', i: 3, ' Depth:', depth: 5, ' BPP: ', bits_per_pixel: 5, ' Pad: ', scanline_pad: 5);
        Inc(current);
      end;
    end;
    WriteLn();
    XFree(formats);
  end;

  procedure TMyWin.ScreenInfo;
  var
    ibo, bitUnit, bbo, bitPad, dh, dw: cint;
    Value: PChar;
  begin
    WriteLn('Screen ', scr, ' info:');
    ibo := XImageByteOrder(dis);
    case ibo of
      LSBFirst: begin
        WriteLn('Image Byte order = LSB First');
      end;
      MSBFirst: begin
        WriteLn('Image Byte order = MSB First');
      end;
      else begin
        WriteLn('Image Byte order = Unknown');
      end;
    end;

    bitUnit := XBitmapUnit(dis);
    WriteLn('Bitmap Unit: ', bitUnit);
    bbo := XBitmapBitOrder(dis);
    case bbo of
      LSBFirst: begin
        WriteLn('Bitmap Bit Order = LSB First');
      end;
      MSBFirst: begin
        WriteLn('Bitmap Bit Order = MSB First');
      end;
      else begin
        WriteLn('Bitmap Bit Order = Unknown');
      end;
    end;

    bitPad := XBitmapPad(dis);
    WriteLn('Bitmap Pad: ', bitPad);
    dw := XDisplayWidth(dis, scr);
    WriteLn('Display Width:  ', dw: 6);
    dh := XDisplayHeight(dis, scr);
    WriteLn('Dsiplay Height: ', dh: 6);

    WriteLn('Cells :',XDisplayCells(dis,scr));
    WriteLn('DisplayString :',XDisplayString(dis));
    WriteLn('Windows Nr: ',win);

    WriteLn();

    Value := FpGetEnv('DISPLAY');
    if Value = nil then begin
      WriteLn('DISPLAY env is NULL.');
    end else begin
      WriteLn('Current DISPLAY is: ', Value);
    end;
    WriteLn('Version: ', XProtocolVersion(dis),'.',XProtocolRevision(dis));
    WriteLn(XScreenCount(dis));
  end;

  constructor TMyWin.Create;
  begin
    inherited Create;

    // Erstellt die Verbindung zum Server
    dis := XOpenDisplay(nil);
//    dis := XOpenDisplay('localhost:10.0');
    if dis = nil then begin
      WriteLn('Kann nicht das Display öffnen');
      Halt(1);
    end;
    scr := DefaultScreen(dis);

    widht := 320;
    Height := 200;

    // Erstellt das Fenster
    win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, widht, Height, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));

    // Wählt die gewünschten Ereignisse aus
    // Es wird nur das Tastendrückereigniss <b>KeyPressMask</b> gebraucht.
    XSelectInput(dis, win, KeyPressMask or ResizeRedirectMask);

    // Fenster anzeigen
    XMapWindow(dis, win);

    // [X] abfangen
    wm_delete_window := XInternAtom(dis, 'WM_DELETE_WINDOW', False);
    XSetWMProtocols(dis, win, @wm_delete_window, 1);

    ScreenInfo;
    BitmapInfo;
  end;

  destructor TMyWin.Destroy;
  begin
    // Schliesst Verbindung zum Server
    XCloseDisplay(dis);
    inherited Destroy;
  end;

  procedure TMyWin.Run;
  var
    Event: TXEvent;
    quit: boolean = False;
  const
    myEvent = 37;
  begin
    // Ereignisschleife
    while not quit do begin
      XNextEvent(dis, @Event);
      case Event._type of
        KeyPress: begin
          // Beendet das Programm bei [ESC]
          case XLookupKeysym(@Event.xkey, 0) of
            XK_Escape: begin
              quit := True;
            end;
          end;
        end;
        ResizeRequest: begin
          WriteLn('resize');
        end;

        ClientMessage: begin
          if (Event.xclient.Data.l[0] = wm_delete_window) then begin
            quit := True;
          end;
        end;
        DestroyNotify: begin
          WriteLn('Ende ', Event.xbutton.window);
          //          Exit;
        end;
      end;

    end;
  end;

var
  MyWindows: TMyWin;

begin
  MyWindows := TMyWin.Create;
  MyWindows.Run;
  MyWindows.Free;
end.
//code-
