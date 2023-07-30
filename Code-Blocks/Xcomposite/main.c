#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <libpng16/png.h>

#include <X11/X.h>
#include <X11/Xlib.h>
#include <X11/Xutil.h>
#include <X11/extensions/Xcomposite.h>
#include <X11/extensions/Xrender.h>
//Compile hint: gcc -shared -O3 -lX11 -fPIC -Wl,-soname,prtscn -o prtscn.so prtscn.c

// https://stackoverflow.com/questions/47980608/xgetimage-is-mangled-for-chrome-firefox-electron-when-using-xcompositeredirec

typedef int bool;
#define true 1
#define false 0

const int DEBUG = 0;

void getScreen2(const int, const int, const int, const int, const XID);
void write_png_for_image(XImage *image, XID xid, int width, int height,
        char *filename);
typedef int (*handler)(Display *, XErrorEvent *);
XID getWindows(Display *display, Window parent, Window window, XID xid,
        int depth);

int main() {

    Display *display = XOpenDisplay(NULL);
    Window root = DefaultRootWindow(display);

    uint nwindows;
    Window root_return, parent_return, *windows;

    Atom a = XInternAtom(display, "_NET_CLIENT_LIST", true);
    Atom actualType;

    int format;
    unsigned long numItems, bytesAfter;
    unsigned char *data = 0;

    int status = XGetWindowProperty(display, root, a, 0L, (~0L),
    false,
    AnyPropertyType, &actualType, &format, &numItems, &bytesAfter, &data);

    char* window_name_return;

    if (status >= Success && numItems) {
        long *array = (long*) data;
        for (long k = 0; k < numItems; k++) {
            Window window = (Window) array[k];

            //not finding chrome window name
            printf("window found was %d \n", window);
            if (XFetchName(display, window, &window_name_return)) {
                printf("found window name for %d  :  %s  \n", window,
                        window_name_return);
            }

            //XMapWindow(display, parent);
            XMapWindow(display, window);

            XWindowAttributes attr;

            Status status = XGetWindowAttributes(display, window, &attr);
            if (status == 0)
                printf("Fail to get window attributes!\n");

            getScreen2(0, 0, attr.width, attr.height, window);

        }
        XFree(data);
    }

    return 0;
}

void getScreen2(const int xx, const int yy, const int W, const int H,
        const XID xid) {

    Display *display = XOpenDisplay(NULL);
    Window root = DefaultRootWindow(display);

    // turn on --sync to force error on correct method
    //https://www.x.org/releases/X11R7.6/doc/man/man3/XSynchronize.3.xhtml
    XSynchronize(display, True);

    int counter = 1;

    // select which xid to operate on, the winder or its parent
    //XID xwid = fparent;
    XID xwid = xid;

    // Requests the X server to direct the hierarchy starting at window to off-screen storage
    XCompositeRedirectWindow(display, xwid, CompositeRedirectAutomatic);

    XWindowAttributes attr;
    Status status = XGetWindowAttributes(display, xwid, &attr);

    int width = attr.width;
    int height = attr.height;
    int depth = attr.depth;

    Pixmap xc_pixmap = XCompositeNameWindowPixmap(display, xwid);
    if (!xc_pixmap) {
        printf("xc_pixmap not found\n");
    }

    //XWriteBitmapFile(display, "test1.xpm", pixmap, W, H, -1, -1);

    XRenderPictFormat *format = XRenderFindVisualFormat(display, attr.visual);

    XRenderPictureAttributes pa;

    pa.subwindow_mode = IncludeInferiors;

    Picture picture = XRenderCreatePicture(display, xwid, format,
    CPSubwindowMode, &pa);

    char buffer[50];
    int n;
    int file_counter = 1;

    n = sprintf(buffer, "/tmp/%d_test%d.xpm", xid, file_counter++);
//    n = sprintf(buffer, "%d_test%d.xpm", xid, file_counter++);
    XWriteBitmapFile(display, buffer, xc_pixmap, W, H, -1, -1);

    n = sprintf(buffer, "/tmp/%d_test%d.xpm", xid, file_counter++);
//    n = sprintf(buffer, "%d_test%d.xpm", xid, file_counter++);
    XWriteBitmapFile(display, buffer, xid, W, H, -1, -1);

    XImage *image = XGetImage(display, xid, 0, 0, W, H, AllPlanes, ZPixmap);
    if (!image) {
        printf("XGetImage failed\n");
    }

    char filename[255];
    int n2;

//    n2 = sprintf(filename, "/tmp/png_out/%d_test%d.png", xid, file_counter++);
    n2 = sprintf(filename, "/tmp/%d_test%d.png", xid, file_counter++);

    printf("filename %s \n", filename);
    write_png_for_image(image, xid, W, H, filename);

    //XFree(image);
    XDestroyImage(image);
    XDestroyWindow(display, root);
    XCloseDisplay(display);
}

