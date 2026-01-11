#include <stdio.h>
#include <stdlib.h>
#include <unidstd.h>
#include <sys/wait.h>
#include <sys/types.h>

int main () {

  pid_t pid = fork();

  if (pid <0) {
    perror("fork error.");
    exit(1);
  }

  if (pid == 0) {
    for (int i = 1; i <2000; i++) {
      if (i%2 != 0) {
        printf("\nThat´s the uneven numbers from the son (PID %d): %d", getpid(), i);
      }
    }
    exit(0);
  }

  else {

    wait(NULL);
    
    for (int i = 1; i<2000; i++) {
      if (i%2 == 0) {
        printf("\n That´s the even numbers from the father (PID %d): %d", getpid(), i);
      }
    }
    exit(0);
  }
  return 0;
}
