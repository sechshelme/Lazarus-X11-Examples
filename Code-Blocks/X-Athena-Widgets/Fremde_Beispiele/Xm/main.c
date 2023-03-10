#include <X11/IntrinsicP.h>    //  für  XtConfigureWidget
#include <X11/Intrinsic.h>
#include <X11/Core.h>
#include <X11/StringDefs.h>
#include <X11/Xaw/Scrollbar.h>
#include <X11/Xmu/Editres.h>
#include <X11/Shell.h>            // für XtNtitle (Fenstertitel)
#include <stdio.h>


typedef struct windowElement {
    Widget   sb;
    Widget   paintArea;
    GC       painter1, painter2;
    Pixel    redPixel;
    Pixel    whitePixel;
    int      lineWidth;
    int      maxLineWidth;
} windowElement;

XtAppContext  app;

void QuitAction (void) {

    XtAppSetExitFlag(app);
}

XtActionsRec actions [] =
{
    { "Quit", (XtActionProc)QuitAction  } ,
};


/**
 * resize-Funktion für das Toplevel Widget.
 * Der Inhaltsbereich des Widgets ist auf drei child widgets
 * aufzuteilen.
 */
void resizeWidget(Widget w, windowElement *we, XConfigureEvent *event, Boolean *cnt) {

    int width  = event -> width;
    int height = event -> height;

    XtConfigureWidget(we -> sb,
                      (Position) 2, (Position) 2,
                      (Dimension) 16, (Dimension) height - 8,
                      (Dimension) 2);

    XtConfigureWidget(we -> paintArea,
                      (Position) 20, (Position) 2,
                      (Dimension) width - 26, (Dimension) height - 8,
                      (Dimension) 2);

     *cnt = FALSE;
}

/**
 * configure-Funktion für das Toplevel Widget.
 */
void configureWidget(Widget w, XtPointer client_data, XEvent *event, Boolean *cnt) {
    if (event -> type == ConfigureNotify)
    {
        resizeWidget(w, (windowElement*) client_data, (XConfigureEvent*) event, cnt);
        return;
     }
     *cnt = TRUE;
}

void draw(Widget widget, XtPointer client_data, XExposeEvent *event) {
    windowElement *we = (windowElement*) client_data;
    XWindowAttributes attr;
    XGetWindowAttributes(XtDisplay(widget), XtWindow(widget), &attr);
    XDrawLine(XtDisplay(widget), XtWindow(widget), we->painter1,
                      20, 20, attr.width - 20, attr.height - 20);
    if (we -> lineWidth > 3) {
         XDrawLine(XtDisplay(widget), XtWindow(widget), we->painter2,
                            20, 20, attr.width - 20, attr.height - 20);
    }
    //printf("Widget %d %d\n", widget->core.width, widget->core.height);
    //printf("in expose t = %d  w = %d  h = %d cnt = %d\n",
    //       event -> type,
    //       event -> width,
    //       event -> height,
    //       event -> count);
}

/**
 * Callback für Aktionen, die mit dem erstem oder dem dritten
 * Mausknopf auf den Schieberegler ausgeübt werden. Diese Funktionen
 * werden im Augenblick nicht verwendet.
 */
void scrollProc(Widget scrollbar, XtPointer client_data, XtPointer pos) {

    int percent = (int) pos;
    int buttonID = percent > 0 ? 1 : 3;
    //printf("in scroll callback  %d (Button %d pressed)\n", percent, buttonID);
}

/**
 * Callback für Aktionen, die mit dem zweiten Mausknopf auf den
 * Schieberegler ausgeübt werden.
 * Hier wird die Strichbreite neu berechnet und erforderlichenfalls
 * das Zeichenfeld aktualisiert.
 */
void scrollProc2(Widget scrollbar, XtPointer client_data, XtPointer pos) {
    float          percent = *(float*) pos;
    windowElement *we = (windowElement*) client_data;
    XGCValues      gcValues;
    int            newLineWidth;
    newLineWidth = percent*we->maxLineWidth;
    if (newLineWidth != we -> lineWidth) {
        we -> lineWidth = newLineWidth;
          gcValues.line_width = we->lineWidth;
          XChangeGC(XtDisplay(we->paintArea), we -> painter1,
                        GCLineWidth,
                        &gcValues);
          XClearArea(XtDisplay(we->paintArea), XtWindow(we->paintArea), 0, 0, 0, 0, TRUE);
    }
    //printf("in scroll callback  2:     %f     %d\n", percent, newLineWidth);
}

