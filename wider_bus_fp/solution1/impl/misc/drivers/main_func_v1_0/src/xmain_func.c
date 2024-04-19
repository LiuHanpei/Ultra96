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

void XMain_func_Set_A_IN(XMain_func *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_func_WriteReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_A_IN_DATA, (u32)(Data));
    XMain_func_WriteReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_A_IN_DATA + 4, (u32)(Data >> 32));
}

u64 XMain_func_Get_A_IN(XMain_func *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_func_ReadReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_A_IN_DATA);
    Data += (u64)XMain_func_ReadReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_A_IN_DATA + 4) << 32;
    return Data;
}

void XMain_func_Set_A_OUT(XMain_func *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_func_WriteReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_A_OUT_DATA, (u32)(Data));
    XMain_func_WriteReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_A_OUT_DATA + 4, (u32)(Data >> 32));
}

u64 XMain_func_Get_A_OUT(XMain_func *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_func_ReadReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_A_OUT_DATA);
    Data += (u64)XMain_func_ReadReg(InstancePtr->Control_BaseAddress, XMAIN_FUNC_CONTROL_ADDR_A_OUT_DATA + 4) << 32;
    return Data;
}

