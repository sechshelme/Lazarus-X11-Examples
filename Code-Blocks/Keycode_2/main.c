#include <stdio.h>
#include <locale.h>
#include <X11/Xlib.h>
#include <X11/keysym.h>

int main(void){

    setlocale(LC_ALL, "");

    Display* dpy = XOpenDisplay(NULL);

    Window win = XCreateSimpleWindow(dpy, DefaultRootWindow(dpy), 0, 0, 500, 500, 0, 0XFF88, 0XFF88);
    XMapRaised(dpy, win);
    XSync(dpy, False);

    // X input method setup, only strictly necessary for intl key text

    // loads the XMODIFIERS environment variable to see what IME to use
    XSetLocaleModifiers("");

    XIM xim = XOpenIM(dpy, 0, 0, 0);
    if(!xim){
        // fallback to internal input method
        XSetLocaleModifiers("@im=none");
        xim = XOpenIM(dpy, 0, 0, 0);
    }

    // X input context, you can have multiple for text boxes etc, but having a
    // single one is the easiest.

    XIC xic = XCreateIC(xim,
                        XNInputStyle,   XIMPreeditNothing | XIMStatusNothing,
                        XNClientWindow, win,
                        XNFocusWindow,  win,
                        NULL);

    XSetICFocus(xic);

    // we want key presses

    XSelectInput(dpy, win, KeyPressMask | KeyReleaseMask);

      //XMapWindow(dpy, win);

    // main loop

    XEvent prev_ev = {}, ev = {};

    // you probably want XPending(dpy) here instead of 1, and an outer main loop
    // where you do things other than just getting X events
    while(1){
        XNextEvent(dpy, &ev);

        // this is needed for IMEs to hook keypresses is some cases,
        // if you need keys even when they're filtered things get a bit more complex

        if(XFilterEvent(&ev, None) == True) continue;

        switch(ev.type){
            case KeyPress: {

                // note: if you just want the XK_ keysym, then you can just use
                // XLookupKeysym(&ev.xkey, 0);
                // and ignore all the XIM / XIC / status etc stuff

                Status status;
                KeySym keysym = NoSymbol;
                char text[32] = {};

                // if you want to tell if this was a repeated key, this trick seems reliable.
                int is_repeat = prev_ev.type         == KeyRelease &&
                                prev_ev.xkey.time    == ev.xkey.time &&
                                prev_ev.xkey.keycode == ev.xkey.keycode;

                // you might want to remove the control modifier, since it makes stuff return control codes
                ev.xkey.state &= ~ControlMask;

                // get text from the key.
                // it could be multiple characters in the case an IME is used.
                // if you only care about latin-1 input, you can use XLookupString instead
                // and skip all the XIM / XIC setup stuff

                Xutf8LookupString(xic, &ev.xkey, text, sizeof(text) - 1, &keysym, &status);

                if(status == XBufferOverflow){
                    // an IME was probably used, and wants to commit more than 32 chars.
                    // ignore this fairly unlikely case for now
                }

                if(status == XLookupChars){
                    // some characters were returned without an associated key,
                    // again probably the result of an IME
                    printf("Got chars: (%s)\n", text);
                }

                if(status == XLookupBoth){
                    // we got one or more characters with an associated keysym
                    // (all the keysyms are listed in /usr/include/X11/keysymdef.h)

                    char* sym_name = XKeysymToString(keysym);
                    printf("Got both: (%s), (%s)\n", text, sym_name);
                }

                if(status == XLookupKeySym){
                    // a key without text on it
                    char* sym_name = XKeysymToString(keysym);
                    printf("Got keysym: (%s)\n", sym_name);
                }

                // example of responding to a key
                if(keysym == XK_Escape){
                    puts("Exiting because escape was pressed.");
                    return 0;
                }

            } break;
        }

        prev_ev = ev;
    }

  return 0;

}
