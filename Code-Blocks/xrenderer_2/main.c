#include <stdio.h>
#include <stdlib.h>

#include <X11/Xlib.h>
#include <X11/extensions/Xrender.h>

static const char glyph_data_H[12*16]={
    0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff, 0x00,
    0x00, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0x00, 0x00,
    0x00, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0x00, 0x00,
    0x00, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0x00, 0x00,
    0x00, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0x00, 0x00,
    0x00, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0x00, 0x00,
    0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00, 0x00,
    0x00, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0x00, 0x00,
    0x00, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0x00, 0x00,
    0x00, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0x00, 0x00,
    0x00, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0x00, 0x00,
    0x00, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0x00, 0x00,
    0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};



static GlyphSet createGlyphSet(Display *display)
{
    XRenderPictFormat *fmt_a8 = XRenderFindStandardFormat(display, PictStandardA8);
    GlyphSet gs = XRenderCreateGlyphSet(display, fmt_a8);
    Glyph gid;
    XGlyphInfo ginfo = {.x=0,.y=12,.width=12,.height=16,.xOff=12,.yOff=0};

    gid='H';
    XRenderAddGlyphs(display, gs, &gid, &ginfo, 1, glyph_data_H, 12*16);

    return gs;
}

static Display *display;
static int screen;
static Window root, window;
static XEvent event;

static Picture create_pen(int red, int green, int blue, int alpha)
{
    XRenderColor color={.red=red, .green=green, .blue=blue, .alpha=alpha};
    XRenderPictFormat *fmt=XRenderFindStandardFormat(display, PictStandardARGB32);

    Pixmap pm=XCreatePixmap(display, window, 1, 1, 32);
    XRenderPictureAttributes pict_attr;
    pict_attr.repeat=1;
    Picture picture=XRenderCreatePicture(display, pm, fmt, CPRepeat, &pict_attr);
    XRenderFillRectangle(display, PictOpOver, picture, &color, 0, 0, 1, 1);
    return picture;
}

int main(int argc, char *argv[])
{
    display = XOpenDisplay(NULL);

    int render_event_base, render_error_base;
    int render_present = XRenderQueryExtension(display, &render_event_base, &render_error_base);
    if (!render_present) {
        fprintf(stderr, "RENDER extension missing!\n");
        abort();
    }

    screen = DefaultScreen(display);
    XRenderPictFormat *fmt = XRenderFindVisualFormat(display, DefaultVisual(display, screen));
    root=DefaultRootWindow(display);

    window=XCreateWindow(display, root, 0, 0, 640, 480, 0,
        DefaultDepth(display, screen), InputOutput,
        DefaultVisual(display, screen),
        0, NULL);
    XRenderPictureAttributes pict_attr;

    /* set picture attributes for anti-aliased edges; default is sharp edges */
    pict_attr.poly_edge=PolyEdgeSmooth;
    pict_attr.poly_mode=PolyModeImprecise;
    Picture picture=XRenderCreatePicture(display, window, fmt, CPPolyEdge|CPPolyMode, &pict_attr);

    XSelectInput(display, window, KeyPressMask|KeyReleaseMask|ExposureMask
        |ButtonPressMask|StructureNotifyMask);

    Picture black=create_pen(0,0,0,0xffff);
    GlyphSet font = createGlyphSet(display);
    XMapWindow(display, window);

    XRenderColor color_white={.red=0xffff, .green=0xff, .blue=0xffff, .alpha=0xffff};

    while(1) {
        XNextEvent(display, &event);

        switch(event.type) {
            case Expose:
                /* no partial repaints */
                XRenderFillRectangle(display, PictOpOver,
                    picture, &color_white, 0, 0, 320, 240);

                XRenderCompositeString8(display, PictOpOver,
                    black, picture, 0,
                            font, 0, 0, 40, 40, "HH"/*ello World!"*/, 2);
                break;
            case DestroyNotify:
                return 0;
        }
    }

    return 0;
}
