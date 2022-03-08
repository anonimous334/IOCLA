#include <stdio.h>
#include <stdlib.h>

int main() {
	char srcArray[] = "48455820526f636b73210a";
	char buffer[] = "\x48\x45\x58\x20\x52\x6f\x63\x6b\x73\x21\x0a";
	int i;
	int sizeOfArray = sizeof(srcArray) / sizeof(char);
	for( i = 0; i < sizeOfArray /2; i++ ) {
		printf("%c", buffer[i]);
	}
	return 0;
}
