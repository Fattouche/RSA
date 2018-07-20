BUILD_DIR = ./build

# Sets mode to unoptimzed, if a mode is not passed in
MODE?=unoptimized


SRC_DIR = ../src/${MODE}_c
INCLUDE_DIR = ${SRC_DIR}


MULT_HEADERS = {SRC_DIR}/montgomery_multiplication.h ${SRC_DIR}/uint128_t.h
MULT_SOURCE = test_montgomery_multiplication.c ${SRC_DIR}/montgomery_multiplication.c ${SRC_DIR}/uint128_t.c helper.c
MULT_EXE = ${BUILD_DIR}/test_${MODE}_multiplication

EXP_HEADERS = {SRC_DIR}/montgomery_exponentiation.h  ${SRC_DIR}/uint128_t.h {SRC_DIR}/montgomery_multiplication.h
EXP_SOURCE = test_montgomery_exponentiation.c ${SRC_DIR}/montgomery_exponentiation.c ${SRC_DIR}/montgomery_multiplication.c ${SRC_DIR}/uint128_t.c helper.c
EXP_EXE = ${BUILD_DIR}/test_${MODE}_exponentiation

UINT128_HEADERS = ${SRC_DIR}/uint128_t.h
UINT128_SOURCE = test_uint128_t.c ${SRC_DIR}/uint128_t.c helper.c
UINT128_EXE = ${BUILD_DIR}/test_${MODE}_uint128_t

PROFILE_OUTPUT = ${BUILD_DIR}/gmon

run: run_mult run_exp run_uint128_t
profile: clean profile_exp 

run_mult: build_mult
	@GMON_OUT_PREFIX=${PROFILE_OUTPUT} qemu-arm ${MULT_EXE}

build_mult:
	@mkdir -p ${BUILD_DIR} && arm-linux-gcc -static -I${INCLUDE_DIR} ${MULT_SOURCE} -o ${MULT_EXE} -pg 

# Need to use .* because the file name will be ${PROFILE_OUTPUT}.[pid]
profile_mult: run_mult
	@gprof ${MULT_EXE} ${PROFILE_OUTPUT}.*



run_exp: build_exp
	@GMON_OUT_PREFIX=${PROFILE_OUTPUT} qemu-arm ${EXP_EXE}

build_exp:
	@mkdir -p ${BUILD_DIR} && arm-linux-gcc -static -I${INCLUDE_DIR} ${EXP_SOURCE} -o ${EXP_EXE} -pg 

# Need to use .* because the file name will be ${PROFILE_OUTPUT}.[pid]
profile_exp: run_exp
	@gprof ${EXP_EXE} ${PROFILE_OUTPUT}.*


run_uint128_t: build_uint128_t
	@GMON_OUT_PREFIX=${PROFILE_OUTPUT} qemu-arm ${UINT128_EXE}

build_uint128_t:
	@mkdir -p ${BUILD_DIR} && arm-linux-gcc -static -I${INCLUDE_DIR} ${UINT128_SOURCE} -o ${UINT128_EXE} -pg 

# Need to use .* because the file name will be ${PROFILE_OUTPUT}.[pid]
profile_uint128_t: run_uint128_t
	@gprof ${UINT128_EXE} ${PROFILE_OUTPUT}.*
	

# Delete contents of build directory
clean:
	@rm -rfv ${BUILD_DIR}/* 