void write_png_for_image(XImage *image, XID xid, int width, int height,
        char *filename) {

    int code = 0;
    FILE *fp;
    png_structp png_ptr;
    png_infop png_info_ptr;
    png_bytep png_row;

    char buffer[50];
    int n;

    n = sprintf(buffer, filename, xid);

// Open file
    fp = fopen(buffer, "wb");
    if (fp == NULL) {
        fprintf(stderr, "Could not open file for writing\n");
        code = 1;
    }

// Initialize write structure
    png_ptr = png_create_write_struct(PNG_LIBPNG_VER_STRING, NULL, NULL, NULL);
    if (png_ptr == NULL) {
        fprintf(stderr, "Could not allocate write struct\n");
        code = 1;
    }

// Initialize info structure
    png_info_ptr = png_create_info_struct(png_ptr);
    if (png_info_ptr == NULL) {
        fprintf(stderr, "Could not allocate info struct\n");
        code = 1;
    }

// Setup Exception handling
    if (setjmp(png_jmpbuf (png_ptr))) {
        fprintf(stderr, "Error during png creation\n");
        code = 1;
    }

    png_init_io(png_ptr, fp);

// Write header (8 bit colour depth)
    png_set_IHDR(png_ptr, png_info_ptr, width, height, 8, PNG_COLOR_TYPE_RGB,
    PNG_INTERLACE_NONE,
    PNG_COMPRESSION_TYPE_BASE, PNG_FILTER_TYPE_BASE);

// Set title
    char *title = "Screenshot";
    if (title != NULL) {
        png_text title_text;
        title_text.compression = PNG_TEXT_COMPRESSION_NONE;
        title_text.key = "Title";
        title_text.text = title;
        png_set_text(png_ptr, png_info_ptr, &title_text, 1);
    }

    png_write_info(png_ptr, png_info_ptr);

// Allocate memory for one row (3 bytes per pixel - RGB)
    png_row = (png_bytep) malloc(3 * width * sizeof(png_byte));

    unsigned long red_mask = image->red_mask;
    unsigned long green_mask = image->green_mask;
    unsigned long blue_mask = image->blue_mask;

// Write image data
//int xxx, yyy;
    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            unsigned long pixel = XGetPixel(image, x, y);
            unsigned char blue = pixel & blue_mask;
            unsigned char green = (pixel & green_mask) >> 8;
            unsigned char red = (pixel & red_mask) >> 16;
            png_byte *ptr = &(png_row[x * 3]);
            ptr[0] = red;
            ptr[1] = green;
            ptr[2] = blue;
        }
        png_write_row(png_ptr, png_row);
    }

// End write
    png_write_end(png_ptr, NULL);

// Free
    fclose(fp);
    if (png_info_ptr != NULL)
        png_free_data(png_ptr, png_info_ptr, PNG_FREE_ALL, -1);
    if (png_ptr != NULL)
        png_destroy_write_struct(&png_ptr, (png_infopp) NULL);
    if (png_row != NULL)
        free(png_row);

}

