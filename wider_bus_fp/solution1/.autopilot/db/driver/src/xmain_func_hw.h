// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2.1 (64-bit)
// Tool Version Limit: 2023.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of A_IN
//        bit 31~0 - A_IN[31:0] (Read/Write)
// 0x14 : Data signal of A_IN
//        bit 31~0 - A_IN[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of A_OUT
//        bit 31~0 - A_OUT[31:0] (Read/Write)
// 0x20 : Data signal of A_OUT
//        bit 31~0 - A_OUT[63:32] (Read/Write)
// 0x24 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XMAIN_FUNC_CONTROL_ADDR_A_IN_DATA  0x10
#define XMAIN_FUNC_CONTROL_BITS_A_IN_DATA  64
#define XMAIN_FUNC_CONTROL_ADDR_A_OUT_DATA 0x1c
#define XMAIN_FUNC_CONTROL_BITS_A_OUT_DATA 64

