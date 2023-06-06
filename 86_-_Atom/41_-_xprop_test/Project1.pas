program Project1;

uses
  clocale,
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  x, dsimple;

function setlocale(cat: integer; p: PChar): cint; cdecl; external 'c';

const
LC_CTYPE	=	 0;
LC_ALL = 6;

 XpropWindowProperties= 0;
 XpropFontProperties =  1;


var
  dis: PDisplay;
  win:TWindow; target_win: TWindow=0;
  Event: TXEvent;
  xpropMode: Integer;

begin
  program_name:=argv[0];

  setlocale(LC_CTYPE,'');

  Setup_Display_And_Screen(@argc, argv);

  target_win:=  select_Window_Args(@argc, argv);

  xpropMode:=XpropWindowProperties;




  // Erstellt die Verbindung zum Server
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;

  // Erstellt das Fenster
  win := XCreateSimpleWindow(dis, RootWindow(dis, screen), 10, 10, 320, 240, 1, BlackPixel(dis, screen), WhitePixel(dis, screen));

  // Wählt die gewünschten Ereignisse aus
  // Es wird nur das Tastendrückereigniss <b>KeyPressMask</b> gebraucht.
  XSelectInput(dis, win, KeyPressMask);

  // Fenster Titel festlegen
  XStoreName(dis, win, 'Mein Fenster');

  // Fenster anzeigen
  XMapWindow(dis, win);

  // Ereignisschleife
  while (True) do begin
    XNextEvent(dis, @Event);
    case Event._type of
      KeyPress: begin
        // Beendet das Programm bei [ESC]
        if XLookupKeysym(@Event.xkey, 0) = XK_Escape then begin
          Break;
        end;
      end;
    end;
  end;

  // Schliesst das Fenster
  XDestroyWindow(dis, win);

  // Schliesst Verbindung zum Server
  XCloseDisplay(dis);
end.
//code-

