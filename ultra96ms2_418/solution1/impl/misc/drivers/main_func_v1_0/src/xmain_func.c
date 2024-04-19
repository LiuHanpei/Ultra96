// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2.1 (64-bit)
// Tool Version Limit: 2023.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xmain_func.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMain_func_CfgInitialize(XMain_func *InstancePtr, XMain_func_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMain_func_Start(XMain_func *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_func_ReadReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMain_func_WriteReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMain_func_IsDone(XMain_func *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_func_ReadReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMain_func_IsIdle(XMain_func *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_func_ReadReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMain_func_IsReady(XMain_func *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_func_ReadReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMain_func_EnableAutoRestart(XMain_func *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_func_WriteReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XMain_func_DisableAutoRestart(XMain_func *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_func_WriteReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_AP_CTRL, 0);
}

void XMain_func_Set_input_feature_map(XMain_func *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_func_WriteReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_INPUT_FEATURE_MAP_DATA, (u32)(Data));
    XMain_func_WriteReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_INPUT_FEATURE_MAP_DATA + 4, (u32)(Data >> 32));
}

u64 XMain_func_Get_input_feature_map(XMain_func *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_func_ReadReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_INPUT_FEATURE_MAP_DATA);
    Data += (u64)XMain_func_ReadReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_INPUT_FEATURE_MAP_DATA + 4) << 32;
    return Data;
}

void XMain_func_Set_weights_3x3(XMain_func *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_func_WriteReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_WEIGHTS_3X3_DATA, (u32)(Data));
    XMain_func_WriteReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_WEIGHTS_3X3_DATA + 4, (u32)(Data >> 32));
}

u64 XMain_func_Get_weights_3x3(XMain_func *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_func_ReadReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_WEIGHTS_3X3_DATA);
    Data += (u64)XMain_func_ReadReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_WEIGHTS_3X3_DATA + 4) << 32;
    return Data;
}

void XMain_func_Set_bias_3x3(XMain_func *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_func_WriteReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_BIAS_3X3_DATA, (u32)(Data));
    XMain_func_WriteReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_BIAS_3X3_DATA + 4, (u32)(Data >> 32));
}

u64 XMain_func_Get_bias_3x3(XMain_func *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_func_ReadReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_BIAS_3X3_DATA);
    Data += (u64)XMain_func_ReadReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_BIAS_3X3_DATA + 4) << 32;
    return Data;
}

void XMain_func_Set_weights_1x1(XMain_func *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_func_WriteReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_WEIGHTS_1X1_DATA, (u32)(Data));
    XMain_func_WriteReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_WEIGHTS_1X1_DATA + 4, (u32)(Data >> 32));
}

u64 XMain_func_Get_weights_1x1(XMain_func *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_func_ReadReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_WEIGHTS_1X1_DATA);
    Data += (u64)XMain_func_ReadReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_WEIGHTS_1X1_DATA + 4) << 32;
    return Data;
}

void XMain_func_Set_bias_1x1(XMain_func *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_func_WriteReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_BIAS_1X1_DATA, (u32)(Data));
    XMain_func_WriteReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_BIAS_1X1_DATA + 4, (u32)(Data >> 32));
}

u64 XMain_func_Get_bias_1x1(XMain_func *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_func_ReadReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_BIAS_1X1_DATA);
    Data += (u64)XMain_func_ReadReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_BIAS_1X1_DATA + 4) << 32;
    return Data;
}

void XMain_func_Set_output_feature_map(XMain_func *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_func_WriteReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_OUTPUT_FEATURE_MAP_DATA, (u32)(Data));
    XMain_func_WriteReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_OUTPUT_FEATURE_MAP_DATA + 4, (u32)(Data >> 32));
}

u64 XMain_func_Get_output_feature_map(XMain_func *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_func_ReadReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_OUTPUT_FEATURE_MAP_DATA);
    Data += (u64)XMain_func_ReadReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_OUTPUT_FEATURE_MAP_DATA + 4) << 32;
    return Data;
}

void XMain_func_InterruptGlobalEnable(XMain_func *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_func_WriteReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_GIE, 1);
}

void XMain_func_InterruptGlobalDisable(XMain_func *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_func_WriteReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_GIE, 0);
}

void XMain_func_InterruptEnable(XMain_func *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMain_func_ReadReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_IER);
    XMain_func_WriteReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_IER, Register | Mask);
}

void XMain_func_InterruptDisable(XMain_func *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMain_func_ReadReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_IER);
    XMain_func_WriteReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_IER, Register & (~Mask));
}

void XMain_func_InterruptClear(XMain_func *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_func_WriteReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_ISR, Mask);
}

u32 XMain_func_InterruptGetEnabled(XMain_func *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMain_func_ReadReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_IER);
}

u32 XMain_func_InterruptGetStatus(XMain_func *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMain_func_ReadReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_ISR);
}

