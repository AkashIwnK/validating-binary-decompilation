#ifdef WIN32
#include <windows.h>
#endif

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int doWork();

int main(int argc, char *argv[]) {

    printf("%d",doWork());

    return 0;
}
