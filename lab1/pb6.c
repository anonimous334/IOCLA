#include <stdio.h>

long first(short n) {
    int remainder;
 long binary = 0, i = 1;

    while(n != 0) {
        remainder = n%2;
        n = n/2;
        binary= binary + (remainder*i);
        i = i*10;
    }
    return binary;
}

long second(unsigned short n) {
    int remainder;
 long binary = 0, i = 1;

    while(n != 0) {
        remainder = n%2;
        n = n/2;
        binary= binary + (remainder*i);
        i = i*10;
    }
    return binary;
}

int main(void)
{
    short a = 20000;
    short b = 14000;

    short c = a + b;
    unsigned short d = 3 * a + b;
    short e = a << 1;

	printf("%d\n", c);
	printf("%d\n", d);
	printf("%d\n", e);

	printf("%ld\n", first(c));
	printf("%ld\n", second(d));
	printf("%ld\n", first(e));



    return 0;
}
