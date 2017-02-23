###############################################################################
# FILE: Makefile
#
# Top-level Makefile for ASR
###############################################################################

# if we're not building from the AOSP tree, we need to set TARGET_BUILD_TYPE manually
export TARGET_BUILD_TYPE := debug

# root dir of AOSP source code (we need to link against it)
export AOSP_ROOT_DIR := /home/vonglasowm/src/aosp

# NDK lacks support for host targets, so we need to supply our own makefile here
#export BUILD_HOST_EXECUTABLE := $(call my-dir)/make/build-host-executable.mk

# remember root of ASR source tree
export ASR_ROOT_DIR := $(call my-dir)
export ASR_MAKE_DIR := $(ASR_ROOT_DIR)/make/asr

# make AOSP libraries
#include $(call all-makefiles-under,$(AOSP_ROOT_DIR)/system/core/libzipfile)
#include $(call all-makefiles-under,$(AOSP_ROOT_DIR)/hardware/libhardware)
#include $(call all-makefiles-under,$(AOSP_ROOT_DIR)/frameworks/native)
#include $(call all-makefiles-under,$(AOSP_ROOT_DIR)/frameworks/av)

# perform sub-makes
include $(call all-subdir-makefiles)
