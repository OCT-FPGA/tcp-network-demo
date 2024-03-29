.PHONY: help

help:
	@echo "Makefile Usage:"
	@echo "  make all DEVICE=<FPGA platform> USER_KRNL=\"<hls_send_krnl> or <hls_recv_krnl>"\"
	@echo "      Command to generate the xo for specified device and Interface."
	@echo "      By default, DEVICE=xilinx_u280_xdma_201920_3 and kernel_list=\"krnl_s2mm krnl_mm2s\""
	@echo ""
	@echo "  make clean "
	@echo "      Command to remove the generated non-hardware files."
	@echo ""
	@echo "  make distclean"
	@echo "      Command to remove all the generated files."
	@echo ""


DEVICE ?= xilinx_u280_xdma_201920_3
USER_KRNL ?= hls_send_krnl


XSA := $(strip $(patsubst %.xpfm, % , $(shell basename $(DEVICE))))
TEMP_DIR := xofiles
VPP := $(XILINX_VITIS)/bin/v++
CLFLAGS += -t hw --platform $(DEVICE) --save-temps
BINARY_OBJS = $(addprefix $(TEMP_DIR)/, $(addsuffix .xo, $(USER_KRNL)))


.PHONY: all clean distclean 
all: check-devices check-vitis check-xrt $(BINARY_OBJS)  


# Cleaning stuff
clean:
	rm -rf *v++* *.log *.jou

distclean: clean
	rm -rf _x* .Xil xofiles

$(TEMP_DIR)/hls_send_krnl.xo: hls_send_krnl/src/hls/hls_send_krnl.cpp
	$(VPP) $(CLFLAGS) -k $(subst $(TEMP_DIR)/,,$(subst .xo,,$@)) -c -o $@ $^

$(TEMP_DIR)/hls_recv_krnl.xo: hls_recv_krnl/src/hls/hls_recv_krnl.cpp
	$(VPP) $(CLFLAGS) -k $(subst $(TEMP_DIR)/,,$(subst .xo,,$@)) -c -o $@ $^


check-devices:
ifndef DEVICE
	$(error DEVICE not set. Please set the DEVICE properly and rerun. Run "make help" for more details.)
endif

#Checks for XILINX_VITIS
check-vitis:
ifndef XILINX_VITIS
	$(error XILINX_VITIS variable is not set, please set correctly and rerun)
endif

#Checks for XILINX_XRT
check-xrt:
ifndef XILINX_XRT
	$(error XILINX_XRT variable is not set, please set correctly and rerun)
endif
