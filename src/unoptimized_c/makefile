EXECUTABLE = ./build/runner
SOURCE = runner.c montgomery_multiplication.c
.PHONY: run

run: runner
	@qemu-arm ${EXECUTABLE}

runner: 
	@arm-linux-gcc -static ${SOURCE} -o ${EXECUTABLE}

clean:
	@rm -rf ${EXECUTABLE}

