#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable Dalvik
$(call inherit-product, frameworks/native/build/phone-xhdpi-6144-dalvik-heap.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init/fstab.default:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.default \
    $(LOCAL_PATH)/init/fstab.default:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.default

PRODUCT_PACKAGES += \
    fstab.default \
    fstab.ramplus \
    init.audio.samsung.rc \
    init.fingerprint.rc \
    init.nfc.samsung.rc \
    init.qcom.rc \
    init.qti.kernel.rc \
    init.ramplus.rc \
    init.recovery.qcom.rc \
    init.recovery.samsung.rc \
    init.samsung.bsp.rc \
    init.samsung.display.rc \
    init.samsung.rc \
    init.target.rc \
    init.vendor.rilcommon.rc \
    init.vendor.sensors.rc \
    ueventd.qcom.rc \
    init.class_main.sh \
    init.kernel.post_boot.sh \
    init.kernel.post_boot-lahaina.sh \
    init.qcom.class_core.sh \
    init.qcom.early_boot.sh \
    init.qcom.post_boot.sh \
    init.qcom.sh \
    init.qcom.usb.sh \
    init.qti.chg_policy.sh \
    init.qti.kernel.sh \
    init.qti.media.sh \
    init.qti.qcv.sh \
    vendor_modprobe.sh

# No A/B
AB_OTA_UPDATER := false

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

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 30
