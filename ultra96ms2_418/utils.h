#include "conv.h"




void load_weight_bias_from_DRAM (
    wt_t weight_buf3x3[IN_DEPTH][KERNEL_SIZE_3x3][KERNEL_SIZE_3x3],
    wt_t bias_buf3x3[IN_DEPTH],
    wt_t weights_3x3[IN_DEPTH][KERNEL_SIZE_3x3][KERNEL_SIZE_3x3],
    wt_t bias_3x3[IN_DEPTH],
	wt_t weight_buf1x1[OUT_DEPTH][IN_DEPTH],
	wt_t bias_buf1x1[OUT_DEPTH],
	wt_t weights_1x1[OUT_DEPTH][IN_DEPTH],
	wt_t bias_1x1[OUT_DEPTH]
);


void load_input_from_DRAM(
	fm_t in_fm_buf[3][42][82],
	fm_t input_feature_map[IN_DEPTH*IN_HEIGHT*IN_WIDTH],
	int ti,
	int tj
);


void conv1x1 (
		fm_t outBuffer[48][40][80],
		fm_t inBuffer [3][40][80],
		fm_t weights_1x1 [48][3],
		fm_t bias_1x1[48]
);


void dw_conv3x3(
		fm_t outBuffer[3][40][80],
		fm_t inBuffer [3][42][82],
		fm_t weights_3x3 [3][3][3],
		fm_t bias_3x3[3]
);

void store_output_tile_to_DRAM(
    fm_t output_feature_map[OUT_DEPTH*OUT_HEIGHT*OUT_WIDTH],
    fm_t outBuffer1x1[OUT_DEPTH][40][80],
    int ti,
    int tj
);


