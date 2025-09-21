#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

COMMON_PATH := device/samsung/sm8350-common

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a-dotprod
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := kryo385

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a75

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := lahaina
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RPC := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true

# File System
TARGET_FS_CONFIG_GEN := $(COMMON_PATH)/config.fs

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := \
    hardware/qcom-caf/common/vendor_framework_compatibility_matrix.xml \
    hardware/qcom-caf/common/vendor_framework_compatibility_matrix_legacy.xml \
    hardware/samsung/vintf/samsung_framework_compatibility_matrix.xml \
    vendor/lineage/config/device_framework_matrix.xml

DEVICE_MANIFEST_FILE := \
    $(COMMON_PATH)/vintf/manifest_lahaina.xml

DEVICE_MATRIX_FILE := \
    hardware/qcom-caf/common/compatibility_matrix.xml

# Kernel
BOARD_BOOT_HEADER_VERSION := 3
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := \
  androidboot.hardware=qcom \
  androidboot.memcg=1 \
  androidboot.selinux=permissive \
  androidboot.usbcontroller=a600000.dwc3 \
  cgroup.memory=nokmem,nosocket \
  console=null \
  cpuinfo.chipname=SM8350 panic=4 \
  firmware_class.path=/vendor/firmware_mnt/image \
  loop.max_part=7 \
  lpm_levels.sleep_disabled=1 \
  msm_rtb.filter=0x237 \
  printk.devkmsg=on pcie_ports=compat \
  service_locator.enable=1 \
  swiotlb=2048

BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_MKBOOTIMG_ARGS := --header_version $(BOARD_BOOT_HEADER_VERSION) --pagesize $(BOARD_KERNEL_PAGESIZE)

TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/samsung/sm8350
TARGET_KERNEL_VERSION := 5.4

# Kernel Modules
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(BOOT_KERNEL_MODULES)
BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD := $(strip $(shell cat $(COMMON_PATH)/modules.load.recovery))

# Platform
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := lahaina

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# Get non-open-source specific aspects
include vendor/samsung/sm8350-common/BoardConfigVendor.mk
