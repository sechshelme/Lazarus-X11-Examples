#include <stdio.h>

static void frame_handler(void *pframe, int length) {
}

struct streamHandler
{
    int fd;
    void (*frameh)(void *pframe, int length);
};

static void func(void * arg)
{

    void (*handlerXXX)(void *pframe, int length) = ((struct streamHandler *)(arg))->frameh;

    (*handlerXXX)(123, 456);
}


int main ()
{
  struct streamHandler sH = {12, frame_handler};


  func((void *)&sH);
}
