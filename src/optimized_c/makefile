BUILD_DIR = ./build
EXECUTABLE = ${BUILD_DIR}/montgomery_multiply
PROFILE_OUTPUT = ${BUILD_DIR}/gmon
SOURCE = runner.c montgomery_multiplication.c uint128_t.c
.PHONY: build

build: 
	@mkdir -p ${BUILD_DIR} && arm-linux-gcc -static ${SOURCE} -o ${EXECUTABLE} -pg 

run: build
	@GMON_OUT_PREFIX=${PROFILE_OUTPUT}; qemu-arm ${EXECUTABLE}

# Need to use .* because the file name will be ${PROFILE_OUTPUT}.[pid]
profile: run
	@gprof ${EXECUTABLE} ${PROFILE_OUTPUT}.*
	

# Delete contents of build directory
clean:
	@rm -rfv ${BUILD_DIR}/* 