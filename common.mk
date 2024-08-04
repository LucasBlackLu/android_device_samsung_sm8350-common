#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

COMMON_PATH := device/samsung/sm8350-common

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/developer_gsi_keys.mk)

# Enable Scoped Storage related
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Declare as non AB device
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Add common definitions for Qualcomm
$(call soong_config_set,rfs,mpss_firmware_symlink_target,firmware_modem)
$(call inherit-product, hardware/qcom-caf/common/common.mk)

# A/B
AB_OTA_UPDATER := false
PRODUCT_SOONG_NAMESPACES += bootable/deprecated-ota

## Audio
PRODUCT_PACKAGES += \
    android.hardware.audio.service \
    android.hardware.audio.effect@7.0-impl \
    android.hardware.soundtrigger@2.2-impl \
    audio.r_submix.default \
    audio.usb.default

PRODUCT_PACKAGES += \
    libaudiopreprocessing \
    libbatterylistener \
    libcirrusspkrprot \
    libbundlewrapper \
    libreverbwrapper \
    libcomprcapture \
    libeffectproxy \
    libexthwplugin \
    libhdmiedid \
    libdownmix \
    libdynproc \
    libhfp \
    libldnhncr \
    libspkrprot \
    libsndmonitor \
    libvisualizer \
    liba2dpoffload \
    libtinycompress \
    libvolumelistener \

PRODUCT_PACKAGES += \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \

PRODUCT_PACKAGES += \
    SamsungDAP

## Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl:64 \
    android.hardware.bluetooth@1.0-service \
    libbt-vendor:64

## Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider-service.samsung

## ConfigStore
PRODUCT_PACKAGES += \
    disable_configstore

## Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.mapper@3.0-impl-qti-display \
    android.hardware.graphics.mapper@4.0-impl-qti-display \
    vendor.qti.hardware.display.allocator-service \
    vendor.qti.hardware.display.composer-service \

PRODUCT_PACKAGES += \
    vendor.qti.hardware.memtrack-service

PRODUCT_PACKAGES += \
    AdvancedDisplay

## DRM
PRODUCT_PACKAGES += \
    android.hardware.drm-service.clearkey \
    libdrmclearkeyplugin

## Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.gatekeeper@1.0-service

## Health
PRODUCT_PACKAGES += \
    android.hardware.health-service.samsung \
    android.hardware.health-service.samsung-recovery

## Init
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.class_main.sh \
    init.mdm.sh \
    init.qcom.class_core.sh \
    init.qcom.coex.sh \
    init.qcom.early_boot.sh \
    init.qcom.efs.sync.sh \
    init.qcom.post_boot.sh \
    init.qcom.sh \
    init.qcom.usb.sh \
    init.qti.display_boot.sh \
    init.qti.qcv.sh

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.rc \
    init.qti.display_boot.rc \
    init.recovery.qcom.rc \
    init.samsung.bsp.rc \
    init.samsung.rc \
    init.target.rc \
    init.vendor.rilcommon.rc \
    ueventd.qcom.rc \
    wifi_brcm.rc \
    wifi_sm8350.rc

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/init/etc/fstab.qcom:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.qcom \
    $(COMMON_PATH)/init/etc/fstab.qcom:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/fstab.qcom

# Kernel
PRODUCT_ENABLE_UFFD_GC := true
PRODUCT_SET_DEBUGFS_RESTRICTIONS := true

# Media
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/media/media_codecs_blair.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_lahaina.xml \
    $(COMMON_PATH)/media/media_codecs_performance_blair.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance_lahaina.xml

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

PRODUCT_PACKAGES += \
    vendor_bt_firmware_mountpoint \
    vendor_dsp_mountpoint \
    vendor_firmware_mnt_mountpoint

## Keymaster
$(call soong_config_set,samsungVars,target_keymaster4_library,//vendor/samsung/sm8350-common:libpuresoftkeymasterdevice)

PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.0-service.samsung

## Overlays
DEVICE_PACKAGE_OVERLAYS += $(COMMON_PATH)/overlay
PRODUCT_ENFORCE_RRO_TARGETS += *

## Power
PRODUCT_PACKAGES += \
    android.hardware.power-service.pixel-libperfmgr


PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/powerhint.json:$(TARGET_COPY_OUT_VENDOR)/etc/powerhint.json

## Protobuf
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full-3.9.1-vendorcompat

## RIL
PRODUCT_PACKAGES += \
    secril_config_svc \
    sehradiomanager

## Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors-service.samsung-multihal

PRODUCT_PACKAGES += \
    init.vendor.sensors.rc \

## SOONG namespaces
PRODUCT_SOONG_NAMESPACES += \
    vendor/qcom/opensource/usb/etc \
    hardware/google/interfaces \
    hardware/google/pixel \
    hardware/samsung \
    $(COMMON_PATH) \

## Tether
PRODUCT_PACKAGES += \
    ipacm \
    IPACM_cfg.xml

## USB
PRODUCT_PACKAGES += \
    android.hardware.usb-service.qti \

PRODUCT_PACKAGES += \
    init.qcom.usb.rc \
    init.qcom.usb.sh

## Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator-service.samsung

# Recovery
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/recovery/root/init.recovery.qcom.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.qcom.rc

# Shipping API
BOARD_SHIPPING_API_LEVEL := 33
PRODUCT_SHIPPING_API_LEVEL := $(BOARD_SHIPPING_API_LEVEL)

## Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal-service.pixel \
    thermal_symlinks

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/thermal/thermal_info_config.json:$(TARGET_COPY_OUT_VENDOR)/etc/thermal_info_config.json

# WiFi
PRODUCT_PACKAGES += \
    android.hardware.wifi-service \
    libwifi-hal-ctrl \
    libwifi-hal-qcom \
    wpa_supplicant \
    wpa_supplicant.conf \
    hostapd

PRODUCT_PACKAGES += \
    WifiOverlay

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(COMMON_PATH)/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
    $(COMMON_PATH)/wifi/wpa_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant.conf

# Get non-open-source specific aspects
$(call inherit-product, vendor/samsung/sm8350-common/sm8350-common-vendor.mk)
