#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

COMMON_PATH := device/samsung/sm8350-common

# Add common definitions for Qualcomm
$(call inherit-product, hardware/qcom-caf/common/common.mk)

# Fastboot
PRODUCT_PACKAGES += \
    fastbootd

# Init files and fstab
PRODUCT_PACKAGES += \
    fstab.ramplus \
    init.audio.samsung.rc \
    init.fingerprint.rc \
    init.nfc.samsung.rc \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.qti.kernel.rc \
    init.ramplus.rc \
    init.samsung.bsp.rc \
    init.samsung.display.rc \
    init.samsung.rc \
    init.target.rc \
    init.vendor.rilcommon.rc \
    init.vendor.sensors.rc \
    ueventd.qcom.rc \
    vendor.samsung.rilchip.qcom.rc

# Vendor scripts
PRODUCT_PACKAGES += \
    init.class_main.sh \
    init.kernel.post_boot.sh \
    init.kernel.post_boot-lahaina.sh \
    init.qcom.class_core.sh \
    init.qcom.early_boot.sh \
    init.qcom.post_boot.sh \
    init.qcom.sh \
    init.qti.kernel.sh \
    vendor_modprobe.sh \
    init.qti.chg_policy.sh \
    init.qti.qcv.sh \
    init.qcom.usb.sh

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/rootdir/etc/fstab.default:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.default\
    $(COMMON_PATH)/rootdir/etc/fstab.default:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.default

# Kernel
PRODUCT_ENABLE_UFFD_GC := false

# No A/B
AB_OTA_UPDATER := false

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

PRODUCT_PACKAGES += \
    CarrierConfigResCommon \
    FrameworksResCommon \
    FrameworksResTarget \
    LahainaFrameworks \
    LahainaSettings \
    LahainaSystemUI \
    SystemUIResCommon \
    TelephonyResCommon \
    WifiResCommon \
    WifiResCommon \
    WifiResTarget


# Namespaces
PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Recovery
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/recovery/root/init.recovery.qcom.rc:root/init.recovery.qcom.rc

# QTI
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/permissions/privapp-permissions-qti.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-qti.xml \
    $(LOCAL_PATH)/configs/permissions/qti_whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/qti_whitelist.xml

# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-6144-dalvik-heap.mk)

# Storage
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# VNDK
BOARD_SHIPPING_API_LEVEL := 30
PRODUCT_SHIPPING_API_LEVEL := $(BOARD_SHIPPING_API_LEVEL)
