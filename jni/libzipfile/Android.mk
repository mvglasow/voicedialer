LOCAL_PATH:= $(call my-dir)

# build device static library
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	centraldir.c \
	zipfile.c

LOCAL_STATIC_LIBRARIES := \
	libunz

LOCAL_MODULE:= libzipfile

LOCAL_C_INCLUDES += external/zlib \
	$(AOSP_ROOT_DIR)/system/core/include \

include $(BUILD_STATIC_LIBRARY)
