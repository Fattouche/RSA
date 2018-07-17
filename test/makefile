BUILD_DIR = ./build

# Sets mode to unoptimzed, if a mode is not passed in
MODE?=unoptimized

MULT_SRC_DIR = ../src/${MODE}_c
MULT_HEADERS = {MULT_SRC_DIR}/montgomery_multiplication.h ${MULT_SRC_DIR}/uint128_t.h
MULT_SOURCE = test_montgomery_multiplication.c ${MULT_SRC_DIR}/montgomery_multiplication.c ${MULT_SRC_DIR}/uint128_t.c
MULT_EXE = ${BUILD_DIR}/test_${MODE}_multiplication

PROFILE_OUTPUT = ${BUILD_DIR}/gmon

build_mult: 
	@mkdir -p ${BUILD_DIR} && arm-linux-gcc -static ${MULT_SOURCE} -o ${MULT_EXE} -pg 

run_mult: build_mult
	@GMON_OUT_PREFIX=${PROFILE_OUTPUT} qemu-arm ${MULT_EXE}

# Need to use .* because the file name will be ${PROFILE_OUTPUT}.[pid]
profile_mult: run_mult
	@gprof ${EXECUTABLE} ${PROFILE_OUTPUT}.*
	

# Delete contents of build directory
clean:
	@rm -rfv ${BUILD_DIR}/* 
