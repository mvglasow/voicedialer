
#LOCAL_MAIN_BUILD_SYSTEM := $(BUILD_SYSTEM)
#export BUILD_SYSTEM := /home/vonglasowm/src/android/platform/build/core
#include /home/vonglasowm/src/android/platform/build/core/main.mk
#include $(BUILD_HOST_EXECUTABLE)
#export BUILD_SYSTEM := $(LOCAL_MAIN_BUILD_SYSTEM)

LOCAL_MAIN_BUILD_SYSTEM := $(BUILD_SYSTEM)
export BUILD_SYSTEM := /home/vonglasowm/src/android-ndk-host/build/core
#include $(BUILD_SYSTEM)/build-host-executable.mk
include /home/vonglasowm/src/android-ndk-host/build/core/build-host-executable.mk
#export BUILD_SYSTEM := $(LOCAL_MAIN_BUILD_SYSTEM)