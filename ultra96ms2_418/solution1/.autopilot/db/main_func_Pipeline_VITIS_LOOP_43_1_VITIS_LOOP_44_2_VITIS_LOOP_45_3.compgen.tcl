# This script segment is generated automatically by AutoPilot

set name main_func_urem_7ns_3ns_2_11_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {urem} IMPL {auto} LATENCY 10 ALLOW_PRAGMA 1
}


set name main_func_urem_6ns_3ns_2_10_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {urem} IMPL {auto} LATENCY 9 ALLOW_PRAGMA 1
}


set name main_func_mul_6ns_8ns_13_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name main_func_mul_7ns_9ns_15_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set id 47
set name main_func_mac_muladd_2ns_16ns_15s_18_4_1
set corename simcore_mac
set op mac
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 2
set in0_signed 0
set in1_width 16
set in1_signed 0
set in2_width 15
set in2_signed 1
set ce_width 1
set ce_signed 0
set out_width 18
set arg_lists {i0 {2 0 +} i1 {16 0 +} m {18 1 +} i2 {15 1 +} p {18 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3 ALLOW_PRAGMA 1
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 57 \
    name inBuffer3x3_0_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename inBuffer3x3_0_0 \
    op interface \
    ports { inBuffer3x3_0_0_address0 { O 11 vector } inBuffer3x3_0_0_ce0 { O 1 bit } inBuffer3x3_0_0_we0 { O 1 bit } inBuffer3x3_0_0_d0 { O 16 vector } inBuffer3x3_0_0_address1 { O 11 vector } inBuffer3x3_0_0_ce1 { O 1 bit } inBuffer3x3_0_0_we1 { O 1 bit } inBuffer3x3_0_0_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inBuffer3x3_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 58 \
    name inBuffer3x3_0_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename inBuffer3x3_0_1 \
    op interface \
    ports { inBuffer3x3_0_1_address0 { O 11 vector } inBuffer3x3_0_1_ce0 { O 1 bit } inBuffer3x3_0_1_we0 { O 1 bit } inBuffer3x3_0_1_d0 { O 16 vector } inBuffer3x3_0_1_address1 { O 11 vector } inBuffer3x3_0_1_ce1 { O 1 bit } inBuffer3x3_0_1_we1 { O 1 bit } inBuffer3x3_0_1_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inBuffer3x3_0_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 59 \
    name inBuffer3x3_0_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename inBuffer3x3_0_2 \
    op interface \
    ports { inBuffer3x3_0_2_address0 { O 11 vector } inBuffer3x3_0_2_ce0 { O 1 bit } inBuffer3x3_0_2_we0 { O 1 bit } inBuffer3x3_0_2_d0 { O 16 vector } inBuffer3x3_0_2_address1 { O 11 vector } inBuffer3x3_0_2_ce1 { O 1 bit } inBuffer3x3_0_2_we1 { O 1 bit } inBuffer3x3_0_2_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inBuffer3x3_0_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 60 \
    name inBuffer3x3_1_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename inBuffer3x3_1_0 \
    op interface \
    ports { inBuffer3x3_1_0_address0 { O 11 vector } inBuffer3x3_1_0_ce0 { O 1 bit } inBuffer3x3_1_0_we0 { O 1 bit } inBuffer3x3_1_0_d0 { O 16 vector } inBuffer3x3_1_0_address1 { O 11 vector } inBuffer3x3_1_0_ce1 { O 1 bit } inBuffer3x3_1_0_we1 { O 1 bit } inBuffer3x3_1_0_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inBuffer3x3_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 61 \
    name inBuffer3x3_1_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename inBuffer3x3_1_1 \
    op interface \
    ports { inBuffer3x3_1_1_address0 { O 11 vector } inBuffer3x3_1_1_ce0 { O 1 bit } inBuffer3x3_1_1_we0 { O 1 bit } inBuffer3x3_1_1_d0 { O 16 vector } inBuffer3x3_1_1_address1 { O 11 vector } inBuffer3x3_1_1_ce1 { O 1 bit } inBuffer3x3_1_1_we1 { O 1 bit } inBuffer3x3_1_1_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inBuffer3x3_1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 62 \
    name inBuffer3x3_1_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename inBuffer3x3_1_2 \
    op interface \
    ports { inBuffer3x3_1_2_address0 { O 11 vector } inBuffer3x3_1_2_ce0 { O 1 bit } inBuffer3x3_1_2_we0 { O 1 bit } inBuffer3x3_1_2_d0 { O 16 vector } inBuffer3x3_1_2_address1 { O 11 vector } inBuffer3x3_1_2_ce1 { O 1 bit } inBuffer3x3_1_2_we1 { O 1 bit } inBuffer3x3_1_2_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inBuffer3x3_1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 63 \
    name inBuffer3x3_2_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename inBuffer3x3_2_0 \
    op interface \
    ports { inBuffer3x3_2_0_address0 { O 11 vector } inBuffer3x3_2_0_ce0 { O 1 bit } inBuffer3x3_2_0_we0 { O 1 bit } inBuffer3x3_2_0_d0 { O 16 vector } inBuffer3x3_2_0_address1 { O 11 vector } inBuffer3x3_2_0_ce1 { O 1 bit } inBuffer3x3_2_0_we1 { O 1 bit } inBuffer3x3_2_0_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inBuffer3x3_2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 64 \
    name inBuffer3x3_2_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename inBuffer3x3_2_1 \
    op interface \
    ports { inBuffer3x3_2_1_address0 { O 11 vector } inBuffer3x3_2_1_ce0 { O 1 bit } inBuffer3x3_2_1_we0 { O 1 bit } inBuffer3x3_2_1_d0 { O 16 vector } inBuffer3x3_2_1_address1 { O 11 vector } inBuffer3x3_2_1_ce1 { O 1 bit } inBuffer3x3_2_1_we1 { O 1 bit } inBuffer3x3_2_1_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inBuffer3x3_2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 65 \
    name inBuffer3x3_2_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename inBuffer3x3_2_2 \
    op interface \
    ports { inBuffer3x3_2_2_address0 { O 11 vector } inBuffer3x3_2_2_ce0 { O 1 bit } inBuffer3x3_2_2_we0 { O 1 bit } inBuffer3x3_2_2_d0 { O 16 vector } inBuffer3x3_2_2_address1 { O 11 vector } inBuffer3x3_2_2_ce1 { O 1 bit } inBuffer3x3_2_2_we1 { O 1 bit } inBuffer3x3_2_2_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inBuffer3x3_2_2'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name fm \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fm \
    op interface \
    ports { m_axi_fm_AWVALID { O 1 bit } m_axi_fm_AWREADY { I 1 bit } m_axi_fm_AWADDR { O 64 vector } m_axi_fm_AWID { O 1 vector } m_axi_fm_AWLEN { O 32 vector } m_axi_fm_AWSIZE { O 3 vector } m_axi_fm_AWBURST { O 2 vector } m_axi_fm_AWLOCK { O 2 vector } m_axi_fm_AWCACHE { O 4 vector } m_axi_fm_AWPROT { O 3 vector } m_axi_fm_AWQOS { O 4 vector } m_axi_fm_AWREGION { O 4 vector } m_axi_fm_AWUSER { O 1 vector } m_axi_fm_WVALID { O 1 bit } m_axi_fm_WREADY { I 1 bit } m_axi_fm_WDATA { O 16 vector } m_axi_fm_WSTRB { O 2 vector } m_axi_fm_WLAST { O 1 bit } m_axi_fm_WID { O 1 vector } m_axi_fm_WUSER { O 1 vector } m_axi_fm_ARVALID { O 1 bit } m_axi_fm_ARREADY { I 1 bit } m_axi_fm_ARADDR { O 64 vector } m_axi_fm_ARID { O 1 vector } m_axi_fm_ARLEN { O 32 vector } m_axi_fm_ARSIZE { O 3 vector } m_axi_fm_ARBURST { O 2 vector } m_axi_fm_ARLOCK { O 2 vector } m_axi_fm_ARCACHE { O 4 vector } m_axi_fm_ARPROT { O 3 vector } m_axi_fm_ARQOS { O 4 vector } m_axi_fm_ARREGION { O 4 vector } m_axi_fm_ARUSER { O 1 vector } m_axi_fm_RVALID { I 1 bit } m_axi_fm_RREADY { O 1 bit } m_axi_fm_RDATA { I 16 vector } m_axi_fm_RLAST { I 1 bit } m_axi_fm_RID { I 1 vector } m_axi_fm_RFIFONUM { I 10 vector } m_axi_fm_RUSER { I 1 vector } m_axi_fm_RRESP { I 2 vector } m_axi_fm_BVALID { I 1 bit } m_axi_fm_BREADY { O 1 bit } m_axi_fm_BRESP { I 2 vector } m_axi_fm_BID { I 1 vector } m_axi_fm_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name zext_ln43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln43 \
    op interface \
    ports { zext_ln43 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name input_feature_map \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_feature_map \
    op interface \
    ports { input_feature_map { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName main_func_flow_control_loop_pipe_sequential_init_U
set CompName main_func_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix main_func_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


