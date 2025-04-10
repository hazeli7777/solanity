NVCC:=nvcc
# GPU_PTX_ARCH:=compute_35 # Removed old compute capability
GPU_ARCHS?=sm_50,sm_61,sm_70 # Removed sm_37
# GPU_CFLAGS:=--gpu-code=$(GPU_ARCHS),$(GPU_PTX_ARCH) --gpu-architecture=$(GPU_PTX_ARCH)
GPU_CFLAGS:=$(addprefix --gpu-code=,$(GPU_ARCHS)) --gpu-architecture=sm_50 # Generate flags for each specified architecture and set base arch
CFLAGS_release:=--ptxas-options=-v $(GPU_CFLAGS) -O3 -Xcompiler "-Wall -Werror -fPIC -Wno-strict-aliasing"
CFLAGS_debug:=$(CFLAGS_release) -g
CFLAGS:=$(CFLAGS_$V)
