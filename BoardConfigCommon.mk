#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

COMMON_PATH := device/huawei/mt6761-common

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a73

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53

# Boot
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_HAS_RAMDISK := false
BOARD_CUSTOM_BOOTIMG_MK := hardware/huawei/mkbootimg.mk

BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 product.type=normal androidboot.selinux=permissive unmovable_isolate1=2:256M,3:288M,4:320M unmovable_isolate2=2:40M,3:44M,4:48M
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x11a88000 --second_offset 0x00e88000 --tags_offset 0x07808000 --header_version 1

# Inherit the proprietary files
include vendor/huawei/mt6761-common/BoardConfigVendor.mk
