#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

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

# DRM
TARGET_ENABLE_MEDIADRM_64 := true

# Dexpreopt
BOARD_USES_SYSTEM_OTHER_ODEX := true

# Kernel config
TARGET_KERNEL_SOURCE        := kernel/samsung/sm8350
TARGET_KERNEL_ARCH          := arm64
TARGET_KERNEL_HEADER_ARCH   := arm64
TARGET_LINUX_KERNEL_VERSION := 5.4

# Kernel flags
BOARD_BOOT_HEADER_VERSION := 3
BOARD_KERNEL_CMDLINE += console=null androidboot.hardware=qcom \
BOARD_KERNEL_CMDLINE += androidboot.memcg=1 lpm_levels.sleep_disabled=1 \ 
BOARD_KERNEL_CMDLINE += msm_rtb.filter=0x237 service_locator.enable=1 \
BOARD_KERNEL_CMDLINE += androidboot.usbcontroller=a600000.dwc3 \
BOARD_KERNEL_CMDLINE += swiotlb=2048 loop.max_part=7 \
BOARD_KERNEL_CMDLINE += cgroup.memory=nokmem,nosocket \
BOARD_KERNEL_CMDLINE += firmware_class.path=/vendor/firmware_mnt/image \
BOARD_KERNEL_CMDLINE += printk.devkmsg=on pcie_ports=compat \
BOARD_KERNEL_CMDLINE += cpuinfo.chipname=SM8350 panic=4 \
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

BOARD_DTB_OFFSET             := 0x01f00000
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_KERNEL_BASE            := 0x00000000
BOARD_KERNEL_IMAGE_NAME      := Image
BOARD_KERNEL_OFFSET          := 0x00008000
BOARD_KERNEL_PAGESIZE        := 4096
BOARD_KERNEL_SEPARATED_DTBO  := true
BOARD_KERNEL_TAGS_OFFSET     := 0x01e00000
BOARD_RAMDISK_OFFSET         := 0x02000000
BOARD_RAMDISK_USE_LZ4        := true

# Kernel: mkbootimgs args
BOARD_CUSTOM_BOOTIMG := true
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --board $(BOARD_NAME)
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)

# File systems
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE   := f2fs
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE      := ext4
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE        := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE    := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE     := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE     := ext4

TARGET_USERIMAGES_USE_F2FS           := true
TARGET_USERIMAGES_USE_EXT4           := true

# Additional root folders
TARGET_FS_CONFIG_GEN := $(COMMON_PATH)/configs/config.fs

BOARD_ROOT_EXTRA_FOLDERS := \
    efs

# Metadata
BOARD_USES_METADATA_PARTITION := true

# Init
TARGET_INIT_VENDOR_LIB := //$(COMMON_PATH):libinit_sm8350
TARGET_RECOVERY_DEVICE_MODULES := libinit_sm8350

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
    product \
    vendor \
    odm

BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)

# Out dirs
TARGET_COPY_OUT_ODM := odm
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_VENDOR := vendor

# Platform
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := lahaina

# Recovery
BOARD_HAS_DOWNLOAD_MODE := true
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_NO_RECOVERY := false
TARGET_RECOVERY_FSTAB := $(COMMON_PATH)/recovery/root/fstab.default
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_USERIMAGES_SPARSE_F2FS_DISABLED := false
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USES_MKE2FS := true

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3

# Enable chain partition for recovery.
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# VNDK
PRODUCT_VNDK_VERSION := current
