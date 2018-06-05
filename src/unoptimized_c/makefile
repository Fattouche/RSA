HEADERS = montgomery_multiplication.h
SOURCE = runner.c montgomery_multiplication.c
EXECUTABLE = runner

$(EXECUTABLE): $(SOURCE) $(HEADERS)
	gcc -o $@ $(SOURCE) -Wall

.PHONY: clean

clean:
	rm -f PMan
