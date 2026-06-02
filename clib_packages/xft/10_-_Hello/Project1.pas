program Project1;

uses
  fp_xft,
  ctypes,
  x,
  xlib,
  keysym;

  procedure main;
  const
    text = 'Hello World !';
    font_name = 'Arial-50';
    xrcolor: TXRenderColor = (red: $FFFF; green: $0000; blue: $0000; alpha: $FFFF);

  var
    dpy: PDisplay;
    src: cint;
    win: TWindow;
    visual: PVisual;
    colormap: TColormap;
    xftdraw: PXftDraw;
    font: PXftFont;
    xftcolor: TXftColor;
    quit: boolean = False;
    event: TXEvent;

  begin
    dpy := XOpenDisplay(nil);
    if dpy = nil then begin
      WriteLn('Kann keine Verbindung zum X-Server herstellen.');
      Exit;
    end;

    src := DefaultScreen(dpy);
    win := XCreateSimpleWindow(dpy, RootWindow(dpy, src), 10, 10, 410, 100, 1, $000000, $880000);

    XSelectInput(dpy, win, ExposureMask or KeyPressMask);
    XMapWindow(dpy, win);

    visual := DefaultVisual(dpy, src);
    colormap := DefaultColormap(dpy, src);

    xftdraw := XftDrawCreate(dpy, win, visual, colormap);
    if xftdraw = nil then begin
      WriteLn('Kann XftDraw nicht erstellen.');
      exit;
    end;

    font := XftFontOpenName(dpy, src, font_name);
    if font = nil then begin
      WriteLn('Kann Schriftart nicht öffnen: ', font_name);
      font := XftFontOpenName(dpy, src, '');
      if font = nil then begin
        Exit;
      end;
    end;

    XftColorAllocValue(dpy, visual, colormap, @xrcolor, @xftcolor);
    repeat
      XNextEvent(dpy, @event);

      case event._type of
        Expose: begin
          XftDrawStringUtf8(xftdraw, @xftcolor, font, 20, 60, text, Length(text));
          XFlush(dpy);
        end;
        KeyPress: begin
          quit := True;
        end;
      end;
    until quit;

    XftDrawDestroy(xftdraw);
    XftColorFree(dpy, visual, colormap, @xftcolor);
    XftFontClose(dpy, font);
    XCloseDisplay(dpy);
  end;

begin
  main;
end.
