# 02 - Grafische Ausgabe
## 22 - Linien
<img src="image.png" alt="Selfhtml"><br><br>
Verschiedene Varinaten um Linien zu zeichen.<br>
<br>
- [XDrawLine](https://tronche.com/gui/x/xlib/graphics/drawing/XDrawLine.html)<br>
- [XDrawLines](https://tronche.com/gui/x/xlib/graphics/drawing/XDrawLines.html)<br>
<hr><br>
<pre><code=pascal><b><font color="0000BB">program</font></b> Project1;
<br>
<b><font color="0000BB">uses</font></b>
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  x;
<br>
<b><font color="0000BB">type</font></b>
  TMyWin = <b><font color="0000BB">class</font></b>(TObject)
  <b><font color="0000BB">private</font></b>
    dis: PDisplay;
    scr: cint;
    depth: cint;
    rootwin, win: TWindow;
    gc: TGC;
  <b><font color="0000BB">public</font></b>
    <b><font color="0000BB">constructor</font></b> Create;
    <b><font color="0000BB">destructor</font></b> Destroy; <b><font color="0000BB">override</font></b>;
    <b><font color="0000BB">procedure</font></b> Run;
  <b><font color="0000BB">end</font></b>;
<br>
  <b><font color="0000BB">constructor</font></b> TMyWin.Create;
  <b><font color="0000BB">begin</font></b>
    <b><font color="0000BB">inherited</font></b> Create;
<br>
    <i><font color="#FFFF00">// Erstellt die Verbindung zum Server</font></i>
    dis := XOpenDisplay(<b><font color="0000BB">nil</font></b>);
    <b><font color="0000BB">if</font></b> dis = <b><font color="0000BB">nil</font></b> <b><font color="0000BB">then</font></b> <b><font color="0000BB">begin</font></b>
      WriteLn(<font color="#FF0000">'Kann nicht das Display öffnen'</font>);
      Halt(<font color="#0077BB">1</font>);
    <b><font color="0000BB">end</font></b>;
    scr := DefaultScreen(dis);
    gc := DefaultGC(dis, scr);
<br>
    <i><font color="#FFFF00">// Erstellt das Fenster</font></i>
    win := XCreateSimpleWindow(dis, RootWindow(dis, scr), <font color="#0077BB">10</font>, <font color="#0077BB">10</font>, <font color="#0077BB">320</font>, <font color="#0077BB">240</font>, <font color="#0077BB">1</font>, BlackPixel(dis, scr), WhitePixel(dis, scr));
<br>
    <i><font color="#FFFF00">// Wählt die gewünschten Ereignisse aus</font></i>
    <i><font color="#FFFF00">// Es werden die Ereignisse <b>KeyPressMask</b> und <b>ExposureMask</b> für die grafische Auzsgabe gebraucht.</font></i>
    XSelectInput(dis, win, KeyPressMask <b><font color="0000BB">or</font></b> ExposureMask);
<br>
    <i><font color="#FFFF00">// Fenster anzeigen</font></i>
    XMapWindow(dis, win);
  <b><font color="0000BB">end</font></b>;
<br>
  <b><font color="0000BB">destructor</font></b> TMyWin.Destroy;
  <b><font color="0000BB">begin</font></b>
    <i><font color="#FFFF00">// Schliesst Verbindung zum Server</font></i>
    XCloseDisplay(dis);
    <b><font color="0000BB">inherited</font></b> Destroy;
  <b><font color="0000BB">end</font></b>;
<br>
  <b><font color="0000BB">procedure</font></b> TMyWin.Run;
  <b><font color="0000BB">const</font></b>
    maxSektoren = <font color="#0077BB">8</font>;
  <b><font color="0000BB">var</font></b>
    Event: TXEvent;
    punkte: <b><font color="0000BB">array</font></b>[<font color="#0077BB">0</font>..maxSektoren] <b><font color="0000BB">of</font></b> TXPoint;
    i: integer;
  <b><font color="0000BB">begin</font></b>
    <b><font color="0000BB">for</font></b> i := <font color="#0077BB">0</font> <b><font color="0000BB">to</font></b> maxSektoren - <font color="#0077BB">1</font> <b><font color="0000BB">do</font></b> <b><font color="0000BB">begin</font></b>
      punkte[i].x := round(Sin(Pi * <font color="#0077BB">2</font> / (maxSektoren - <font color="#0077BB">1</font>) * i) * <font color="#0077BB">50</font>) + <font color="#0077BB">200</font>;
      punkte[i].y := round(Cos(Pi * <font color="#0077BB">2</font> / (maxSektoren - <font color="#0077BB">1</font>) * i) * <font color="#0077BB">50</font>) + <font color="#0077BB">110</font>;
    <b><font color="0000BB">end</font></b>;
<br>
    <i><font color="#FFFF00">// Ereignisschleife</font></i>
    <b><font color="0000BB">while</font></b> (<b><font color="0000BB">True</font></b>) <b><font color="0000BB">do</font></b> <b><font color="0000BB">begin</font></b>
      XNextEvent(dis, @Event);
<br>
      <b><font color="0000BB">case</font></b> Event._type <b><font color="0000BB">of</font></b>
        Expose: <b><font color="0000BB">begin</font></b>
          <i><font color="#FFFF00">// Bildschirm löschen</font></i>
          XClearWindow(dis, win);
          <i><font color="#FFFF00">// Eine einfache Linie</font></i>
          XDrawLine(dis, win, gc, <font color="#0077BB">10</font>, <font color="#0077BB">60</font>, <font color="#0077BB">110</font>, <font color="#0077BB">160</font>);
          <i><font color="#FFFF00">// Ein Linien-Array</font></i>
          XDrawLines(dis, win, gc, @punkte, Length(punkte) - <font color="#0077BB">1</font>, <font color="#0077BB">0</font>);
        <b><font color="0000BB">end</font></b>;
        KeyPress: <b><font color="0000BB">begin</font></b>
          <i><font color="#FFFF00">// Beendet das Programm bei [ESC]</font></i>
          <b><font color="0000BB">if</font></b> XLookupKeysym(@Event.xkey, <font color="#0077BB">0</font>) = XK_Escape <b><font color="0000BB">then</font></b> <b><font color="0000BB">begin</font></b>
            <b><font color="0000BB">Break</font></b>;
          <b><font color="0000BB">end</font></b>;
        <b><font color="0000BB">end</font></b>;
      <b><font color="0000BB">end</font></b>;
<br>
    <b><font color="0000BB">end</font></b>;
  <b><font color="0000BB">end</font></b>;
<br>
<b><font color="0000BB">var</font></b>
  MyWindows: TMyWin;
<br>
<b><font color="0000BB">begin</font></b>
  MyWindows := TMyWin.Create;
  MyWindows.Run;
  MyWindows.Free;
<b><font color="0000BB">end</font></b>.</code></pre>
<br>
