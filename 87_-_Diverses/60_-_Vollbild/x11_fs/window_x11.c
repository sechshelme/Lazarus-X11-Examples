// Std lib includes //
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// System lib includes //
#include <X11/Xlib.h>
#include <X11/Xutil.h>
#include <GL/glx.h>

// Local includes //
#include "log.h"
#include "window.h"

// Internal structs //
typedef struct X11WinHandleSt {
    Display* display;
    Window window;
    int screen;
} X11WinHandle;

// Constants //
const long _NET_WM_STATE_REMOVE = 0;
const long _NET_WM_STATE_ADD = 1;
const long _NET_WM_STATE_TOGGLE = 2;
const long EVENT_SOURCE_APPLICATION = 1;

// Internal functions
WinKey xevent_keycode_to_key(unsigned int keycode) {
    switch(keycode) {
        case 9: return KEY_ESC;
        case 95: return KEY_F11;
        case 111: return KEY_UP;
        case 113: return KEY_LEFT;
        case 114: return KEY_RIGHT;
        case 116: return KEY_DOWN;
    }
    
    return KEY_UNKNOWN;
}

// API functions //
WinHandle* create_window(const WinParameter* win_param)
{
    // Verbindung zum Xorg Server herstellen
    Display* display = XOpenDisplay(NULL);
    
    // Überprüfe, ob die Verbindung erfolgreich hergestellt wurde
    if(!display) {
        log_error("create_window", "Verbindung zum Xorg Server konnte nicht hergestellt werden!");
        
        return NULL;
    }
    
    // Standardbildschirm abfragen
    int screen =  XDefaultScreen(display);
    
    // Mitgegebene Fensterparameter auslesen
    unsigned int win_width = win_param->width;
    unsigned int win_height = win_param->height;
    char* win_title = win_param->title;
    
    // Elternfenster (in dem Fall das Wurzelfenster) bestimmen
    Window parent_win =  XRootWindow(display, screen);
    
    // Rand- und Hintergrundfarbe setzen
    unsigned long border_color = XBlackPixel(display, screen);
    unsigned long background_color = border_color;
    
    // Randbreite setzen
    unsigned int border_width = 2;
    
    // X11 Fenster erstellen
    Window window = XCreateSimpleWindow(display, parent_win, 0, 0, win_width, win_height,
                                        border_width, border_color, background_color);
    
    // Fenstertitel setzen
    XStoreName(display, window, win_title);
    
    // Setzen, welche Events von der Anwendung verarbeitet werden
    long int event_mask = KeyPressMask | KeyReleaseMask | VisibilityChangeMask;
    XSelectInput(display, window, event_mask);
    
    // Die Anwendung soll sich um Close Events kümmern
    Atom wm_close = XInternAtom(display, "WM_DELETE_WINDOW", False);
    
    if(!wm_close) {
        log_error("create_window", "WM_DELETE_WINDOW Atom nicht gefunden!");
        
        XDestroyWindow(display, window);
        XCloseDisplay(display);
        
        return NULL;
    }
    
    XSetWMProtocols(display, window, &wm_close, 1);
    
    // Fenster anzeigen
    XMapWindow(display, window);
    
    // Warten, bis das Fenster sichtar wird
    XEvent xev;
    
    while(true) {
        XNextEvent(display, &xev);
        
        if(xev.type == VisibilityNotify) {
            break;
        }
    }
    
    // Fensterhandle konstruieren
    X11WinHandle* x11_win_handle = malloc(sizeof(X11WinHandle));
    
    // Felder des Fensterhandlers setzen
    x11_win_handle->display = display;
    x11_win_handle->window = window;
    x11_win_handle->screen = screen;
    
    return x11_win_handle;
}

