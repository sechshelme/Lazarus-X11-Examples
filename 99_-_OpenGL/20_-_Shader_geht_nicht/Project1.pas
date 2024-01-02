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
  GLext,

  GL;

const
  VertexShader = '#version 330' + LineEnding + 'layout (location = 0) in vec3 inPos; void main(void){gl_Position = vec4(inPos, 1.0);}';
  FragmetShader = '#version 330' + LineEnding + 'out vec4 outColor; void main(void){outColor = vec4(1.0, 0.0, 0.0, 1.0);}';

type
  TVertex3f = array[0..2] of GLfloat;
  TFace = array[0..2] of TVertex3f;

const
  Quad: array[0..1] of TFace =
    (((-0.2, -0.6, 0.0), (-0.2, -0.1, 0.0), (0.2, -0.1, 0.0)),
    ((-0.2, -0.6, 0.0), (0.2, -0.1, 0.0), (0.2, -0.6, 0.0)));

type
  TVB = record
    VAO,
    VBO: GLuint;
  end;

var
  VBQuad: TVB;
  ProgramID: GLuint;
type

  { TMyWin }

  TMyWin = class(TObject)
  private
    dis: PDisplay;
    win: TWindow;
    zAngle: GLfloat;
    doubleBuffer: GLboolean;
  public
    constructor Create;
    destructor Destroy; override;
    function Initshader(VertexDatei, FragmentDatei: string): GLuint;
    procedure Run;
  end;

  procedure fatalError(const s: string);
  begin
    WriteLn(s);
    Halt;
  end;

  // https://github.com/datenwolf/codesamples/blob/master/samples/OpenGL/x11argb_opengl_glsl/x11argb_opengl_glsl.c

  constructor TMyWin.Create;
  var
    dummy: integer;
    sngBuf: array of integer = (GLX_RGBA, GLX_DEPTH_SIZE, 16, None);
    dblBuf: array of integer = (GLX_RGBA, GLX_DEPTH_SIZE, 16, GLX_DOUBLEBUFFER, None);
    vi: PXVisualInfo;
    cx: GLXContext;
    OpenGLRootWin: TWindow;
    fpconfig: TGLXFBConfig = nil;
    fpconfigs: PGLXFBConfig = nil;
    scr: cint;
    nitems:cint;
  const
    context_attribs: array of cint = (
      GLX_CONTEXT_MAJOR_VERSION_ARB, 3,
      GLX_CONTEXT_MINOR_VERSION_ARB, 3,
      GLX_CONTEXT_FLAGS_ARB, GLX_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB, 0);

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
    scr:=DefaultScreen(dis);
fpconfigs:=    glXChooseFBConfig(dis,scr,nil,nitems);

    glXCreateContextAttribsARB(dis, fpconfig, nil, True, pcint(context_attribs));


    cx := glXCreateContext(dis, vi, nil, True);
    if cx = nil then begin
      fatalError('could not create rendering context');
    end;
    glXMakeCurrent(dis, win, cx);
    glClearColor(0.5, 0.1, 0.1, 0.0);


    // Vertex laden
    ProgramID := InitShader(VertexShader, FragmetShader);
    glUseProgram(programID);
    //code-
    glGenVertexArrays(1, @VBQuad.VAO);
    glGenBuffers(1, @VBQuad.VBO);
  end;

  destructor TMyWin.Destroy;
  begin
    // Schliesst das Fenster
    XDestroyWindow(dis, win);

    // Schliesst Verbindung zum Server
    XCloseDisplay(dis);
    inherited Destroy;
  end;

  function TMyWin.Initshader(VertexDatei, FragmentDatei: string): GLuint;
  var
    s: string;
    VertexShaderObject: GLuint;
    FragmentShaderObject: GLuint;

    ErrorStatus, InfoLogLength: integer;
    ProgramObject: GLuint;

  begin
    halt;
    ProgramObject := glCreateProgram();

    // Vertex - Shader

    VertexShaderObject := glCreateShader(GL_VERTEX_SHADER);
    glShaderSource(VertexShaderObject, 1, @VertexDatei, nil);
    glCompileShader(VertexShaderObject);
    glAttachShader(ProgramObject, VertexShaderObject);

    // Check Shader

    glGetShaderiv(VertexShaderObject, GL_COMPILE_STATUS, @ErrorStatus);
    if ErrorStatus = 0 then begin
      glGetShaderiv(VertexShaderObject, GL_INFO_LOG_LENGTH, @InfoLogLength);
      SetLength(s, InfoLogLength + 1);
      glGetShaderInfoLog(VertexShaderObject, InfoLogLength, nil, @s[1]);
      WriteLn(s, ' OpenGL Vertex Fehler');
      Halt;
    end;

    glDeleteShader(VertexShaderObject);

    // Fragment - Shader

    FragmentShaderObject := glCreateShader(GL_FRAGMENT_SHADER);
    glShaderSource(FragmentShaderObject, 1, @FragmentDatei, nil);
    glCompileShader(FragmentShaderObject);
    glAttachShader(ProgramObject, FragmentShaderObject);

    // Check Shader

    glGetShaderiv(FragmentShaderObject, GL_COMPILE_STATUS, @ErrorStatus);
    if ErrorStatus = 0 then begin
      glGetShaderiv(FragmentShaderObject, GL_INFO_LOG_LENGTH, @InfoLogLength);
      SetLength(s, InfoLogLength + 1);
      glGetShaderInfoLog(FragmentShaderObject, InfoLogLength, nil, @s[1]);
      WriteLn(s, ' OpenGL Fragment Fehler');
      Halt;
    end;

    glDeleteShader(FragmentShaderObject);
    glLinkProgram(ProgramObject);    // Die beiden Shader zusammen linken

    // Check Link
    glGetProgramiv(ProgramObject, GL_LINK_STATUS, @ErrorStatus);
    if ErrorStatus = 0 then begin
      glGetProgramiv(ProgramObject, GL_INFO_LOG_LENGTH, @InfoLogLength);
      SetLength(s, InfoLogLength + 1);
      glGetProgramInfoLog(ProgramObject, InfoLogLength, nil, @s[1]);
      WriteLn(s, ' OpenGL ShaderLink Fehler');
      Halt;
    end;

    Result := ProgramObject;
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
