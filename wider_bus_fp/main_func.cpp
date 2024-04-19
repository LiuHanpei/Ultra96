#include "utils.h"


void main_func (MEM_TYPE A_IN[5], MEM_TYPE A_OUT[5])
{
#pragma HLS interface m_axi port=A_IN  offset=slave bundle=mem
#pragma HLS interface m_axi port=A_OUT offset=slave bundle=mem

	fm_t A_local[50], B_local[50];
	for(int i=0; i < 5; i++)
	{
		MEM_TYPE data1 = A_IN[i];
		for(int ii=0; ii< 10; ii++)
		{
			A_local[i*10+ii].range(15,0) = data1.range(0+(ii*16), 15+(ii*16));
//			std::cout <<"i:"<<i<<" ii:"<<ii<<std::endl;
//			std::cout <<"A_local:"<<A_local[i*10 + ii]<<std::endl;
		}
	}

	std::cout <<"readin finish"<<std::endl;
	for(int j=0; j<50; j++)
	{
		B_local[j] = A_local[j];
	//	std::cout <<"A_local[" << j << "]:" <<A_local[j]<<std::endl;
		//std::cout<<"using bitset" << j << ": "<<std::bitset<16>(A_local[j]) << std::endl;
	}


	for(int k=0; k<5; k++)
	{
		MEM_TYPE data2 = 0;
		for(int kk=0; kk<10; kk++)
		{
			data2.range(0+(kk*16), 15+(kk*16)) = B_local[k*10+kk].range(15,0);
		}
		A_OUT[k] = data2;
	}
	std::cout <<"readout finish"<<std::endl;
}


