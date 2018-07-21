BUILD_DIR = ./build

SOURCE = helper.s montgomery_exponentiation.s montgomery_multiplication.s test_montgomery_exponentiation.s uint128_t.s
EXECUTABLE = montgomery.o

run: clean build
	@qemu-arm ${BUILD_DIR}/${EXECUTABLE}

build:
	@mkdir build && arm-linux-gcc -static ${SOURCE} -o ${BUILD_DIR}/${EXECUTABLE}
	

# Delete contents of build directory
clean:
	@rm -rfv ${BUILD_DIR} 
