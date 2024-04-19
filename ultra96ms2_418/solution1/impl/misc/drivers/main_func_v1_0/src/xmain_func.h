// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2.1 (64-bit)
// Tool Version Limit: 2023.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XMAIN_FUNC_H
#define XMAIN_FUNC_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xmain_func_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XMain_func_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XMain_func;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMain_func_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMain_func_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMain_func_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMain_func_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XMain_func_Initialize(XMain_func *InstancePtr, UINTPTR BaseAddress);
XMain_func_Config* XMain_func_LookupConfig(UINTPTR BaseAddress);
#else
int XMain_func_Initialize(XMain_func *InstancePtr, u16 DeviceId);
XMain_func_Config* XMain_func_LookupConfig(u16 DeviceId);
#endif
int XMain_func_CfgInitialize(XMain_func *InstancePtr, XMain_func_Config *ConfigPtr);
#else
int XMain_func_Initialize(XMain_func *InstancePtr, const char* InstanceName);
int XMain_func_Release(XMain_func *InstancePtr);
#endif

void XMain_func_Start(XMain_func *InstancePtr);
u32 XMain_func_IsDone(XMain_func *InstancePtr);
u32 XMain_func_IsIdle(XMain_func *InstancePtr);
u32 XMain_func_IsReady(XMain_func *InstancePtr);
void XMain_func_EnableAutoRestart(XMain_func *InstancePtr);
void XMain_func_DisableAutoRestart(XMain_func *InstancePtr);

void XMain_func_Set_input_feature_map(XMain_func *InstancePtr, u64 Data);
u64 XMain_func_Get_input_feature_map(XMain_func *InstancePtr);
void XMain_func_Set_weights_3x3(XMain_func *InstancePtr, u64 Data);
u64 XMain_func_Get_weights_3x3(XMain_func *InstancePtr);
void XMain_func_Set_bias_3x3(XMain_func *InstancePtr, u64 Data);
u64 XMain_func_Get_bias_3x3(XMain_func *InstancePtr);
void XMain_func_Set_weights_1x1(XMain_func *InstancePtr, u64 Data);
u64 XMain_func_Get_weights_1x1(XMain_func *InstancePtr);
void XMain_func_Set_bias_1x1(XMain_func *InstancePtr, u64 Data);
u64 XMain_func_Get_bias_1x1(XMain_func *InstancePtr);
void XMain_func_Set_output_feature_map(XMain_func *InstancePtr, u64 Data);
u64 XMain_func_Get_output_feature_map(XMain_func *InstancePtr);

void XMain_func_InterruptGlobalEnable(XMain_func *InstancePtr);
void XMain_func_InterruptGlobalDisable(XMain_func *InstancePtr);
void XMain_func_InterruptEnable(XMain_func *InstancePtr, u32 Mask);
void XMain_func_InterruptDisable(XMain_func *InstancePtr, u32 Mask);
void XMain_func_InterruptClear(XMain_func *InstancePtr, u32 Mask);
u32 XMain_func_InterruptGetEnabled(XMain_func *InstancePtr);
u32 XMain_func_InterruptGetStatus(XMain_func *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
