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

PRODUCT_PACKAGES += \
    init.samsung.bsp.rc \
    init.samsung.connector.rc \
    init.samsung.display.rc \
    init.samsung.rc

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

# VNDK
BOARD_SHIPPING_API_LEVEL := 30
PRODUCT_SHIPPING_API_LEVEL := $(BOARD_SHIPPING_API_LEVEL)
