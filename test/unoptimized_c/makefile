BUILD_DIR = ../build
SRC_DIR = ../../src/unoptimized_c
HEADER_DIR_1 = ${SRC_DIR}/montgomery_multiplication.h ${SRC_DIR}uint128_t.h
SOURCE = test_montgomery.c ${SRC_DIR}/montgomery_multiplication.c ${SRC_DIR}/uint128_t.c
EXECUTABLE = ${BUILD_DIR}/test_montgomery

$(EXECUTABLE): $(SOURCE) $(HEADERS)
	arm-linux-gcc -o $@ $(SOURCE) -Wall -I ${SRC_DIR}

.PHONY: clean

clean:
	rm -f ${EXECUTABLE}
