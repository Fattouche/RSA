BUILD_DIR = ./build
HEADERS = montgomery_multiplication.h
SOURCE = runner.c montgomery_multiplication.c
EXECUTABLE = ${BUILD_DIR}/runner

$(EXECUTABLE): $(SOURCE) $(HEADERS)
	gcc -o $@ $(SOURCE) -Wall

.PHONY: clean

clean:
	rm -f PMan
