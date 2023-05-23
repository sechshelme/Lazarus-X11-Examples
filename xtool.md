# Event Tool
Zeigt Event-Rückgabe an.
```bash
xev
```
Doku:
 - [xev](https://www.commandlinux.com/man-page/man1/xev.1.html)
 - [Sourcen](https://github.com/freedesktop/xev)


# Schriften Tools für X11

## Konsolen Tools:
Listet alle Fonts auf:
```bash
xlsfonts
```

Zeigt den Font an, Ausgabe in X11
```bash
xfd -fn [fontname]
```

## Grafisches Tool für Schriften:

```bash
xfontsel
```

## Font Editor

```bash
gbdfed
```
Muss evtl. installiert werden.
```
sudo apt install gbdfed
```
Meht infos: 
- [Font-Formate](http://x11.gweb.info/x11_0654_fontformats.html)

## Diverses
```bash
bitmap
```

## Fenster Info
```
xwininfo -tree
```

## XTootls Fenster-Info
```
editres
```

## Mehr Infos:

- [X11 und die Schrift](http://x11.gweb.info/x11_0650_fonts.html)

## Listet die Atoms
```
xlsatoms
```

## Auflösungen listen:
```
xrandr
```


## Fenster Info
```
xprop
xprop -f _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY 2000000000
xprop -root _NET_SUPPORTED 
xprop -f _NET_WM_NAME 8u -set _NET_WM_NAME "New Titel"
```

## CPU-Auslastung:
```
xload -update 1 &
```

## Display Info
```
xdpyinfo
```

Mehr: (https://www.oreilly.com/library/view/x-window-system/9780937175149/Chapter07.html)
