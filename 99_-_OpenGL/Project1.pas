//image image.png
(*
Besser man macht es objektorientiert mit Klassen.
Dies macht es übersichtlicher und ausbaufähiger.
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
  GLX,
  GL;

type
  TMyWin = class(TObject)
  private
    dis: PDisplay;
    scr: cint;
    rootwin, win: TWindow;
    zAngle: GLfloat;
    doubleBuffer: GLboolean;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
  end;

  procedure fatalError(const s: string);
  begin
    WriteLn(s);
    Halt;
  end;

  constructor TMyWin.Create;
  var
    dummy: integer;
    sngBuf: array of integer = (GLX_RGBA, GLX_DEPTH_SIZE, 16, None);
    dblBuf: array of integer = (GLX_RGBA, GLX_DEPTH_SIZE, 16, GLX_DOUBLEBUFFER, None);
    vi: PXVisualInfo;
    cx: GLXContext;
    cmap: TColormap;
    OpenGLRootWin: TWindow;
    swa: TXSetWindowAttributes;
  begin
    inherited Create;

    // Erstellt die Verbindung zum Server
    dis := XOpenDisplay(nil);
    if dis = nil then begin
      WriteLn('Kann nicht das Display öffnen');
      Halt(1);
    end;

    // OpenGL
    if not glXQueryExtension(dis, dummy, dummy) then begin
      fatalError('X server has no OpenGL GLX extension');
    end;

    vi := glXChooseVisual(dis, DefaultScreen(dis), @dblBuf[0]);
    if vi = nil then begin
      vi := glXChooseVisual(dis, DefaultScreen(dis), @sngBuf[0]);
      doubleBuffer := GL_FALSE;
    end else begin
      doubleBuffer := GL_TRUE;
    end;
    if vi = nil then begin
      fatalError('no RGB visual with depth buffer');
    end;
    if vi^._class <> TrueColor then begin
      fatalError('TrueColor visual required for this program');
    end;
    cx := glXCreateContext(dis, vi, nil, True);
    if cx = nil then begin
      fatalError('could not create rendering context');
    end;

    OpenGLRootWin := RootWindow(dis, vi^.screen);
    cmap := XCreateColormap(dis, OpenGLRootWin, vi^.visual, AllocNone);

    swa.colormap := cmap;
    swa.border_pixel := 0;
    swa.event_mask := KeyPressMask or ExposureMask or ButtonPressMask or StructureNotifyMask;

    // Erstellt das Fenster
    win := XCreateWindow(dis, OpenGLRootWin, 0, 0, 300, 300, 0, vi^.depth, InputOutput, vi^.visual, CWBorderPixel or CWColormap or CWEventMask, @swa);
    XSetStandardProperties(dis, win, 'GLX', 'GLX', 0, nil, 0, nil);

    glXMakeCurrent(dis, win, cx);

    // Fenster Titel festlegen
    //    XStoreName(dis, win, 'Fenster mit Classen');

    // Fenster anzeigen
    XMapWindow(dis, win);

    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LESS);
    glClearDepth(1.0);
    glClearColor(1.0, 0.5, 0.5, 0);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glFrustum(-1.0, 1.0, -1.0, 1.0, 1.0, 10.0);
    glViewport(0, 0, 300, 300);
  end;

  destructor TMyWin.Destroy;
  begin
    // Schliesst das Fenster
    XDestroyWindow(dis, win);

    // Schliesst Verbindung zum Server
    XCloseDisplay(dis);
    inherited Destroy;
  end;

  procedure TMyWin.Run;
  var
    Event: TXEvent;
  begin
    // Ereignisschleife
    while (True) do begin
      if XPending(dis) <> 0 then begin
        XNextEvent(dis, @Event);

        case Event._type of
          KeyPress: begin
            // Beendet das Programm bei [ESC]
            if XLookupKeysym(@Event.xkey, 0) = XK_Escape then begin
              Break;
            end;
          end;
          ConfigureNotify: begin
            glViewport(0, 0, event.xconfigure.Width, event.xconfigure.Height);
          end;
        end;

      end else begin
        glClear(GL_COLOR_BUFFER_BIT or GL_DEPTH_BUFFER_BIT);
        glMatrixMode(GL_MODELVIEW);

        glLoadIdentity();
        glTranslatef(0.0, 0.0, -3.0);

        glRotatef(zAngle, 0.0, 0.0, 1.0);
        zAngle := zAngle + 1.0;

        glBegin(GL_QUADS);
        glColor3f(0.0, 0.7, 0.1);
        glVertex3f(-1.0, 1.0, 1.0);

        glColor3f(0.7, 0.7, 0.1);
        glVertex3f(1.0, 1.0, 1.0);

        glColor3f(0.0, 0.7, 0.1);
        glVertex3f(1.0, -1.0, 1.0);

        glColor3f(0.7, 0.7, 0.1);
        glVertex3f(-1.0, -1.0, 1.0);
        glEnd();

        if doubleBuffer <> 0 then begin
          glXSwapBuffers(dis, win);
        end else begin
          glFlush;
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
