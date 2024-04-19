#include "utils.h"
#include <iostream>



void load_weight_bias_from_DRAM (
    wt_t weight_buf3x3[IN_DEPTH][KERNEL_SIZE_3x3][KERNEL_SIZE_3x3],
    wt_t bias_buf3x3[IN_DEPTH],
    wt_t weights_3x3[IN_DEPTH][KERNEL_SIZE_3x3][KERNEL_SIZE_3x3],
    wt_t bias_3x3[IN_DEPTH],
	wt_t weight_buf1x1[OUT_DEPTH][IN_DEPTH],
	wt_t bias_buf1x1[OUT_DEPTH],
	wt_t weights_1x1[OUT_DEPTH][IN_DEPTH],
	wt_t bias_1x1[OUT_DEPTH]
)
{
    for(int f = 0; f < IN_DEPTH; f++)
		for(int kh = 0; kh < KERNEL_SIZE_3x3; kh++)
			for(int kw = 0; kw < KERNEL_SIZE_3x3; kw++)
				weight_buf3x3[f][kh][kw] = weights_3x3[f][kh][kw];

    for(int f = 0; f < IN_DEPTH; f++)
        bias_buf3x3[f] = bias_3x3[f];

    for(int f = 0; f < OUT_DEPTH; f++)
        for(int c = 0; c < IN_DEPTH; c++)
			weight_buf1x1[f][c] = weights_1x1[f][c];

	for(int f = 0; f < OUT_DEPTH; f++)
		bias_buf1x1[f] = bias_1x1[f];
}



void load_input_from_DRAM(
	fm_t in_fm_buf[3][42][82],
	fm_t input_feature_map[IN_DEPTH*IN_HEIGHT*IN_WIDTH],
	int ti,
	int tj
)
{
	//int offset = ti * 40 * IN_WIDTH + tj * 80;
	for (int c = 0; c < 3; c++) {
		for (int h = 0; h < 42; h++) {
			for (int w = 0; w < 82; w++) {
				int offset_h = h + ti * 40 - 1;
				int offset_w = w + tj * 80 - 1;
				int index = c * (IN_HEIGHT * IN_WIDTH) + offset_h * IN_WIDTH + offset_w;
				if(offset_h < 0 || offset_h > 159 || offset_w < 0 || offset_w > 319)
					in_fm_buf[c][h][w] = 0;

				else
					in_fm_buf[c][h][w] = input_feature_map[index];
			}
		}
	}
}

void store_output_tile_to_DRAM(
    fm_t output_feature_map[OUT_DEPTH*OUT_HEIGHT*OUT_WIDTH],
    fm_t outBuffer1x1[OUT_DEPTH][40][80],
    int ti,
    int tj
)
{
    for (int c = 0; c < OUT_DEPTH; c++) {
        for (int h = 0; h < 40; h++) {
            for (int w = 0; w < 80; w++) {
                int index = c * (OUT_HEIGHT * OUT_WIDTH) + (h + ti * 40) * OUT_WIDTH + (w + tj * 80);
                output_feature_map[index] = outBuffer1x1[c][h][w];
            }
        }
    }
}









