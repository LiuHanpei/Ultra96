// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2.1 (64-bit)
// Tool Version Limit: 2023.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xmain_func.h"

extern XMain_func_Config XMain_func_ConfigTable[];

#ifdef SDT
XMain_func_Config *XMain_func_LookupConfig(UINTPTR BaseAddress) {
	XMain_func_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XMain_func_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XMain_func_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XMain_func_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMain_func_Initialize(XMain_func *InstancePtr, UINTPTR BaseAddress) {
	XMain_func_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMain_func_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMain_func_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XMain_func_Config *XMain_func_LookupConfig(u16 DeviceId) {
	XMain_func_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMAIN_FUNC_NUM_INSTANCES; Index++) {
		if (XMain_func_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMain_func_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMain_func_Initialize(XMain_func *InstancePtr, u16 DeviceId) {
	XMain_func_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMain_func_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMain_func_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

