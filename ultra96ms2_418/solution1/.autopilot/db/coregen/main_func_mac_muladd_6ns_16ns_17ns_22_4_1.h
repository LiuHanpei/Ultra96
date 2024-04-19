// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2.1 (64-bit)
// Tool Version Limit: 2023.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __main_func_mac_muladd_6ns_16ns_17ns_22_4_1__HH__
#define __main_func_mac_muladd_6ns_16ns_17ns_22_4_1__HH__
#include "main_func_mac_muladd_6ns_16ns_17ns_22_4_1_DSP48_2.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(main_func_mac_muladd_6ns_16ns_17ns_22_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    main_func_mac_muladd_6ns_16ns_17ns_22_4_1_DSP48_2 main_func_mac_muladd_6ns_16ns_17ns_22_4_1_DSP48_2_U;

    SC_CTOR(main_func_mac_muladd_6ns_16ns_17ns_22_4_1):  main_func_mac_muladd_6ns_16ns_17ns_22_4_1_DSP48_2_U ("main_func_mac_muladd_6ns_16ns_17ns_22_4_1_DSP48_2_U") {
        main_func_mac_muladd_6ns_16ns_17ns_22_4_1_DSP48_2_U.clk(clk);
        main_func_mac_muladd_6ns_16ns_17ns_22_4_1_DSP48_2_U.rst(reset);
        main_func_mac_muladd_6ns_16ns_17ns_22_4_1_DSP48_2_U.ce(ce);
        main_func_mac_muladd_6ns_16ns_17ns_22_4_1_DSP48_2_U.in0(din0);
        main_func_mac_muladd_6ns_16ns_17ns_22_4_1_DSP48_2_U.in1(din1);
        main_func_mac_muladd_6ns_16ns_17ns_22_4_1_DSP48_2_U.in2(din2);
        main_func_mac_muladd_6ns_16ns_17ns_22_4_1_DSP48_2_U.dout(dout);

    }

};

#endif //
