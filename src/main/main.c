#include <stdio.h>
#include <string.h>

void hello(const char *name);
void shuf(char *data, const char *mask);

int
main(void)
{
	/* flutterby -> butterfly */

	char text[16] = {0};
	char mask[16] = {
		7, 2, 3, 4, 5, 6, 0, 1, 8, 9,
		0x80, 0x80, 0x80, 0x80, 0x80, 0x80
	};

	memcpy(text, "flutterby", 10);

	hello(text);
	shuf(text, mask);
	hello(text);

	return (0);
}
