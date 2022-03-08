#include <stdio.h>
#include <stdlib.h>
int main() {

	printf("%d\n", (int) sizeof(char));
	printf("%d\n", (int) sizeof(short));
	printf("%d\n", (int) sizeof(int));
	printf("%d\n", (int) sizeof(unsigned int));
	printf("%d\n", (int) sizeof(long));
	printf("%d\n", (int) sizeof(long long));
	printf("%d\n", (int) sizeof(void *));

	return 0;
}
