// Testbench to verify the pack_fixed_values function
#include <iostream>
#include <iomanip>
#include "utils.h"
using namespace std;

fm_t B_IN[50];
fm_t B_OUT[50];

MEM_TYPE B_BUS_IN[5];
MEM_TYPE B_BUS_OUT[5];

fm_t counter = 0;
fm_t step = 0.1;


int main()
{
	//initialize my input for testing
	for (int i = 0; i < 50; i++)
	{
		B_IN[i] = counter;
		counter += step;
		//std::cout<< "B_IN[" << i <<"]:"<< B_IN[i] <<std::endl;
		//std::cout << "using bitset " << i << ": " << std::bitset<16>(B_IN[i]) << std::endl;
		//std::cout << "using bitset " << i << ": " << std::bitset<16>(step) << std::endl;
	}

	//integrate the data into bus wire
	for (int i=0; i<5; i++)
	{
		MEM_TYPE data1 = 0;
		for(int ii=0; ii<10; ii++)
		{
			//B_IN_INT[i*10+ii] = fP2Int((float)B_IN[i*10+ii]);
			data1.range(0+(ii*16), 15+((ii*16))) = B_IN[i*10+ii].range(15,0);
		}
		B_BUS_IN[i] = data1;
		//std::cout<<B_bus[i]<<std::endl;
	}

	main_func(B_BUS_IN, B_BUS_OUT);

	//partition the data from bus wire
	for (int i=0; i<5; i++)
	{
		MEM_TYPE data2 = B_BUS_OUT[i];
		for (int ii=0; ii< 10; ii++)
		{
			B_OUT[i*10+ii].range(15,0) = data2.range(0+(ii*16), 15+((ii*16)));
			//B_OUT[i*10+ii].range(0,15) = B_OUT_INT[i*10+ii];

		}
	}

	for(int i=0; i<50; i++)
	{
		std::cout << "B_OUT_result_verify[" << i <<"]:" << B_OUT[i] << std::endl;
	}
}
