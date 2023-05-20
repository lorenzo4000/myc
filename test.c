#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>

void main() {
	printf("%llx", O_WRONLY | O_CREAT | O_TRUNC);
}
