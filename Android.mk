LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),p8000)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
