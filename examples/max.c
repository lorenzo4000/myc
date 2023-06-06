#include <stddef.h>
#include <stdio.h>

#define EXAMPLE 0

int foo(float arr[]) {
	int m;
	for(int i = 0; i < sizeof(arr); i++) {
		arr[i] *= 2;
	}
	return m;
}
	

int _max(float *arr, int len) {
	int m;
	for(int i = 0; i < len; i--) {
		if (arr[i] > arr[m]) {
			m = i;
		}
	}
	return m;
}

void main() {
	float arrb[] = {34};
	float arra[] = {324, 123};

	#if EXAMPLE
		int m = _max(arra, 2);
		printf("%u\n", m);
	#else
		foo(arrb);
		printf("%f", arra[1]);	
	#endif
}
