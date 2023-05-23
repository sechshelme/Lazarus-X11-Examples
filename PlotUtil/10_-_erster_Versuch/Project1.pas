//image image.png
(*
Besser man macht es objektorientiert mit Klassen.
Dies macht es übersichtlicher und ausbaufähiger.
*)
//lineal
//code+

// https://ftp.gnu.org/old-gnu/Manuals/plotutils-2.2/html_chapter/plotutils_9.html
// https://www.gnu.org/software/plotutils/manual/en/html_node/X-Programming.html
program Project1;

uses
  Plot,
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
    rootwin, win: TWindow;

    plotter_params: PplPlotterParams;
    plotter: PplPlotter;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Draw(const ev: TXEvent);
    procedure Run;
  end;

  constructor TMyWin.Create;
  begin
    inherited Create;

    // Erstellt die Verbindung zum Server
    dis := XOpenDisplay(nil);
    if dis = nil then begin
      WriteLn('Kann nicht das Display öffnen');
      Halt(1);
    end;
    scr := DefaultScreen(dis);
    rootwin := RootWindow(dis, scr);

    // Erstellt das Fenster
    win := XCreateSimpleWindow(dis, rootwin, 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));

    // Fenster Titel festlegen
    XStoreName(dis, win, 'Fenster mit Classen');

    // Wählt die gewünschten Ereignisse aus
    // Es wird nur das Tastendrückereigniss <b>KeyPressMask</b> gebraucht.
    XSelectInput(dis, win, KeyPressMask or ExposureMask);

    // Fenster anzeigen
    XMapWindow(dis, win);

    // libPlot

    plotter_params := pl_newplparams;

    pl_setplparam(plotter_params, 'XDRAWABLE_DISPLAY', dis);
    pl_setplparam(plotter_params, 'XDRAWABLE_DRAWABLE1', @win);
    pl_setplparam(plotter_params, 'BG_COLOR', PChar('green'));
    plotter := pl_newpl_r('Xdrawable', nil, nil, stderr, plotter_params);
    pl_openpl_r(plotter);
    pl_fspace_r(plotter, 0, 0, 1000, 1000);
    pl_flinewidth_r(plotter, 0.25);
  end;

  destructor TMyWin.Destroy;
  begin
    // Schliesst das Fenster
    XDestroyWindow(dis, win);

    // Schliesst Verbindung zum Server
    XCloseDisplay(dis);
    inherited Destroy;
  end;

  procedure TMyWin.Draw(const ev: TXEvent);
  var
    w, h: cint;
  begin
    w := ev.xexpose.Width;
    h := ev.xexpose.Height;

        pl_fspace_r(plotter,0,0,1000 + Random*100,1000);
    WriteLn(w);

    //    pl_fscale_r(plotter, 1000 / w, 1000 / h);


    pl_pencolorname_r(plotter, 'green');
    pl_fmove_r(plotter, 100, 100);
    pl_fcontrel_r(plotter, 800, 00);
    pl_fcontrel_r(plotter, 0, 800);
    pl_fcontrel_r(plotter, -800, 00);
    pl_fcontrel_r(plotter, 0, -800);
    pl_endpath_r(plotter);
  end;

  procedure TMyWin.Run;
  var
    Event: TXEvent;
  begin
    // Ereignisschleife
    while (True) do begin
      XNextEvent(dis, @Event);

      case Event._type of
        Expose: begin
          Draw(Event);
        end;
        KeyPress: begin
          // Beendet das Programm bei [ESC]
          if XLookupKeysym(@Event.xkey, 0) = XK_Escape then begin
            Break;
          end;
        end;
      end;

    end;
  end;

var
  MyWindows: TMyWin;

begin
  // Programm inizialisieren
  MyWindows := TMyWin.Create;

  // Programm ablaufen lassen
  MyWindows.Run;

  // Alles aufräumen und beenden
  MyWindows.Free;
end.
//code-
