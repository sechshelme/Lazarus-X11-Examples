#include <X11/Xlib.h>
#include <X11/Xutil.h>
#include <X11/Xresource.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

Window win;
Display *dpy;
GC pen;

int utf8toXChar2b(XChar2b *output_r, int outsize, const char *input, int inlen)
{
    int j, k;
    for(j =0, k=0; j < inlen && k < outsize; j ++)
    {
        unsigned char c = input[j];
        if (c < 128)
        {
            output_r[k].byte1 = 0;
            output_r[k].byte2 = c;
            k++;
        }
        else if (c < 0xC0)
        {
            /* we're inside a character we don't know  */
            continue;
        }
        else switch(c&0xF0)
            {
            case 0xC0:
            case 0xD0: /* two bytes 5+6 = 11 bits */
                if (inlen < j+1)
                {
                    return k;
                }
                output_r[k].byte1 = (c & 0x1C) >> 2;
                j++;
                output_r[k].byte2 = ((c & 0x3) << 6) + (input[j] & 0x3F);
                k++;
                break;
            case 0xE0: /* three bytes 4+6+6 = 16 bits */
                if (inlen < j+2)
                {
                    return k;
                }
                j++;
                output_r[k].byte1 = ((c & 0xF) << 4) + ((input[j] & 0x3C) >> 2);
                c = input[j];
                j++;
                output_r[k].byte2 = ((c & 0x3) << 6) + (input[j] & 0x3F);
                k++;
                break;
            case 0xFF:
                /* the character uses more than 16 bits */
                continue;
            }
    }
    return k;
}
void setup()
{

//	XFontStruct *font;
    XrmDatabase db;

    XrmInitialize();
    db = XrmGetDatabase(dpy);

    //font = getFont(dpy, db, "xtut8.font", "xtut8.Font", "fixed");

    pen=DefaultGC(dpy,DefaultScreen(dpy) );
    win = XCreateSimpleWindow(dpy, DefaultRootWindow(dpy), 0,0,		400, 400, 		2, 00, 		0xFFFFFF);
    XSelectInput(dpy, win, ExposureMask);

    /* okay, put the window on the screen, please */
    XMapWindow(dpy, win);

    //*font_r = font;
}

int main_loop()
{
    XEvent ev;
    int text_width;
    XChar2b *string;
    char *text = "Hello World äüö ÄÜÖ  Ã«!";
    int strlength = strlen(text);

    /* may be too big, but definitely big enough */
    string = malloc(sizeof(*string) * strlen(text));
    strlength = utf8toXChar2b(string, strlength, text, strlength);

    while(1)
    {
        XNextEvent(dpy, &ev);
        switch(ev.type)
        {
        case Expose:
            XDrawString16(dpy, win, pen, 20, 20, string, strlength);
            break;
        }
    }
}

int main(int argc, char ** argv)
{

    dpy = XOpenDisplay(NULL);
    if (!dpy)
    {
        fprintf(stderr, "unable to connect to display\n");
        return 7;
    }
    setup();
    return main_loop();
}
