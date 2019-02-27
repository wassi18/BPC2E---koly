#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int args, char** argv) {
	if (args != 4) {
		printf("Ocekavaji se 3 argumenty\n");
		return 1;
	}

	long lines = strtol(argv[2], NULL, 10);
	if (lines <= 0) {
		printf("Druhy argument neni kladne cislo!\n");
		return 1;
	}

	if (strlen(argv[3]) != 1) {
		printf("Treti argument neni znak!\n");
		return 1;
	}

	char separator = argv[3][0];

	FILE* file = fopen(argv[1], "r");

	if (file == NULL) {
		printf("Prvni argument neni platny soubor!\n");
		return 1;
	}

	int c = 0;

	while ((c = fgetc(file)) != EOF) {

		if (c == '\n') {
			lines--;
		}

		if (c == separator) {
			c = '\t';
		}

		putchar(c);

		if (lines == 0) {
			break;
		}
	}

	fclose(file);


	return 0;
}
