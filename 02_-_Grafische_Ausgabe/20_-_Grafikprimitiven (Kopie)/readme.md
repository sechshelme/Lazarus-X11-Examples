# 02 - Grafische Ausgabe
## 20 - Grafikprimitiven (Kopie)
<img src="image.png" alt="Selfhtml"><br><br>
In den meisten Fällen ist es nötig, das man etwas auf das Fenster zeichnet.<br>
Hier im Beispiel ist es ein einfaches Rechteck, welches mit <b>XFillRectangle</b> gezeichnet wird.<br>
XFillRectangle(Display, Windows, GC, PosX, PosY, Breite, Höhe)<br>
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
  <b><font color="0000BB">var</font></b>
    Event: TXEvent;
    poly: <b><font color="0000BB">array</font></b>[<font color="#0077BB">0</font>..<font color="#0077BB">3</font>] <b><font color="0000BB">of</font></b> TXPoint;
    punkte: <b><font color="0000BB">array</font></b>[<font color="#0077BB">0</font>..<font color="#0077BB">49</font>] <b><font color="0000BB">of</font></b> TXPoint;
    i: integer;
  <b><font color="0000BB">begin</font></b>
    <i><font color="#FFFF00">// Ereignisschleife</font></i>
    <b><font color="0000BB">while</font></b> (<b><font color="0000BB">True</font></b>) <b><font color="0000BB">do</font></b> <b><font color="0000BB">begin</font></b>
      XNextEvent(dis, @Event);
<br>
      <b><font color="0000BB">case</font></b> Event._type <b><font color="0000BB">of</font></b>
        Expose: <b><font color="0000BB">begin</font></b>
          <i><font color="#FFFF00">// Das Rechteck wird gezeichnet</font></i>
          XClearWindow(dis, win);
          <i><font color="#FFFF00">// Ein Rechteck zeichnen</font></i>
          XDrawRectangle(dis, win, gc, <font color="#0077BB">10</font>, <font color="#0077BB">50</font>, <font color="#0077BB">50</font>, <font color="#0077BB">50</font>);
          <i><font color="#FFFF00">// Einen rechteckigen Bereich mit Farbe füllen</font></i>
          XFillRectangle(dis, win, gc, <font color="#0077BB">110</font>, <font color="#0077BB">50</font>, <font color="#0077BB">50</font>, <font color="#0077BB">50</font>);
          <i><font color="#FFFF00">// Einen Kreis zeichnen</font></i>
          XDrawArc(dis, win, gc, <font color="#0077BB">210</font>, <font color="#0077BB">50</font>, <font color="#0077BB">50</font>, <font color="#0077BB">50</font>, <font color="#0077BB">0</font>, <font color="#0077BB">360</font> * <font color="#0077BB">64</font>);
          <i><font color="#FFFF00">// Einen Kreisbereich füllen</font></i>
          XFillArc(dis, win, gc, <font color="#0077BB">310</font>, <font color="#0077BB">50</font>, <font color="#0077BB">50</font>, <font color="#0077BB">50</font>, <font color="#0077BB">0</font>, <font color="#0077BB">360</font> * <font color="#0077BB">64</font>);
          <i><font color="#FFFF00">// Eine Ellipse zeichnen</font></i>
          XDrawArc(dis, win, gc, <font color="#0077BB">410</font>, <font color="#0077BB">50</font>, <font color="#0077BB">60</font>, <font color="#0077BB">40</font>, <font color="#0077BB">0</font>, <font color="#0077BB">360</font> * <font color="#0077BB">64</font>);
          <i><font color="#FFFF00">// Einen Ellipsenbereich füllen</font></i>
          XFillArc(dis, win, gc, <font color="#0077BB">510</font>, <font color="#0077BB">50</font>, <font color="#0077BB">60</font>, <font color="#0077BB">40</font>, <font color="#0077BB">0</font>, <font color="#0077BB">360</font> * <font color="#0077BB">64</font>);
          <i><font color="#FFFF00">// Einen Halbkreis zeichnen</font></i>
          XDrawArc(dis, win, gc, <font color="#0077BB">10</font>, <font color="#0077BB">200</font>, <font color="#0077BB">60</font>, <font color="#0077BB">40</font>, <font color="#0077BB">90</font> * <font color="#0077BB">64</font>, <font color="#0077BB">180</font> * <font color="#0077BB">64</font>);
          <i><font color="#FFFF00">// Einen Halbkreis füllen</font></i>
          XFillArc(dis, win, gc, <font color="#0077BB">110</font>, <font color="#0077BB">200</font>, <font color="#0077BB">60</font>, <font color="#0077BB">40</font>, <font color="#0077BB">90</font> * <font color="#0077BB">64</font>, <font color="#0077BB">180</font> * <font color="#0077BB">64</font>);
          <i><font color="#FFFF00">// Einen bestimmten Bereich im Polygon (in diesem Fall ein</font></i>
          <i><font color="#FFFF00">// Dreieck füllen ausgefuelltes Polygon bzw. Dreieck</font></i>
          <i><font color="#FFFF00">// geschlossenes Dreieck</font></i>
          poly[<font color="#0077BB">0</font>].x := <font color="#0077BB">200</font>;
          poly[<font color="#0077BB">0</font>].y := <font color="#0077BB">200</font>;
          poly[<font color="#0077BB">1</font>].x := <font color="#0077BB">300</font>;
          poly[<font color="#0077BB">1</font>].y := <font color="#0077BB">300</font>;
          poly[<font color="#0077BB">2</font>].x := <font color="#0077BB">400</font>;
          poly[<font color="#0077BB">2</font>].y := <font color="#0077BB">200</font>;
          poly[<font color="#0077BB">3</font>].x := <font color="#0077BB">200</font>;
          poly[<font color="#0077BB">3</font>].y := <font color="#0077BB">200</font>;
          XFillPolygon(dis, win, gc, poly, <font color="#0077BB">4</font>, <font color="#0077BB">0</font>, CoordModeOrigin);
          <i><font color="#FFFF00">// Eine schräge Linie mit Punkten</font></i>
          <i><font color="#FFFF00">// Ein paar Felder belegen</font></i>
          <i><font color="#FFFF00">// Eine Schräge mithilfe von Punkten zeichnen</font></i>
          <b><font color="0000BB">for</font></b> i := <font color="#0077BB">0</font> <b><font color="0000BB">to</font></b> <font color="#0077BB">49</font> <b><font color="0000BB">do</font></b> <b><font color="0000BB">begin</font></b>
            punkte[i].x := <font color="#0077BB">470</font> + i;
            punkte[i].y := <font color="#0077BB">200</font> + i;
          <b><font color="0000BB">end</font></b>;
          XDrawPoints(dis, win, gc, punkte, <font color="#0077BB">50</font>, CoordModeOrigin);
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