BoolResult get_window_fullscreen(WinHandle* window_handle) {
    // Standard Rückgabe konstruieren
    BoolResult ret_val;
    ret_val.success = false;
    ret_val.value = false;
    
    // Nullpointer abfangen
    if(!window_handle) {
        log_error("get_window_fullscreen", "Got NULL for window handle");
        
        return ret_val;
    }
    
    // Die benötigten Daten aus dem Fensterhandle auslesen
    X11WinHandle* x11_window_handle = window_handle;
    Display* x11_display = x11_window_handle->display;
    Window x11_window = x11_window_handle->window;
    
    // Die benötigten Atome auslesen
    Atom wm_state = XInternAtom(x11_display, "_NET_WM_STATE", False);
    
    // Überprüfe, ob die Atome definiert sind
    if(wm_state == None) {
        log_error("get_window_fullscreen", "Failed to get X11 atom!");
        
        return ret_val;
    }
    
    // Daten für das Abfragen der Fenstereigenschaften deklarieren
    long long_offset = 0;
    long long_length = 64; // Maximale Anzahl an auszulesenden Eigenschaften
    unsigned char* prop_value = NULL;
    int prop_format;
    unsigned long prop_items_count;
    unsigned long prop_bytes_a;
    Atom prop_type;
    
    // Eigenschaften vom "_NET_WM_STATE" Schlüssel abfragen
    Status get_success = XGetWindowProperty(x11_display, x11_window, wm_state,
                                            long_offset, long_length, False, AnyPropertyType,
                                            &prop_type, &prop_format, &prop_items_count,
                                            &prop_bytes_a, &prop_value);
    
    // Überprüfe, ob das Abfragen der Eigenschaften erfolgreich war
    if(get_success != Success) {
        log_error("get_window_fullscreen", "Failed to get property content for WM state!");
        
        // Aufräumen
        if(prop_value)
            XFree(prop_value);
        
        return ret_val;
    }
    
    // Wenn das Fenster die _NET_WM_STATE Eigenschaft nicht hat
    if(prop_type == None) {
        log_error("get_window_fullscreen", "The window hasn't the WM_STATE property!");
        
        // Aufräumen
        if(prop_value)
            XFree(prop_value);
        
        return ret_val;
    }
    
    // Wenn dem Fenster keine Fensterstatuseigenschaften zugewiesen sind
    if(!prop_items_count) {
        // Aufräumen
        if(prop_value)
            XFree(prop_value);
        
        // Fenster ist nicht im Vollbildmodus
        ret_val.success = true;
        return ret_val;
    }
    
    // Property value zu einer Liste von Atomen umwandeln
    Atom* prop_value_atom_ptr = (Atom*) prop_value;
    
    // Gesetzte Eigenschaften für das Fenster durchgehen und schauen, ob die Vollbild
    // Eigenschaft dabei ist
    for(long i = 0; i < prop_items_count; i++) {
        // Aktuelles Atom aus dem Array auslesen und in CString umwandeln
        Atom current_value_atom = prop_value_atom_ptr[i];
        char* current_value_atom_str = XGetAtomName(x11_display, current_value_atom);
        
        // Debug
        log_debug("get_window_fullscreen", "current_value_atom_str: %s", current_value_atom_str);
        
        // Wenn die aktuelle Eigenschaft die ist, dass das Fenster sich im Vollbild befindet
        if(strcmp(current_value_atom_str, "_NET_WM_STATE_FULLSCREEN") == 0) {
            ret_val.value = true;
            XFree(current_value_atom_str);
            break;
        }
        
        XFree(current_value_atom_str);
    }
    
    // Aufräumen
    XFree(prop_value);
    
    ret_val.success = true;
    return ret_val;
}

bool set_window_fullscreen(WinHandle* window_handle, bool fullscreen) {
    // Auf Nullpointer überprüfen
    if(!window_handle) {
        log_error("set_window_fullscreen", "Gut a nullptr as window handle!");
        
        return false;
    }
    
    // Benötigten daten aus dem Fensterhandle auslesen
    X11WinHandle* x11_window_handle = window_handle;
    Display* x11_display = x11_window_handle->display;
    Window x11_window = x11_window_handle->window;
    int x11_screen = x11_window_handle->screen;
    
    // Benötigten Atome bestimmen
    Atom wm_state = XInternAtom(x11_display, "_NET_WM_STATE", False);
    Atom wm_fullscreen = XInternAtom(x11_display, "_NET_WM_STATE_FULLSCREEN", False);
    
    // Überprüfen, ob die benötigten Atome vorhanden sind
    if(wm_state == None || wm_fullscreen == None) {
        log_error("set_window_fullscreen", "Fenstermanager unterstützt kein Vollbildmodus!");
        
        return false;
    }
    
    // Ein ClientMessage Event konstruieren welches das Fenster in den gewünschten Zustand bringt
    XEvent xev;
    xev.type = ClientMessage;
    xev.xclient.display = x11_display;
    xev.xclient.window = x11_window;
    xev.xclient.message_type = wm_state;
    xev.xclient.format = 32;
    
    if(fullscreen) {
        xev.xclient.data.l[0] = _NET_WM_STATE_ADD;
    }
    else {
        xev.xclient.data.l[0] = _NET_WM_STATE_REMOVE;
    }
    
    xev.xclient.data.l[1] = wm_fullscreen;
    xev.xclient.data.l[2] = 0;
    xev.xclient.data.l[3] = EVENT_SOURCE_APPLICATION; // Bedeutet, dass das Event von der Applikation kommt
    xev.xclient.data.l[4] = 0;
    
    // Event Empfänger und Eventmaske setzen
    Window x11_root_window = XRootWindow(x11_display, x11_screen);
    long event_mask = SubstructureRedirectMask;
    
    // Event senden
    int evt_success = XSendEvent(x11_display, x11_root_window, False, event_mask, &xev);
    
    // Überprüfen, ob das Event erfolgreich gesendet wurde
    if(!evt_success) {
        log_error("set_window_fullscreen", "Fehler beim Versenden des X11 Events!");
        
        return false;
    }
    
    return true;
}

