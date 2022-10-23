<html>
    <b><h1>04 - Tastatur</h1></b>
    <b><h2>20 - Tastatur Event</h2></b>
<img src="image.png" alt="Selfhtml"><br><br>
Besser man macht es objektorientiert mit Klassen.<br>
Die macht es übersichtlicher und ausbaufähiger.<br>
<hr><br>
<pre><code><b><font color="0000BB">program</font></b> Project1;
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
<br>
    <i><font color="#FFFF00">// Erstellt das Fenster</font></i>
    win := XCreateSimpleWindow(dis, RootWindow(dis, scr), <font color="#0077BB">10</font>, <font color="#0077BB">10</font>, <font color="#0077BB">320</font>, <font color="#0077BB">240</font>, <font color="#0077BB">1000</font>, BlackPixel(dis, scr), WhitePixel(dis, scr));
<br>
    <i><font color="#FFFF00">// Wählt die gewünschten Ereignisse aus</font></i>
    <i><font color="#FFFF00">// <b>KeyPressMask</b> ist für Tastatur-Erreignisse.</font></i>
    XSelectInput(dis, win, KeyPressMask);
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
  <b><font color="0000BB">var</font></b>
    Event: TXEvent;
  <b><font color="0000BB">begin</font></b>
    <i><font color="#FFFF00">// Ereignisschleife</font></i>
    <b><font color="0000BB">while</font></b> (<b><font color="0000BB">True</font></b>) <b><font color="0000BB">do</font></b> <b><font color="0000BB">begin</font></b>
      XNextEvent(dis, @Event);
<br>
      <b><font color="0000BB">case</font></b> Event._type <b><font color="0000BB">of</font></b>
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
</html>
