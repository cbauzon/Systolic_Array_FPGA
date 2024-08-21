#include "xparameters.h"
#include "xaxidma.h"
#include "xstatus.h"
#include <stdio.h>
#include "xbasic_types.h"

u32 checkHalted(u32 baseAddress,u32 offset);

int main(){
	XAxiDma dma_inst;
	XAxiDma_Config *dma_config;
	u32 status;

	int8_t AB[18] = {6,5,4,3,2,1,12,11,10,9,8,7,18,17,16,15,14,13};
//	int8_t A2B2[6];
//	int8_t A3B3[6];
//	int8_t B[9];
	int16_t matrix_out[9];

	// init DMA
	dma_config = XAxiDma_LookupConfig(XPAR_AXI_DMA_0_DEVICE_ID);
	status = XAxiDma_CfgInitialize(&dma_inst, dma_config);
	XAxiDma_Reset(&dma_inst);
	while (XAxiDma_ResetIsDone(&dma_inst) != 1);
	if (status == XST_SUCCESS){
		printf("Successful initialization of DMA!\n");
	} else {
		return -1;
	}

	status = checkHalted(XPAR_AXI_DMA_0_BASEADDR,0x4);
	xil_printf("Status before data transfer %0x\n",status);
	Xil_DCacheFlushRange(AB,18*sizeof(int8_t));
	status = XAxiDma_SimpleTransfer(&dma_inst, matrix_out, 9*sizeof(int16_t), XAXIDMA_DEVICE_TO_DMA);
	status = XAxiDma_SimpleTransfer(&dma_inst, AB, 18*sizeof(int8_t),XAXIDMA_DMA_TO_DEVICE);//typecasting in C/C++
	if(status != XST_SUCCESS){
		print("DMA initialization failed\n");
		return -1;
	}
	status = checkHalted(XPAR_AXI_DMA_0_BASEADDR,0x4);
	while(status != 2){
		status = checkHalted(XPAR_AXI_DMA_0_BASEADDR,0x4);
	}

	status = checkHalted(XPAR_AXI_DMA_0_BASEADDR,0x34);
	while(status != 1){
		status = (XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR,0x34))&XAXIDMA_HALTED_MASK;
	}
	print("DMA transfer success..\n");

//	while(status != 1){
//		status = checkHalted(XPAR_AXI_DMA_0_BASEADDR,0x4);
//	}
//
//	res = check_halted(XPAR_AXI_DMA_0_DEVICE_ID, 0X34);
//	while (res != 1){
//		res = check_halted(XPAR_AXI_DMA_0_DEVICE_ID, 0X34);
//
//	};
	for(int i=0;i<9;i++)
			xil_printf("%0d\n",matrix_out[i]);
	return 0;



}


// returns 1 if halted, 0 if not
u32 checkHalted(u32 baseAddress,u32 offset){
	u32 status;
	status = (XAxiDma_ReadReg(baseAddress,offset))&XAXIDMA_IDLE_MASK;
	return status;
}

