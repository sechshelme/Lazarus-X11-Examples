# pragma once

// Std lib includes //
#include <stdbool.h>

// Local includes //
#include "result.h"

// Description //
// Tools for window handling

// Typedefs //
typedef void WinEvent;
typedef void WinEventContent;
typedef void WinHandle;

// Enums //
typedef enum WinEventTypeEn {
    WinClose, // If the user pressed the close button or pushed ALT + F4
    WinKeyPress,
    WinKeyRelease,
} WinEventType;

// Common keys needed by games
typedef enum WinKeyEn {
    KEY_UNKNOWN,
    KEY_ESC,
    KEY_LEFT,
    KEY_UP,
    KEY_RIGHT,
    KEY_DOWN,
    KEY_F11,
} WinKey;

// Structs //
typedef struct WinEventDataSt {
    WinHandle* window;
    WinEventType event_type;
    WinEventContent* event_content;
} WinEventData;

typedef struct WinKeyEventContentSt {
    WinKey key;
} WinKeyEventContent;

typedef struct WinParameterSt {
    unsigned int width;
    unsigned int height;
    char* title;
    bool fullscreen;
} WinParameter;

typedef struct WinSizeSt {
    unsigned int width;
    unsigned int height;
} WinSize;

// Callback function typedefs //
// Callback Funktion welche beim Eintreffen von Tastatur-Events aufgerufen wird.
// Parameter: Pointer zu den Eventdaten
// Rückgabe: Boolean, welche angibt, ob die Eventschleife beendet werden soll.
typedef bool (WinEventHandle)(WinEventData*);

// API Functions //
// Ein Fenster öffnen und ein Pointer auf den Handle zurückgeben
extern WinHandle* create_window(const WinParameter* win_param);

// Überprüfe, ob das angegebene Fenster sich im Vollbildmosus befindet
extern BoolResult get_window_fullscreen(WinHandle* window_handle);

// Vollbildmodus für das Fenster aktivieren oder deaktivieren
extern bool set_window_fullscreen(WinHandle* window_handle, bool fullscreen);

// Eventloop starten
extern void start_win_event_loop(WinHandle* window_handle, WinEventHandle* event_callback);

// Fenster schließen
extern void close_window(WinHandle* window_handle);
