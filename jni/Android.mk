###############################################################################
# FILE: Makefile
#
# Top-level Makefile for ASR
###############################################################################

# if we're not building from the AOSP tree, we need to set TARGET_BUILD_TYPE manually
export TARGET_BUILD_TYPE := debug

# remember root of ASR source tree
export ASR_ROOT_DIR := $(call my-dir)
export ASR_MAKE_DIR := $(ASR_ROOT_DIR)/make/asr

# perform sub-makes
include $(call all-subdir-makefiles)