void start_win_event_loop(WinHandle* window_handle, WinEventHandle* event_callback) {
    // Nullpointer abfangen
    if(!window_handle) {
        log_error("start_win_event_loop", "Gut a nullptr as window handle!");
        
        return;
    }
    
    if(!event_callback) {
        log_error("start_win_event_loop", "Gut a nullptr as event callback!");
        
        return;
    }
    
    // Generischen Fensterhandle zum X11 Fensterhandle umwandeln
    X11WinHandle* x11_window_handle = window_handle;
    
    // X11 display aus dem handle auslesen
    Display* display = x11_window_handle->display;
    
    // XEvent Struktur auf dem Stack deklarieren
    XEvent xev;
    
    // Schleife, solange das Programm nicht per ESC-Taste oder X-Klick geschlossen wird
    while(true) {
        // Nächstes X11 Event auslesen
        XNextEvent(display, &xev);
        
        // Überprüfen um welche Art Event es sich handelt
        if(xev.type == KeyPress || xev.type == KeyRelease) {
            // Tastencode auslesen
            unsigned int keycode = xev.xkey.keycode;
            
            // Tastencode zum im WinKeyEventContent benutzten Code umwandeln
            WinKey key = xevent_keycode_to_key(keycode);
            
            // WinKeyEventContent Struktur auf dem Stack erstellen
            WinKeyEventContent evt_key_content;
            evt_key_content.key = key;
            
            // WinEventData Struktur auf dem Stack erstellen
            WinEventData win_evt_data;
            win_evt_data.window = window_handle;
            win_evt_data.event_content = &evt_key_content;
            
            if(xev.type == KeyPress) {
                win_evt_data.event_type = WinKeyPress;
            }
            else {
                win_evt_data.event_type = WinKeyRelease;
            }
            
            // Callbackfunktion aufrufen
            bool callback_result = event_callback(&win_evt_data);
            
            if(callback_result) {
                break;
            }
        }
        else if(xev.type == ClientMessage) {
            // Typ der im Event enthaltenen Nachricht auslesen
            Atom msg_type = xev.xclient.message_type;
            char* msg_type_str = XGetAtomName(display, msg_type);
            
            // Wenn es sich bei der per Event übergebenen Nachricht um eine "WM_PROTOCOLS" handelt
            if(strcmp(msg_type_str, "WM_PROTOCOLS") == 0 && xev.xclient.format == 32) {
                // Inhalt des ClientMessage Events auslesen
                Atom wm_msg = xev.xclient.data.l[0];
                char* wm_msg_str = XGetAtomName(display, wm_msg);
                
                // Wenn der Inhalt der ClientMessage eine Anfrage zum schließen des Fensters ist --> Fenster schließen
                if(strcmp(wm_msg_str, "WM_DELETE_WINDOW") == 0) {
                    // Aufräumen
                    XFree(msg_type_str);
                    XFree(wm_msg_str);
                    
                    // Eventschleife beenden
                    break;
                }
                
                // Aufräumen
                XFree(wm_msg_str);
            }
            
            // Aufräumen
            XFree(msg_type_str);            
        }
    }
}

void close_window(WinHandle* window_handle) {
    // Nullpointer abfangen
    if(!window_handle) {
        return;
    }
    
    // Generischen Fensterhandle zum X11 Fensterhandle umwandeln
    X11WinHandle* x11_window_handle = window_handle;
    
    // Gespeicherte Pointer/Daten auslesen
    Display* display = x11_window_handle->display;
    Window window = x11_window_handle->window;
    
    // Fenster schließen und Verbindung zum Xorg Server beenden
    XDestroyWindow(display, window);
    XCloseDisplay(display);
    
    // Daten vom Fensterhandle löschen
    free(x11_window_handle);
}
