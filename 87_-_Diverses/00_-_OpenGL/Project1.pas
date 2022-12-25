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
    OpenGLRootWin: TWindow;
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

    // Erstellt das Fenster
    OpenGLRootWin := RootWindow(dis, vi^.screen);
    win := XCreateSimpleWindow(dis, OpenGLRootWin, 0, 0, 300, 300, 0, $FFFFFF, $000000);
    XSelectInput(dis, win, KeyPressMask or ExposureMask or ButtonPressMask or StructureNotifyMask);
    XStoreName(dis, win, 'GLX-Demo');
    XMapWindow(dis, win);

    // Context erzeugen
    cx := glXCreateContext(dis, vi, nil, True);
    if cx = nil then begin
      fatalError('could not create rendering context');
    end;
    glXMakeCurrent(dis, win, cx);
    glClearColor(0.5, 0.1, 0.1, 0.0);
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
        glScaled(0.5, 0.5, 1.0);

        glRotatef(zAngle, 0.0, 0.0, 1.0);
        zAngle := zAngle + 1.0;

        glBegin(GL_QUADS);
        glColor3f(0.0, 0.7, 0.1);
        glVertex3f(-1.0, 1.0, 1.0);

        glColor3f(0.7, 0.7, 0.1);
        glVertex3f(1.0, 1.0, 1.0);

        glColor3f(0.7, 0.1, 0.7);
        glVertex3f(1.0, -1.0, 1.0);

        glColor3f(0.1, 0.7, 0.7);
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
  MyWindows := TMyWin.Create;
  MyWindows.Run;
  MyWindows.Free;
end.
//code-
