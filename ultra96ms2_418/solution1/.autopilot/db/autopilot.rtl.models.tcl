set SynModuleInfo {
  {SRCNAME main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3 MODELNAME main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3 RTLNAME main_func_main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3
    SUBMODULES {
      {MODELNAME main_func_flow_control_loop_pipe_sequential_init RTLNAME main_func_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME main_func_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME main_func_Pipeline_VITIS_LOOP_22_4 MODELNAME main_func_Pipeline_VITIS_LOOP_22_4 RTLNAME main_func_main_func_Pipeline_VITIS_LOOP_22_4}
  {SRCNAME main_func_Pipeline_VITIS_LOOP_25_5_VITIS_LOOP_26_6 MODELNAME main_func_Pipeline_VITIS_LOOP_25_5_VITIS_LOOP_26_6 RTLNAME main_func_main_func_Pipeline_VITIS_LOOP_25_5_VITIS_LOOP_26_6}
  {SRCNAME main_func_Pipeline_VITIS_LOOP_29_7 MODELNAME main_func_Pipeline_VITIS_LOOP_29_7 RTLNAME main_func_main_func_Pipeline_VITIS_LOOP_29_7}
  {SRCNAME main_func_Pipeline_VITIS_LOOP_43_1_VITIS_LOOP_44_2_VITIS_LOOP_45_3 MODELNAME main_func_Pipeline_VITIS_LOOP_43_1_VITIS_LOOP_44_2_VITIS_LOOP_45_3 RTLNAME main_func_main_func_Pipeline_VITIS_LOOP_43_1_VITIS_LOOP_44_2_VITIS_LOOP_45_3
    SUBMODULES {
      {MODELNAME main_func_urem_7ns_3ns_2_11_1 RTLNAME main_func_urem_7ns_3ns_2_11_1 BINDTYPE op TYPE urem IMPL auto LATENCY 10 ALLOW_PRAGMA 1}
      {MODELNAME main_func_urem_6ns_3ns_2_10_1 RTLNAME main_func_urem_6ns_3ns_2_10_1 BINDTYPE op TYPE urem IMPL auto LATENCY 9 ALLOW_PRAGMA 1}
      {MODELNAME main_func_mul_6ns_8ns_13_1_1 RTLNAME main_func_mul_6ns_8ns_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME main_func_mul_7ns_9ns_15_1_1 RTLNAME main_func_mul_7ns_9ns_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME main_func_mac_muladd_2ns_16ns_15s_18_4_1 RTLNAME main_func_mac_muladd_2ns_16ns_15s_18_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3 MODELNAME main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3 RTLNAME main_func_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3
    SUBMODULES {
      {MODELNAME main_func_sparsemux_7_2_16_1_1 RTLNAME main_func_sparsemux_7_2_16_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME main_func_mux_3_2_16_1_1 RTLNAME main_func_mux_3_2_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME main_func_mac_muladd_16s_16s_29ns_29_4_1 RTLNAME main_func_mac_muladd_16s_16s_29ns_29_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME main_func_Pipeline_VITIS_LOOP_12_1_VITIS_LOOP_13_2_VITIS_LOOP_14_3 MODELNAME main_func_Pipeline_VITIS_LOOP_12_1_VITIS_LOOP_13_2_VITIS_LOOP_14_3 RTLNAME main_func_main_func_Pipeline_VITIS_LOOP_12_1_VITIS_LOOP_13_2_VITIS_LOOP_14_3
    SUBMODULES {
      {MODELNAME main_func_mul_16s_16s_29_1_1 RTLNAME main_func_mul_16s_16s_29_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME main_func_Pipeline_VITIS_LOOP_66_1_VITIS_LOOP_67_2_VITIS_LOOP_68_3 MODELNAME main_func_Pipeline_VITIS_LOOP_66_1_VITIS_LOOP_67_2_VITIS_LOOP_68_3 RTLNAME main_func_main_func_Pipeline_VITIS_LOOP_66_1_VITIS_LOOP_67_2_VITIS_LOOP_68_3
    SUBMODULES {
      {MODELNAME main_func_mac_muladd_6ns_16ns_17ns_22_4_1 RTLNAME main_func_mac_muladd_6ns_16ns_17ns_22_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME main_func MODELNAME main_func RTLNAME main_func IS_TOP 1
    SUBMODULES {
      {MODELNAME main_func_mul_3ns_15ns_17_1_1 RTLNAME main_func_mul_3ns_15ns_17_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME main_func_weight_buf1x1_0_RAM_AUTO_1R1W RTLNAME main_func_weight_buf1x1_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME main_func_inBuffer3x3_0_0_RAM_AUTO_1R1W RTLNAME main_func_inBuffer3x3_0_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME main_func_outBuffer3x3_0_RAM_AUTO_1R1W RTLNAME main_func_outBuffer3x3_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME main_func_outBuffer1x1_RAM_AUTO_1R1W RTLNAME main_func_outBuffer1x1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME main_func_fm_m_axi RTLNAME main_func_fm_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME main_func_wt_m_axi RTLNAME main_func_wt_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME main_func_control_s_axi RTLNAME main_func_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
