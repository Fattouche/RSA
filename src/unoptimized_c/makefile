EXECUTABLE = ./build/runner
SOURCE = runner.c montgomery_multiplication.c
.PHONY: run

run: runner
	@${EXECUTABLE}

runner: 
	@gcc ${SOURCE} -o ${EXECUTABLE}

clean: 
	@rm -rf ${EXECUTABLE}
