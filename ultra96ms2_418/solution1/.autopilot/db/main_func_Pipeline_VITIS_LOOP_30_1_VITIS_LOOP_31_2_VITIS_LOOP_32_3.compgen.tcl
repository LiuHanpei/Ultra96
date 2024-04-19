# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler main_func_sparsemux_7_2_16_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler main_func_sparsemux_7_2_16_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler main_func_sparsemux_7_2_16_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


set id 84
set name main_func_mux_3_2_16_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 16
set din0_signed 0
set din1_width 16
set din1_signed 0
set din2_width 16
set din2_signed 0
set din3_width 2
set din3_signed 0
set dout_width 16
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 102
set name main_func_mac_muladd_16s_16s_29ns_29_4_1
set corename simcore_mac
set op mac
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 16
set in0_signed 1
set in1_width 16
set in1_signed 1
set in2_width 29
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 29
set arg_lists {i0 {16 1 +} i1 {16 1 +} m {29 1 +} i2 {29 0 +} p {29 0 +} c_reg {1} rnd {0} acc {0} }
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
    id 146 \
    name outBuffer3x3_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename outBuffer3x3_0 \
    op interface \
    ports { outBuffer3x3_0_address0 { O 12 vector } outBuffer3x3_0_ce0 { O 1 bit } outBuffer3x3_0_we0 { O 1 bit } outBuffer3x3_0_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'outBuffer3x3_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 147 \
    name inBuffer3x3_0_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inBuffer3x3_0_0 \
    op interface \
    ports { inBuffer3x3_0_0_address0 { O 11 vector } inBuffer3x3_0_0_ce0 { O 1 bit } inBuffer3x3_0_0_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inBuffer3x3_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 148 \
    name inBuffer3x3_0_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inBuffer3x3_0_1 \
    op interface \
    ports { inBuffer3x3_0_1_address0 { O 11 vector } inBuffer3x3_0_1_ce0 { O 1 bit } inBuffer3x3_0_1_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inBuffer3x3_0_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 149 \
    name inBuffer3x3_0_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inBuffer3x3_0_2 \
    op interface \
    ports { inBuffer3x3_0_2_address0 { O 11 vector } inBuffer3x3_0_2_ce0 { O 1 bit } inBuffer3x3_0_2_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inBuffer3x3_0_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 150 \
    name inBuffer3x3_1_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inBuffer3x3_1_0 \
    op interface \
    ports { inBuffer3x3_1_0_address0 { O 11 vector } inBuffer3x3_1_0_ce0 { O 1 bit } inBuffer3x3_1_0_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inBuffer3x3_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 151 \
    name inBuffer3x3_1_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inBuffer3x3_1_1 \
    op interface \
    ports { inBuffer3x3_1_1_address0 { O 11 vector } inBuffer3x3_1_1_ce0 { O 1 bit } inBuffer3x3_1_1_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inBuffer3x3_1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 152 \
    name inBuffer3x3_1_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inBuffer3x3_1_2 \
    op interface \
    ports { inBuffer3x3_1_2_address0 { O 11 vector } inBuffer3x3_1_2_ce0 { O 1 bit } inBuffer3x3_1_2_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inBuffer3x3_1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 153 \
    name inBuffer3x3_2_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inBuffer3x3_2_0 \
    op interface \
    ports { inBuffer3x3_2_0_address0 { O 11 vector } inBuffer3x3_2_0_ce0 { O 1 bit } inBuffer3x3_2_0_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inBuffer3x3_2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 154 \
    name inBuffer3x3_2_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inBuffer3x3_2_1 \
    op interface \
    ports { inBuffer3x3_2_1_address0 { O 11 vector } inBuffer3x3_2_1_ce0 { O 1 bit } inBuffer3x3_2_1_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inBuffer3x3_2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 155 \
    name inBuffer3x3_2_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inBuffer3x3_2_2 \
    op interface \
    ports { inBuffer3x3_2_2_address0 { O 11 vector } inBuffer3x3_2_2_ce0 { O 1 bit } inBuffer3x3_2_2_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inBuffer3x3_2_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 156 \
    name outBuffer3x3_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename outBuffer3x3_1 \
    op interface \
    ports { outBuffer3x3_1_address0 { O 12 vector } outBuffer3x3_1_ce0 { O 1 bit } outBuffer3x3_1_we0 { O 1 bit } outBuffer3x3_1_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'outBuffer3x3_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 157 \
    name outBuffer3x3_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename outBuffer3x3_2 \
    op interface \
    ports { outBuffer3x3_2_address0 { O 12 vector } outBuffer3x3_2_ce0 { O 1 bit } outBuffer3x3_2_we0 { O 1 bit } outBuffer3x3_2_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'outBuffer3x3_2'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name bias_buf3x3_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buf3x3_0_load \
    op interface \
    ports { bias_buf3x3_0_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name bias_buf3x3_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buf3x3_1_load \
    op interface \
    ports { bias_buf3x3_1_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name bias_buf3x3_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buf3x3_2_load \
    op interface \
    ports { bias_buf3x3_2_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name weight_buf3x3_0_0_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_buf3x3_0_0_0_load \
    op interface \
    ports { weight_buf3x3_0_0_0_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name weight_buf3x3_0_0_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_buf3x3_0_0_1_load \
    op interface \
    ports { weight_buf3x3_0_0_1_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name weight_buf3x3_0_0_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_buf3x3_0_0_2_load \
    op interface \
    ports { weight_buf3x3_0_0_2_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name weight_buf3x3_0_1_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_buf3x3_0_1_0_load \
    op interface \
    ports { weight_buf3x3_0_1_0_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name weight_buf3x3_0_1_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_buf3x3_0_1_1_load \
    op interface \
    ports { weight_buf3x3_0_1_1_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name weight_buf3x3_0_1_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_buf3x3_0_1_2_load \
    op interface \
    ports { weight_buf3x3_0_1_2_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name weight_buf3x3_0_2_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_buf3x3_0_2_0_load \
    op interface \
    ports { weight_buf3x3_0_2_0_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name weight_buf3x3_0_2_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_buf3x3_0_2_1_load \
    op interface \
    ports { weight_buf3x3_0_2_1_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name weight_buf3x3_0_2_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_buf3x3_0_2_2_load \
    op interface \
    ports { weight_buf3x3_0_2_2_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name weight_buf3x3_1_0_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_buf3x3_1_0_0_load \
    op interface \
    ports { weight_buf3x3_1_0_0_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name weight_buf3x3_1_0_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_buf3x3_1_0_1_load \
    op interface \
    ports { weight_buf3x3_1_0_1_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name weight_buf3x3_1_0_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_buf3x3_1_0_2_load \
    op interface \
    ports { weight_buf3x3_1_0_2_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name weight_buf3x3_1_1_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_buf3x3_1_1_0_load \
    op interface \
    ports { weight_buf3x3_1_1_0_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name weight_buf3x3_1_1_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_buf3x3_1_1_1_load \
    op interface \
    ports { weight_buf3x3_1_1_1_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name weight_buf3x3_1_1_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_buf3x3_1_1_2_load \
    op interface \
    ports { weight_buf3x3_1_1_2_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name weight_buf3x3_1_2_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_buf3x3_1_2_0_load \
    op interface \
    ports { weight_buf3x3_1_2_0_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name weight_buf3x3_1_2_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_buf3x3_1_2_1_load \
    op interface \
    ports { weight_buf3x3_1_2_1_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name weight_buf3x3_1_2_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_buf3x3_1_2_2_load \
    op interface \
    ports { weight_buf3x3_1_2_2_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name weight_buf3x3_2_0_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_buf3x3_2_0_0_load \
    op interface \
    ports { weight_buf3x3_2_0_0_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name weight_buf3x3_2_0_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_buf3x3_2_0_1_load \
    op interface \
    ports { weight_buf3x3_2_0_1_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name weight_buf3x3_2_0_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_buf3x3_2_0_2_load \
    op interface \
    ports { weight_buf3x3_2_0_2_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name weight_buf3x3_2_1_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_buf3x3_2_1_0_load \
    op interface \
    ports { weight_buf3x3_2_1_0_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name weight_buf3x3_2_1_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_buf3x3_2_1_1_load \
    op interface \
    ports { weight_buf3x3_2_1_1_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name weight_buf3x3_2_1_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_buf3x3_2_1_2_load \
    op interface \
    ports { weight_buf3x3_2_1_2_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name weight_buf3x3_2_2_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_buf3x3_2_2_0_load \
    op interface \
    ports { weight_buf3x3_2_2_0_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name weight_buf3x3_2_2_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_buf3x3_2_2_1_load \
    op interface \
    ports { weight_buf3x3_2_2_1_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name weight_buf3x3_2_2_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_buf3x3_2_2_2_load \
    op interface \
    ports { weight_buf3x3_2_2_2_load { I 16 vector } } \
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


