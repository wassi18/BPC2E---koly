#include <stdio.h>
#include <stdlib.h>

int main(int args, char** argv) {
	if (args != 2) {
		printf("Predpoklada se jeden argument\n");
		return 1;
	}

	long num = strtol(argv[1], NULL, 10);
	if (num < 0) {
		printf("Ocekava se kladne cislo\n");
		return 1;
	}

	long factorial = 1;
	for (int i = 2; i <= num; i++) {
		factorial *= i;
	}

	printf("Result of %ld! is %ld\n", num, factorial);
	return 0;
}
