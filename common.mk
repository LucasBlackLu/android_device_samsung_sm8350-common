#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

COMMON_PATH := device/samsung/sm8350-common

# Enable Dalvik
$(call inherit-product, frameworks/native/build/phone-xhdpi-6144-dalvik-heap.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Recovery
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/recovery/root/init.recovery.qcom.rc:root/init.recovery.qcom.rc

# Rootdir
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.default:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.default \
    $(LOCAL_PATH)/rootdir/fstab.default:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.default

PRODUCT_PACKAGES += \
    fstab.default \
    fstab.ramplus \
    init.qcom.rc \
    init.qti.kernel.rc \
	init.qti.media.rc \
    init.ramplus.rc \
    init.samsung.bsp.rc \
    init.samsung.display.rc \
    init.samsung.connector.rc \
    init.samsung.rc \
    init.target.rc \
	init.vendor.rilchip.rc \
	init.vendor.rilcommon.rc \
	init.vendor.sensors.rc \
    ueventd.qcom.rc \
	wifi_brcm.rc \
    wifi_sec.rc \
    init.class_main.sh \
	init.kernel.post_boot.sh \
	init.kernel.post_boot-lahaina.sh \
	init.qcom.class_core.sh \
    init.qcom.early_boot.sh \
    init.qcom.post_boot.sh \
	init.qti.chg_policy.sh \
    init.qcom.sh \
    init.qcom.usb.sh \
    init.qti.kernel.sh \
	init.qti.media.sh \
    init.qti.qcv.sh \
    vendor_modprobe.sh

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 30
