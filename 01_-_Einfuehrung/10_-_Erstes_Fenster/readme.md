<html>
    <b><h1>01 - Einfuerung</h1></b>
    <b><h2>10 - Erstes Fenster</h2></b>
<img src="image.png" alt="Selfhtml"><br><br>
Erstes Fenster mit <b>X11</b> wird erstellt.<br>
Es wird nur ein einziges Eregniss gebraucht.<br>
Ein Tastatur-Event, welches <b>[ESC]</b> abfängt und das Programm beendet.<br>
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
<b><font color="0000BB">var</font></b>
  dis: PDisplay;
  win: TWindow;
  Event: TXEvent;
  scr: cint;
<br>
<b><font color="0000BB">begin</font></b>
  <i><font color="#FFFF00">// Erstellt die Verbindung zum Server</font></i>
  dis := XOpenDisplay(<b><font color="0000BB">nil</font></b>);
  <b><font color="0000BB">if</font></b> dis = <b><font color="0000BB">nil</font></b> <b><font color="0000BB">then</font></b> <b><font color="0000BB">begin</font></b>
    WriteLn(<font color="#FF0000">'Kann nicht das Display öffnen'</font>);
    Halt(<font color="#0077BB">1</font>);
  <b><font color="0000BB">end</font></b>;
  scr := DefaultScreen(dis);
<br>
  <i><font color="#FFFF00">// Erstellt das Fenster</font></i>
  win := XCreateSimpleWindow(dis, RootWindow(dis, scr), <font color="#0077BB">10</font>, <font color="#0077BB">10</font>, <font color="#0077BB">320</font>, <font color="#0077BB">240</font>, <font color="#0077BB">1</font>, BlackPixel(dis, scr), WhitePixel(dis, scr));
<br>
  <i><font color="#FFFF00">// Wählt die gewünschten Ereignisse aus</font></i>
  <i><font color="#FFFF00">// Es wird nur das Tastendrückereigniss <b>KeyPressMask</b> gebraucht.</font></i>
  XSelectInput(dis, win, KeyPressMask);
<br>
  <i><font color="#FFFF00">// Fenster anzeigen</font></i>
  XMapWindow(dis, win);
<br>
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
<br>
  <i><font color="#FFFF00">// Schliesst Verbindung zum Server</font></i>
  XCloseDisplay(dis);
<b><font color="0000BB">end</font></b>.</code></pre>
<br>
</html>
