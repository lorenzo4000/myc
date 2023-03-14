#include <stdio.h>

struct Bytes16 {
	long x;
	long y;
};

struct Bytes24 {
	long x;
	long y;
	long z;
};

struct Bytes40 {
	struct Bytes24 x;
	struct Bytes16 y;
};

void undefined_function_a(struct Bytes16 bytes, struct Bytes16 bb) {
	printf("x: %lld, y: %lld\n", bytes.x, bytes.y);
	printf("x: %lld, y: %lld\n", bb.x, bb.y);
}

void undefined_function_b(struct Bytes24 bytes) {
	printf("x: %lld, y: %lld, z: %lld\n", bytes.x, bytes.y, bytes.z);
}

void undefined_function_c(struct Bytes40 bytes) {
	printf("x.x: %lld, x.y: %lld, x.z: %lld\ny.x: %lld, y.y: %lld\n",
      bytes.x.x, bytes.x.y, bytes.x.z, bytes.y.x, bytes.y.y);
}