int main(int argc, char *argv[]){
    windowElement  we;
    Widget         topLevelWidget;
    Atom           wm_delete_window;
    XColor         red;
    XColor         ignore;
    Colormap       cmap;
    XGCValues      gcValues;

    Arg            properties[15];
    float          topPos;
    XtArgVal*      ptrTopPos;

    we.lineWidth = 7;
    we.maxLineWidth = 30;
    topPos = (float)we.lineWidth/(float) we.maxLineWidth;
    ptrTopPos = (XtArgVal*) &topPos;    // Seite 48 des Handbuchs

    printf("top %f\n", topPos);
    XtSetArg(properties[0], XtNwidth, 400);
    XtSetArg(properties[1], XtNheight, 300);
    XtSetArg(properties[2], XtNtitle, "Demo");

    XtSetLanguageProc(NULL, NULL, NULL);
    topLevelWidget = XtAppInitialize(&app, "MainWindow", NULL, 0,
                                                 &argc, argv, NULL,
                                                 properties, 3);

    XtAppAddActions(app, actions, XtNumber(actions));
    XtOverrideTranslations
           (topLevelWidget,
            XtParseTranslationTable("<Message>WM_PROTOCOLS: Quit()"));
    wm_delete_window =
          XInternAtom(XtDisplay(topLevelWidget), "WM_DELETE_WINDOW",FALSE);


    cmap = DefaultColormap(XtDisplay(topLevelWidget),
                           DefaultScreen(XtDisplay(topLevelWidget)));
    XAllocNamedColor(XtDisplay(topLevelWidget), cmap, "red", &red, &ignore);
    we.redPixel = red.pixel;
    we.whitePixel = WhitePixel(XtDisplay(topLevelWidget),
                               DefaultScreen(XtDisplay(topLevelWidget)));

    we.sb = XtVaCreateManagedWidget("sb", scrollbarWidgetClass,
                                     topLevelWidget,
                                     XtNorientation, XtorientVertical,
                                     XtNtopOfThumb, *ptrTopPos,
                                     NULL);
    we.paintArea = XtVaCreateManagedWidget("drawingArea", widgetClass,
                                            topLevelWidget,
                                            XtNwidth, 300,
                                            XtNheight, 300,
                                            NULL);

    //  Bereitstellung der Callbackfunktionen
    //  für den Rollbalken:
    XtAddCallback(we.sb, XtNscrollProc, (XtCallbackProc) scrollProc,
                  &we);
    XtAddCallback(we.sb, XtNjumpProc, (XtCallbackProc) scrollProc2,
                  &we);

    //  Bereitstellung von Handlern für
    //  verschiedene Ereignisse
    XtAddEventHandler(we.paintArea,            // widget
                       ExposureMask,           // event_mask
                       FALSE,                  // nonmaskable events
                       (XtEventHandler) draw,  // handler proc
                       (XtPointer) &we);       // window components
    XtAddEventHandler(topLevelWidget,          // widget
                       StructureNotifyMask,    // event_mask
                       TRUE,                   // nonmaskable events
                       (XtEventHandler) configureWidget,  // handler proc
                       (XtPointer) &we);       // window components
    XtAddEventHandler(topLevelWidget,
                       (EventMask) 0,
                       TRUE,
                       (XtEventHandler) _XEditResCheckMessages,
                       NULL);
    XtRealizeWidget(topLevelWidget);

    gcValues.line_width = we.lineWidth;
    gcValues.cap_style = CapRound;
    gcValues.foreground = red.pixel;
    we.painter1 = XCreateGC(XtDisplay(we.paintArea), XtWindow(we.paintArea),
                             GCLineWidth | GCCapStyle | GCForeground,
                             &gcValues);
    gcValues.line_width = 1;
    gcValues.foreground = we.whitePixel;
    we.painter2 = XCreateGC(XtDisplay(we.paintArea), XtWindow(we.paintArea),
                             GCLineWidth | GCCapStyle | GCForeground,
                             &gcValues);

    XSetWMProtocols(XtDisplay(topLevelWidget),
                     XtWindow(topLevelWidget),
                     &wm_delete_window,
                     1);
    XtAppMainLoop(app);
    XFreeGC(XtDisplay(we.paintArea), we.painter1);
    XFreeGC(XtDisplay(we.paintArea), we.painter2);
    XtDestroyWidget(topLevelWidget);
    printf("Bye\n");
    return 0;
}
