#include <iostream>
#include <fstream>
#include <cmath>
#include <iostream>
#include <ap_fixed.h>
#include <cstdint>
#include <bitset>
#include <ap_fixed.h>
#include <ap_int.h>
#include <iostream>

//method1
//typedef int16_t fm_t;
//typedef ap_uint<160> MEM_TYPE;

//method2
//typedef int16_t fm_t;
//typedef ap_int<160> MEM_TYPE;


//method3
typedef ap_fixed<16,4> fm_t;
typedef ap_uint<160> MEM_TYPE;
//
//method4
//typedef ap_fixed<16,8> fm_t;
//typedef ap_fixed<160,80> MEM_TYPE;

//method5
//typedef ap_fixed<16,3> fm_t;
//typedef ap_fixed<160,3> MEM_TYPE;


void main_func(MEM_TYPE A_IN[5], MEM_TYPE A_OUT[5]);

int16_t fP2Int(float fixedPointValue);

float Int2fP(int16_t intValue);


