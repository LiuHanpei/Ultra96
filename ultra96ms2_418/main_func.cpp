// main_func.cpp

#include "utils.h"
#include <iostream>


//define feature_map buffer
fm_t inBuffer3x3[3][42][82] = {0};
fm_t outBuffer3x3[3][40][80];
fm_t outBuffer1x1[48][40][80];
//fm_t output_fm_temp[OUT_DEPTH*OUT_HEIGHT*OUT_WIDTH];

//define weight and bias
wt_t weight_buf3x3[IN_DEPTH][KERNEL_SIZE_3x3][KERNEL_SIZE_3x3];
wt_t bias_buf3x3[IN_DEPTH];
wt_t weight_buf1x1[OUT_DEPTH][IN_DEPTH];
wt_t bias_buf1x1[OUT_DEPTH];



void main_func (
    fm_t input_feature_map[IN_DEPTH*IN_HEIGHT*IN_WIDTH],
    wt_t weights_3x3[IN_DEPTH][KERNEL_SIZE_3x3][KERNEL_SIZE_3x3],
    wt_t bias_3x3[IN_DEPTH],
    wt_t weights_1x1[OUT_DEPTH][IN_DEPTH],
    wt_t bias_1x1[OUT_DEPTH],
    fm_t output_feature_map[OUT_DEPTH*OUT_HEIGHT*OUT_WIDTH]
)
{
	#pragma HLS INTERFACE m_axi depth=1  port=input_feature_map   		bundle=fm
	#pragma HLS INTERFACE m_axi depth=1  port=weights_3x3      			bundle=wt
	#pragma HLS INTERFACE m_axi depth=1  port=bias_3x3        			bundle=wt
	#pragma HLS INTERFACE m_axi depth=1  port=weights_1x1       		bundle=wt
	#pragma HLS INTERFACE m_axi depth=1  port=bias_1x1          		bundle=wt
	#pragma HLS INTERFACE m_axi depth=1  port=output_feature_map  		bundle=fm
	#pragma HLS INTERFACE s_axilite register  port=return



	load_weight_bias_from_DRAM(
			weight_buf3x3,
			bias_buf3x3,
			weights_3x3,
			bias_3x3,
			weight_buf1x1,
			bias_buf1x1,
			weights_1x1,
			bias_1x1
	);





//tile conv_cal
	for(int ti=0; ti<4; ti++){
		for(int tj=0; tj<4; tj++){
			load_input_from_DRAM(
					inBuffer3x3,
					input_feature_map,
					ti,
					tj
			);
			// std::cout << "load input  "  << std::endl;
			dw_conv3x3(
					outBuffer3x3,
					inBuffer3x3,
					weight_buf3x3,
					bias_buf3x3
			);

			// std::cout << "conv3x3  "<< std::endl;
			conv1x1(
					outBuffer1x1,
					outBuffer3x3,
					weight_buf1x1,
					bias_buf1x1
			);
			// std::cout << "conv1x1  "  << std::endl;
			store_output_tile_to_DRAM (
					output_feature_map,
					outBuffer1x1,
					ti,
					tj
			);
		}
	}

}
