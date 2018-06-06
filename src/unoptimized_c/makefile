EXECUTABLE = ./build/runner
SOURCE = runner.c montgomery_multiplication.c
.PHONY: run

run: build
	@${EXECUTABLE}

build:
	@gcc ${SOURCE} -o ${EXECUTABLE}

clean:
	@rm -rf ${EXECUTABLE}
