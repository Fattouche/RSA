BUILD_DIR = ./build
SRC_DIR = ../../src/unoptimized_c
HEADER_DIR_1 = ${SRC_DIR}/montgomery_multiplication.h
SOURCE = test_montgomery.c ${SRC_DIR}/montgomery_multiplication.c
EXECUTABLE = ${BUILD_DIR}/test_montgomery

$(EXECUTABLE): $(SOURCE) $(HEADERS)
	gcc -o $@ $(SOURCE) -Wall -I ${SRC_DIR}

.PHONY: clean

clean:
	rm -f ${EXECUTABLE}
