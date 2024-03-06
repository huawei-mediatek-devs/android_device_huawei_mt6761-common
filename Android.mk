#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifneq ($(filter madrid, $(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))

include $(CLEAR_VARS)
NATIVE_PACKAGES_FIXUP := $(TARGET_OUT_VENDOR)/etc/native_packages.xml
$(NATIVE_PACKAGES_FIXUP): $(TARGET_OUT_VENDOR)/etc/native_packages.bin
	@echo "Move vendor native_packages.bin to native_packages.xml"
	$(hide) mv $(TARGET_OUT_VENDOR)/etc/native_packages.bin $@

SYSTEM_NATIVE_PACKAGES_FIXUP := $(PRODUCT_OUT)/system/etc/native_packages.xml
$(SYSTEM_NATIVE_PACKAGES_FIXUP): $(PRODUCT_OUT)/system/etc/native_packages.bin
	@echo "Move system native_packages.bin to native_packages.xml"
	$(hide) mv $(PRODUCT_OUT)/system/etc/native_packages.bin $@

ALL_DEFAULT_INSTALLED_MODULES += $(NATIVE_PACKAGES_FIXUP) $(SYSTEM_NATIVE_PACKAGES_FIXUP)

endif
