#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# DebugFS
PRODUCT_SET_DEBUGFS_RESTRICTIONS := true

# Init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init/fstab.default:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.default

PRODUCT_PACKAGES += \
    fstab.default \
    fstab.default.vendor_ramdisk \
    init.class_main.sh \
    init.qcom.early_boot.sh \
    init.qcom.rc \
    init.qcom.sh \
    init.recovery.qcom.rc \
    init.target.rc \
    ueventd.qcom.rc \
    ueventd-odm.rc

PRODUCT_PACKAGES += \
    init.samsung.bsp.rc \
    init.samsung.connector.rc \
    init.samsung.display.rc \
    init.samsung.firmware.rc \
    init.samsung.rc \
    init.sensors.spu.rc

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

# VNDK
BOARD_SHIPPING_API_LEVEL := 30
PRODUCT_SHIPPING_API_LEVEL := $(BOARD_SHIPPING_API_LEVEL)
