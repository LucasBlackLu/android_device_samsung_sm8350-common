#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

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

# No A/B
AB_OTA_UPDATER := false

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 30
