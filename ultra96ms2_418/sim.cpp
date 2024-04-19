#include <iostream>
#include <fstream>
#include <cmath>
#include "conv.h"

using namespace std;
#define PRINT_DEBUG

float conv_layer_input_feature_map[IN_DEPTH*IN_HEIGHT*IN_WIDTH];
float conv_layer_weights3x3[3][3][3];
float conv_layer_bias3x3[3];
float conv_layer_weights1x1[48][3];
float conv_layer_bias1x1[48];
float conv_layer_golden_output_feature_map[48*160*320];

fm_t  input_feature_map[IN_DEPTH*IN_HEIGHT*IN_WIDTH];
wt_t  weights_3x3[3][3][3];
wt_t  bias_3x3[3];
wt_t  weights_1x1[48][3];
wt_t  bias_1x1[48];
fm_t  output_feature_map[48*160*320] = {0};


void read_bin_files()
{
    // Input Feature Map
    ifstream ifs_conv_input("dw_conv_input3x3.bin", ios::in | ios::binary);
    if (!ifs_conv_input.is_open()) {
           std::cerr << "Failed to open input.bin" << std::endl;
           return ; // or other error handling
       }
    ifs_conv_input.read((char*)(conv_layer_input_feature_map), IN_DEPTH * IN_HEIGHT * IN_WIDTH * sizeof(float));
    ifs_conv_input.close();
    // Typecast to fixed-point
	for(int i = 0; i < IN_DEPTH * IN_HEIGHT * IN_WIDTH; i++)
		input_feature_map[i] = (fm_t) conv_layer_input_feature_map[i];


    // Weights0
    ifstream ifs_conv_weights0("dw_conv_weight3x3.bin", ios::in | ios::binary);
    ifs_conv_weights0.read((char*)(**conv_layer_weights3x3), IN_DEPTH * 3 * 3 * sizeof(float));
    ifs_conv_weights0.close();
    // Typecast to fixed-point
    for(int f = 0; f < 3; f++)
		for(int m = 0; m < 3; m++)
			for(int n =0; n < 3; n++)
				weights_3x3[f][m][n] = (wt_t) conv_layer_weights3x3[f][m][n];

    // Weights1
    ifstream ifs_conv_weights1("dw_conv_weight1x1.bin", ios::in | ios::binary);
    ifs_conv_weights1.read((char*)(*conv_layer_weights1x1), OUT_DEPTH * IN_DEPTH *  sizeof(float));
    ifs_conv_weights1.close();
    // Typecast to fixed-point
    for(int f = 0; f < OUT_DEPTH; f++)
		for(int m = 0; m < IN_DEPTH; m++)
			weights_1x1[f][m] = (wt_t) conv_layer_weights1x1[f][m];


    // Bias0
    ifstream ifs_conv_bias0("dw_conv_bias3x3.bin", ios::in | ios::binary);
    ifs_conv_bias0.read((char*)(conv_layer_bias3x3), IN_DEPTH * sizeof(float));
    ifs_conv_bias0.close();
    // Typecast to fixed-point
    for(int f = 0; f < IN_DEPTH; f++)
    	bias_3x3[f] = (wt_t) conv_layer_bias3x3[f];

    // Bias1
    ifstream ifs_conv_bias1("dw_conv_bias1x1.bin", ios::in | ios::binary);
    ifs_conv_bias1.read((char*)(conv_layer_bias1x1), OUT_DEPTH * sizeof(float));
    ifs_conv_bias1.close();
    // Typecast to fixed-point
    for(int f = 0; f < OUT_DEPTH; f++)
    	bias_1x1[f] = (wt_t) conv_layer_bias1x1[f];

    // Golden Output
    ifstream ifs_golden_output("dw_conv_output1x1.bin", ios::in | ios::binary);
    ifs_golden_output.read((char*)(conv_layer_golden_output_feature_map), OUT_DEPTH * OUT_HEIGHT * OUT_WIDTH * sizeof(float));
    ifs_golden_output.close();
}


int main ()
{
    long double mse = 0.0;
    read_bin_files();
    std::cout << "Beginning HLS  simulation..." << std::endl;

    main_func (
		input_feature_map,
		weights_3x3,
		bias_3x3,
		weights_1x1,
		bias_1x1,
		output_feature_map
    );

    std::cout << "simulation complete!\n" << std::endl;
    //Compute Mean-Squared-Error
    for(int i = 0; i < OUT_DEPTH * OUT_HEIGHT * OUT_WIDTH; i++)
    {

		mse += std::pow((conv_layer_golden_output_feature_map[i] - (float) output_feature_map[i]), 2);
	}

	#ifdef PRINT_DEBUG
		// Prints sample output values (first feature of each channel) for comparison
		// Modify as required for debugging
		int a = 1;
		int b = OUT_DEPTH * OUT_HEIGHT * OUT_WIDTH;
		for(int i=a; i<b; i+=80){
			cout << "Output feature[" << i << "]: ";
			cout << "Expected: " << conv_layer_golden_output_feature_map[i] << "\t";
			cout << "Actual: "   << output_feature_map[i];
			cout << endl;
		}
	#endif


    mse = mse / (48 * OUT_HEIGHT * OUT_WIDTH);
    std::cout << "\nOutput MSE:  " << mse << std::endl;
    std::cout << "----------------------------------------" << std::endl;

    #ifdef CSIM_DEBUG
        if(mse > 0 && mse < std::pow(10,-13))
        {
            std::cout << "Floating-point Simulation SUCCESSFUL!!!" << std::endl;
        }
        else
        {
            std::cout << "Floating-point Simulation FAILED :(" << std::endl;
        }
    #else
        if(mse > 0 && mse < std::pow(10,-3))
        {
            std::cout << "Fixed-point Simulation SUCCESSFUL!!!" << std::endl;
        }
        else
        {
            std::cout << "Fixed-point Simulation FAILED :(" << std::endl;
        }
    #endif
    std::cout << "----------------------------------------" << std::endl;
    return 0;

}




