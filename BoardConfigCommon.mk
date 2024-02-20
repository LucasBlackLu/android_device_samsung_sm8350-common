#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

COMMON_PATH := device/samsung/sm8350-common

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := cortex-a76

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a76

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := lahaina
TARGET_NO_BOOTLOADER := true

# Kernel config
BOARD_KERNEL_BINARIES := kernel
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200n8 androidboot.hardware=qcom
BOARD_KERNEL_CMDLINE += androidboot.console=ttyMSM0 androidboot.memcg=1
BOARD_KERNEL_CMDLINE += lpm_levels.sleep_disabled=1
BOARD_KERNEL_CMDLINE += msm_rtb.filter=0x237 service_locator.enable=1
BOARD_KERNEL_CMDLINE += androidboot.usbcontroller=a600000.dwc3 swiotlb=0
BOARD_KERNEL_CMDLINE += loop.max_part=7 cgroup.memory=nokmem,nosocket
BOARD_KERNEL_CMDLINE += pcie_ports=compat loop.max_part=7
BOARD_KERNEL_CMDLINE += iptable_raw.raw_before_defrag=1
BOARD_KERNEL_CMDLINE += ip6table_raw.raw_before_defrag=1
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_MKBOOTIMG_ARGS := --header_version 3
KERNEL_LD := LD=ld.lld
TARGET_KERNEL_ADDITIONAL_FLAGS := DTC_EXT=$(shell pwd)/prebuilts/misc/linux-x86/dtc/dtc
TARGET_KERNEL_APPEND_DTB := false
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/samsung/sm8350

# File systems
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE   := f2fs
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE     := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE     := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE    := ext4
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE        := ext4
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE      := ext4

TARGET_USERIMAGES_USE_F2FS           := true
TARGET_USERIMAGES_USE_EXT4           := true

TARGET_FS_CONFIG_GEN := $(COMMON_PATH)/configs/config.fs

# Metadata
BOARD_USES_METADATA_PARTITION := true

# Partitions, obtained with blockdev --getsize64
BOARD_BOOTIMAGE_PARTITION_SIZE        := 100663296 #blockdev --getsize64 /dev/block/bootdevice/by-name/boot
BOARD_CACHEIMAGE_PARTITION_SIZE       := 629145600 #blockdev --getsize64 /dev/block/bootdevice/by-name/boot
BOARD_DTBOIMG_PARTITION_SIZE          := 25165824 #blockdev --getsize64 /dev/block/bootdevice/by-name/dtbo
BOARD_RECOVERYIMAGE_PARTITION_SIZE    := 81788928 #blockdev --getsize64 /dev/block/bootdevice/by-name/recovery
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 100663296 #blockdev --getsize64 /dev/block/bootdevice/by-name/vendor_boot

# Super Partitions, obtained with ls -l /dev/block/mapper, blockdev --getsize64 /dev/blockdev/dm-*
BOARD_SUPER_PARTITION_GROUPS                    := samsung_dynamic_partitions
BOARD_SUPER_PARTITION_SIZE                      := 12664700928 # 12067012608 ?
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE           := 12660506624 # BOARD_SUPER_PARTITION_SIZE-4MiB | 9649745920 ?
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_PARTITION_LIST := \
    system \
    system_ext \
    product \
    vendor \
    odm

BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)

# Out dirs
TARGET_COPY_OUT_ODM := odm
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
TARGET_COPY_OUT_VENDOR := vendor

# Platform
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := lahaina

# Recovery
BOARD_HAS_DOWNLOAD_MODE := true
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
BOARD_RECOVERY_MKBOOTIMG_ARGS += --header_version 2
TARGET_RECOVERY_FSTAB := $(COMMON_PATH)/init/fstab.default

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# VNDK
PRODUCT_VNDK_VERSION := current
