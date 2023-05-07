#include <stdio.h>

#include "window.h"
#include "log.h"

bool playground_callback(WinEventData* event_data) {
    // Die Art des Events ist ein KeyPress Event
    if(event_data->event_type == WinKeyPress) {
        // Gedrückte Taste auslesen
        WinKeyEventContent* evt_content = event_data->event_content;
        WinKey pressed_key = evt_content->key;
        
        if(pressed_key == KEY_ESC) {
            // Fenster schließen
            return true;
        }
        else if(pressed_key == KEY_F11) {
            // Aktuellen Vollbildstatus auslesen
            WinHandle* win = event_data->window;
            BoolResult is_fs = get_window_fullscreen(win);
    
            // Überprüfen, ob das Auslesen geklappt hat
            if(!is_fs.success) {
                log_error("playground_callback", "Failed to get fullscreen state");
                return false;
            }
            
            bool is_fullscreen = is_fs.value;
            
            // Vollbildstatus ändern
            set_window_fullscreen(win, !is_fullscreen);
        }
    }
    
    return false;
}

void playground() {
    log_trace("playground", "Enter");
    
    // Fensterparameter setzen
    WinParameter win_parm;
    win_parm.fullscreen = false;
    win_parm.width = 320;
    win_parm.height = 240;
    win_parm.title = "X11 Test";
    
    // X11 Fenster erstellen und öffnen
    WinHandle* win = create_window(&win_parm);
    
    // Eventschleife starten
    log_trace("playground", "Start eventloop");
    start_win_event_loop(win, playground_callback);
    
    // Müll rausbringen
    close_window(win);
}

int main()
{
    // Logger initialisieren
    init_logger(LvlTrace);
    
    // Spielplatz aufrufen
    playground();
    
    return 0;
}
