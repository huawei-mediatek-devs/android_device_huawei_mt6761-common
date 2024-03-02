#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := fstab.mt6761_ramdisk
LOCAL_MODULE_STEM := fstab.mt6761
LOCAL_SRC_FILES := etc/fstab.mt6761
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_RAMDISK_OUT)
include $(BUILD_PREBUILT)
