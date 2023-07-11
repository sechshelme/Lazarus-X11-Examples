/* CELEBS10

   This example creates a new session.

 */
#define _POSIX_SOURCE
#include <unistd.h>
#include <sys/types.h>
#include <stdio.h>

// https://www.ibm.com/docs/en/zos/2.4.0?topic=functions-setsid-create-session-set-process-group-id

main() {

  pid_t pid;
  int p[2];
  char c='?';

  if (pipe(p) != 0)
    perror("pipe() error");
  else
    if ((pid = fork()) == 0) {
      printf("child's process group id is %d\n", (int) getpgrp());
  //    write(p[1], &c, 1);
  //    setsid();
      printf("child's process group id is now %d\n", (int) getpgrp());
      exit(0);
    }
    else {
      printf("parent's process group id is %d\n", (int) getpgrp());
    //  read(p[0], &c, 1);
     printf("Helle World\n");
      sleep(1);
      printf("Helle World\n");
      sleep(1);
      printf("Helle World\n");
      sleep(1);
      printf("Helle World\n");
      sleep(1);
      printf("Helle World\n");
      sleep(1);
    }
}
