#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.mt6761 \
    init.connectivity.rc \
    init.modem.rc \
    init.mt6761.rc \
    init.mt6761.usb.rc \
    ueventd.mt6761.rc

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    hardware/huawei

# Inherit the proprietary files
$(call inherit-product, vendor/huawei/mt6761-common/mt6761-common-vendor.mk)
