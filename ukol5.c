
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int args, char** argv) {
	if (args != 2) {
		printf("Ocekava se 1 argument\n");
		return 1;
	}

	FILE* file = fopen(argv[1], "rb");

	if (file == NULL) {
		printf("Argument neni platny soubor!\n");
		return 1;
	}
	char buffer[14];

	fread(buffer, 14, 1, file);

	fclose(file);

	printf("Signature: %c%c\n", buffer[0], buffer[1]);
	printf("Size: %uB\n", *((unsigned*)&(buffer[2])));
	printf("Reserved1: %c%c\n", buffer[6], buffer[7]);
	printf("Reserved2: %c%c\n", buffer[8], buffer[9]);
	printf("Offset: %uB\n", *((unsigned*)&(buffer[10])));

	return 0;
}
