#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# No A/B
AB_OTA_UPDATER := false

# Fastboot
PRODUCT_PACKAGES += \
    fastbootd

# Init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init/fstab.default:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.default \
    $(LOCAL_PATH)/init/fstab.default:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.default

PRODUCT_PACKAGES += \
    fstab.default \
    init.class_main.sh \
    init.qcom.early_boot.sh \
    init.qcom.rc \
    init.qcom.sh \
    init.recovery.qcom.rc \
    init.target.rc \
    ueventd.qcom.rc

PRODUCT_PACKAGES += \
    init.samsung.bsp.rc \
    init.samsung.connector.rc \
    init.samsung.display.rc \
    init.samsung.rc

# Namespaces
PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

PRODUCT_PACKAGES += \
    CarrierConfigResCommon \
    FrameworksResCommon \
    FrameworksResTarget \
    SystemUIResCommon \
    TelecommResCommon \
    TelephonyResCommon \
    WifiResCommon \
    WifiResTarget

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# QTI
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/permissions/privapp-permissions-qti.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-qti.xml \
    $(LOCAL_PATH)/configs/permissions/qti_whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/qti_whitelist.xml

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 30
