#include "utils.h"

void dw_conv3x3(
		fm_t outBuffer[3][40][80],
		fm_t inBuffer [3][42][82],
		fm_t weights_3x3 [3][3][3],
		fm_t bias_3x3[3]

)
{
//	 std::cout << "before padding " << std::endl;
//fm_t paddedBuffer[3][42][82]= {0};
//for (int c = 0; c < IN_DEPTH; c++) {
//	for (int i = 0; i < 42; i++) {
//		for (int j = 0; j < 82; j++) {
//			paddedBuffer[c][i][j] = inBuffer[c][i][j];
//		}
//	}
//}
//
//std::cout << "after padding " << std::endl;


//#pragma HLS array_partition variable=outBuffer dim=1 complete
//#pragma HLS array_partition variable=inBuffer dim=1 complete
//#pragma HLS array_partition variable=weight3x3 dim=1 complete
//#pragma HLS array_partition variable=bias3x3 dim=1 complete


for (int c = 0; c < IN_DEPTH; c++){
	for (int i = 0; i < 40; i++)	{
		for (int j = 0; j < 80; j++){
			outBuffer[c][i][j] =  bias_3x3[c];
			for (int kh = 0; kh < 3; kh++){
				for (int kw = 0; kw < 3; kw++)
					outBuffer[c][i][j] += inBuffer[c][i+kh][j+kw] * weights_3x3[c][kh][kw];
			}
		}
	}
}


}


