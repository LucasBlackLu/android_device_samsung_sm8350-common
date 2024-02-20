#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

COMMON_PATH := device/samsung/sm8350-common

# DebugFS
PRODUCT_SET_DEBUGFS_RESTRICTIONS := true

# Init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init/fstab.default:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.default

PRODUCT_PACKAGES += \
    fstab.default \
    fstab.default.vendor_ramdisk \
    fstab.ramplus \
    init.qcom.rc \
    init.qti.kernel.rc \
    init.qti.qcv.rc \
    init.ramplus.rc \
    init.samsung.bsp.rc \
    init.samsung.display.rc \
    init.samsung.connector.rc \
    init.samsung.firmware.rc \
    init.sensors.spu.rc \
    init.samsung.rc \
    init.target.rc \
	init.vendor.rilcommon.rc \
    ueventd.qcom.rc \
    init.class_main.sh \
    init.kernel.post_boot.sh \
    init.kernel.post_boot-lahaina.sh \
    init.qcom.class_core.sh \
    init.qcom.early_boot.sh \
    init.qcom.post_boot.sh \
    init.qcom.sh \
    init.qti.kernel.sh \
    init.qti.qcv.sh \
    vendor_modprobe.sh \
    vendor.samsung.rilchip.qcom.rc

# Fastboot
PRODUCT_PACKAGES += \
    fastbootd

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

# QTI
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/permissions/privapp-permissions-qti.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-qti.xml \
    $(LOCAL_PATH)/configs/permissions/qti_whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/qti_whitelist.xml

# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-6144-dalvik-heap.mk)

# Storage
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Recovery
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/recovery/root/init.recovery.qcom.rc:root/init.recovery.qcom.rc

# VNDK
BOARD_SHIPPING_API_LEVEL := 30
PRODUCT_SHIPPING_API_LEVEL := $(BOARD_SHIPPING_API_LEVEL)
