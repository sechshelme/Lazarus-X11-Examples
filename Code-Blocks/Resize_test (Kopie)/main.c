#include <X11/Xlib.h>
//#include <cstdint>
#include <unistd.h>

#define Masks KeyPressMask|ResizeRedirectMask

int main(){
    int RDM=0;

    int i=0;

    int RunLoop;
    RunLoop=1;

    Display* XDisplay=XOpenDisplay(0);//Create a display
    Window XWindow=XCreateSimpleWindow(XDisplay,DefaultRootWindow(XDisplay),0,0,480,360,0,0xFF,0xFF);//Create a Window
    XMapWindow(XDisplay,XWindow);//Make the Window visible
    GC XGraphicCTX=XCreateGC(XDisplay,XWindow,0,0);//Create a Graphics Context

    //v Wait for a MapNotify XEvent for next commands
    XSelectInput(XDisplay,XWindow,StructureNotifyMask);
    while(1){
        XEvent e;
        XNextEvent(XDisplay,&e);
        if(e.type==MapNotify)break;
    }
    XSelectInput(XDisplay,XWindow,Masks); //Here is part of the magic error
    while(RunLoop){
        while(XPending(XDisplay)){//Get key changes
            XEvent Event;
            XNextEvent(XDisplay,&Event);
            if(Event.type==KeyPress){
                RunLoop=0;
            }
        }

        for(i=0;i<4096;i++){
            RDM=(RDM+1841)*9245;    //Not perfect but good enough
            XSetForeground(XDisplay,XGraphicCTX,RDM&0xFFFFFF);

            RDM=(RDM+1841)*9245;    //Not perfect but good enough
            XFillRectangle(XDisplay,XWindow,XGraphicCTX,RDM&0xFFFF,(RDM>>16),64,64);
        }

        XFlush(XDisplay);

        usleep(16667); //AHHH there is 666!
    }

    return 0;
}
