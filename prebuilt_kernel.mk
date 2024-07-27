#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_KERNEL_PATH := device/xiaomi/spes-kernel

# Flag required to use prebuilt kernel (LineageOS)
TARGET_FORCE_PREBUILT_KERNEL := true

BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_KERNEL_PATH)/dtbo.img
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_KERNEL_PATH)/dtb
TARGET_PREBUILT_KERNEL := $(DEVICE_KERNEL_PATH)/Image

# Copy out modules
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(DEVICE_KERNEL_PATH)/modules/,$(TARGET_COPY_OUT_VENDOR)/lib/modules)
