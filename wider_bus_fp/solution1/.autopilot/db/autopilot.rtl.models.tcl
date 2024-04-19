set SynModuleInfo {
  {SRCNAME main_func_Pipeline_VITIS_LOOP_10_1 MODELNAME main_func_Pipeline_VITIS_LOOP_10_1 RTLNAME main_func_main_func_Pipeline_VITIS_LOOP_10_1
    SUBMODULES {
      {MODELNAME main_func_flow_control_loop_pipe_sequential_init RTLNAME main_func_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME main_func_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME main_func_Pipeline_VITIS_LOOP_22_3 MODELNAME main_func_Pipeline_VITIS_LOOP_22_3 RTLNAME main_func_main_func_Pipeline_VITIS_LOOP_22_3
    SUBMODULES {
      {MODELNAME main_func_sparsemux_11_3_16_1_1 RTLNAME main_func_sparsemux_11_3_16_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME main_func_Pipeline_VITIS_LOOP_30_4 MODELNAME main_func_Pipeline_VITIS_LOOP_30_4 RTLNAME main_func_main_func_Pipeline_VITIS_LOOP_30_4}
  {SRCNAME main_func MODELNAME main_func RTLNAME main_func IS_TOP 1
    SUBMODULES {
      {MODELNAME main_func_A_local_RAM_AUTO_1R1W RTLNAME main_func_A_local_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME main_func_B_local_RAM_AUTO_1R1W RTLNAME main_func_B_local_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME main_func_mem_m_axi RTLNAME main_func_mem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME main_func_control_s_axi RTLNAME main_func_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
