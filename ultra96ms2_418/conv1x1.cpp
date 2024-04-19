#include "utils.h"

void conv1x1 (
		fm_t outBuffer[48][40][80],
		fm_t inBuffer [3][40][80],
		fm_t weights_1x1 [48][3],
		fm_t bias_1x1[48]
)
{
#pragma inline off
fm_t sum;
	for (int co = 0; co < OUT_DEPTH; co++){
		for (int h = 0; h < 40; h++){
			for (int w = 0; w < 80; w++){
				sum = 0;
				for (int ci = 0; ci < IN_DEPTH; ci++){
					sum += inBuffer[ci][h][w] * weights_1x1[co][ci];
				}
				outBuffer[co][h][w] = sum + bias_1x1[co];
			}
		}
	}
}




