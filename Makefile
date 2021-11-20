SHELL := /bin/bash
.PHONY: help

help:
	@echo "Makefile Usage:"
	@echo "  make all INTERFACE=<CMAC Interface (0 or 1)> USER_KRNL=<hls_send_krnl or hls_recv_krnl> JOBS=<hls jobs>"
	@echo ""
	@echo "  make clean "
	@echo "      Command to remove the generated non-hardware files."
	@echo ""
	@echo "  make cleanall"
	@echo "      Command to remove all the generated files."
	@echo ""

SYSROOT :=
HOST_ARCH := x86
DEVICE ?= xilinx_u280_xdma_201920_3
INTERFACE ?= 0
USER_KRNL ?= hls_send_krnl
JOBS ?= 8
XCLBIN_NAME ?= demo_$(USER_KRNL)_if$(INTERFACE)

XSA := $(strip $(patsubst %.xpfm, % , $(shell basename $(DEVICE))))
TEMP_DIR := _x.$(XSA)
VPP := $(XILINX_VITIS)/bin/v++
CLFLAGS += -t hw --platform $(DEVICE) --save-temps
BUILD_DIR := ./build_hw_$(USER_KRNL)_if$(INTERFACE)
HOST_BUILD_DIR := ./host/build_sw_$(USER_KRNL)
BINARY_CONTAINERS = $(BUILD_DIR)/${XCLBIN_NAME}.xclbin

COMMON_REPO = ./
PWD = $(shell readlink -f .)
ABS_COMMON_REPO = $(shell readlink -f $(COMMON_REPO))

#Include Libraries
include $(ABS_COMMON_REPO)/common/includes/opencl/opencl.mk
include $(ABS_COMMON_REPO)/common/includes/xcl2/xcl2.mk
CXXFLAGS += $(xcl2_CXXFLAGS)
LDFLAGS += $(xcl2_LDFLAGS)
HOST_SRCS += $(xcl2_SRCS)
CXXFLAGS += $(opencl_CXXFLAGS) -Wall -O0 -g -std=gnu++14
CXXFLAGS +=  -DVITIS_PLATFORM=$(VITIS_PLATFORM)
LDFLAGS += $(opencl_LDFLAGS)

HOST_SRCS += host/$(USER_KRNL)/host.cpp

# Host compiler global settings
CXXFLAGS += -fmessage-length=0
LDFLAGS += -lrt -lstdc++

ifneq ($(HOST_ARCH), x86)
  LDFLAGS += --sysroot=$(SYSROOT)
endif

LDFLAGS+= -lOpenCL -luuid -lxrt_core -lxilinxopencl

EXECUTABLE = $(HOST_BUILD_DIR)/host_$(USER_KRNL)
CMD_ARGS = $(BUILD_DIR)/${XCLBIN_NAME}.xclbin

NETLAYERDIR = ./networklayer/
CMACDIR     = ./cmac/
USERKRNLDIR = ./user_krnl/


POSTSYSLINKTCL ?= $(shell readlink -f ./post_sys_link.tcl)

LIST_XO = $(NETLAYERDIR)network_krnl.xo
CONFIGFLAGS := --config connectivity_$(USER_KRNL)_if$(INTERFACE).tmp.ini

# Include cmac kernel depending on the interface
ifeq (3, $(INTERFACE))
	LIST_XO += $(CMACDIR)cmac_0.xo
	LIST_XO += $(CMACDIR)cmac_1.xo
else
	LIST_XO += $(CMACDIR)cmac_$(INTERFACE).xo
endif

# Include application kernels depending on the design
LIST_XO += $(USERKRNLDIR)xofiles/$(USER_KRNL).xo
	
# Linker params
# Linker userPostSysLinkTcl param
HLS_IP_FOLDER  = $(shell readlink -f ./$(NETLAYERDIR)iprepo)
LIST_REPOS := --user_ip_repo_paths $(HLS_IP_FOLDER)


.PHONY: all clean cleanall 
all: check-devices check-vitis check-xrt create-conf-file $(EXECUTABLE) $(BINARY_CONTAINERS)

# Cleaning stuff
clean:
	rm -rf *v++* *.log *.jou *.str host/build*

cleanall: clean
	rm -rf _x* .Xil .ipcache/ *.info *.link_summary *.ltx *.xclbin ./build* ./connectivity*


# Building kernel
$(BUILD_DIR)/${XCLBIN_NAME}.xclbin:
	mkdir -p $(BUILD_DIR)
	make -C $(USERKRNLDIR) all USER_KRNL=$(USER_KRNL) DEVICE=$(DEVICE)
	$(VPP) $(CLFLAGS) $(CONFIGFLAGS) --temp_dir $(BUILD_DIR) -l -o'$@' $(LIST_XO) $(LIST_REPOS) --hls.jobs $(JOBS) 

.PHONY: exe
exe: $(EXECUTABLE)

# Building Host
.PHONY: compile
compile: $(EXECUTABLE)
$(EXECUTABLE): check-xrt $(HOST_SRCS) $(HOST_HDRS)
	mkdir -p $(HOST_BUILD_DIR) 
	$(CXX) $(CXXFLAGS) $(HOST_SRCS) $(HOST_HDRS) -o '$@' $(LDFLAGS)

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

create-conf-file:
	cp config_files/connectivity_$(USER_KRNL)_if$(INTERFACE).ini connectivity_$(USER_KRNL)_if$(INTERFACE).tmp.ini
	echo "" >> connectivity_$(USER_KRNL)_if$(INTERFACE).tmp.ini
	echo "" >> connectivity_$(USER_KRNL)_if$(INTERFACE).tmp.ini
	echo "[advanced]" >> connectivity_$(USER_KRNL)_if$(INTERFACE).tmp.ini
	echo "param=compiler.userPostSysLinkOverlayTcl=$(POSTSYSLINKTCL)" >> connectivity_$(USER_KRNL)_if$(INTERFACE).tmp.ini
	echo "param=compiler.worstNegativeSlack=-2" >> connectivity_$(USER_KRNL)_if$(INTERFACE).tmp.ini

