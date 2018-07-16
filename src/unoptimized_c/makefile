BUILD_DIR = ./build
EXECUTABLE = ${BUILD_DIR}/runner
SOURCE = runner.c montgomery_multiplication.c uint128_t.c
.PHONY: run

run: build
	@qemu-arm ${EXECUTABLE}

build: 
	@mkdir -p ${BUILD_DIR} && arm-linux-gcc -static ${SOURCE} -o ${EXECUTABLE}

clean:
	@rm -rfv ${BUILD_DIR}/*

