#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

COMMON_PATH := device/samsung/sm8350-common

# DebugFS
PRODUCT_SET_DEBUGFS_RESTRICTIONS := true

# Init
PRODUCT_PACKAGES += \
    fingerprint_common.rc \
    fstab.qcom \
    fstab.ramplus \
    init.audio.samsung.rc \
    init.fingerprint.rc \
    init.nfc.samsung.rc \
    init.qcom.factory.rc \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.qti.display_boot.rc \
    init.recovery.qcom.rc \
    init.samsung.bsp.rc \
    init.samsung.display.rc \
    init.samsung.connector.rc \
    init.samsung.rc \
    init.target.rc \
    init.vendor.rilcommon.rc \
    init.vendor.sysfw.rc \
    ueventd.qcom.rc \
    vendor.samsung.rilchip.qcom.rc

PRODUCT_PACKAGES += \
    init.class_main.sh \
    init.crda.sh \
    init.qcom.coex.sh \
    init.qcom.early_boot.sh \
    init.qcom.efs.sync.sh \
    init.qcom.sdio.sh \
    init.qcom.sh \
    init.qcom.usb.sh \
    init.qti.display_boot.sh \
    qca6234-service.sh

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/init/etc/fstab.qcom:$(TARGET_COPY_OUT_RAMDISK)/fstab.qcom \
    $(COMMON_PATH)/init/etc/fstab.qcom:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.qcom

# Kernel
PRODUCT_ENABLE_UFFD_GC := false

# Partitions
$(call inherit-product, hardware/qcom-caf/common/common.mk)
$(call soong_config_set,rfs,mpss_firmware_symlink_target,firmware_modem)

PRODUCT_USE_DYNAMIC_PARTITIONS := true

PRODUCT_PACKAGES += \
    vendor_dsp_mountpoint \
    vendor_firmware_mnt_mountpoint \
    vendor_firmware-modem_mountpoint

# Ramdisk
$(call inherit-product, $(SRC_TARGET_DIR)/product/developer_gsi_keys.mk)

# Recovery
PRODUCT_PACKAGES += \
    init.recovery.qcom.rc

# Shipping API
BOARD_SHIPPING_API_LEVEL := 30
PRODUCT_SHIPPING_API_LEVEL := $(BOARD_SHIPPING_API_LEVEL)

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(COMMON_PATH) \
    hardware/samsung

# Get non-open-source specific aspects
$(call inherit-product, vendor/samsung/sm8350-common/sm8350-common-vendor.mk)
