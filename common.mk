#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/developer_gsi_keys.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)

COMMON_PATH := device/samsung/sm8350-common

# AID
PRODUCT_PACKAGES += \
    fs_config_files \

# ANT+
PRODUCT_PACKAGES += \
    AntHalService-Soong \

# API
PRODUCT_CHARACTERISTICS := nosdcard
PRODUCT_SHIPPING_API_LEVEL := 30

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.se.omapi.ese.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.se.omapi.ese.xml \
    frameworks/native/data/etc/android.hardware.se.omapi.sd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.se.omapi.sd.xml \
    frameworks/native/data/etc/android.hardware.se.omapi.uicc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.se.omapi.uicc.xml \

# Atrace
PRODUCT_PACKAGES += \
    android.hardware.atrace@1.0-service \

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@6.0-impl \
    android.hardware.audio.effect@6.0-impl \
    android.hardware.audio.common-util \
    android.hardware.audio.common-util.vendor \
    android.hardware.audio.service \
    android.hardware.bluetooth.audio@2.0-impl \
    android.hardware.soundtrigger@2.2-impl \
    audio.primary.default \
    audio.primary.lahaina:32 \
    audio.r_submix.default \
    audio.usb.default \
    cplay \
    libaudiofoundation \
    libaudioroute \
    libaudioutils \
    libtinyalsa \
    libtinycompress \
    tinycap \
    tinymix \
    tinypcminfo \
    tinyplay \

# Audio SoundFX
PRODUCT_PACKAGES += \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libvolumelistener:32 \

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/audio/dolby/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml \
    $(COMMON_PATH)/configs/audio/a2dpsink_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dpsink_audio_policy_configuration.xml \
    $(COMMON_PATH)/configs/audio/audio_effects.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.conf \
    $(COMMON_PATH)/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(COMMON_PATH)/configs/audio/audio_effects_common.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects_common.conf \
    $(COMMON_PATH)/configs/audio/audio_effects_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects_sec.xml \
    $(COMMON_PATH)/configs/audio/audio_effects_spatializer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects_spatializer.xml \
    $(COMMON_PATH)/configs/audio/audio_io_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_io_policy.conf \
    $(COMMON_PATH)/configs/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(COMMON_PATH)/configs/audio/audio_platform_info_diff.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_diff.xml \
    $(COMMON_PATH)/configs/audio/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_intcodec.xml \
    $(COMMON_PATH)/configs/audio/audio_platform_info_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_qrd.xml \
    $(COMMON_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(COMMON_PATH)/configs/audio/audio_policy_configuration_base.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration_base.xml \
    $(COMMON_PATH)/configs/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(COMMON_PATH)/configs/audio/audio_tuning_mixer.txt:$(TARGET_COPY_OUT_VENDOR)/etc/audio_tuning_mixer.txt \
    $(COMMON_PATH)/configs/audio/dax3_media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dax3_media_codecs_dolby_audio.xml \
    $(COMMON_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(COMMON_PATH)/configs/audio/mixer_paths_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd.xml \
    $(COMMON_PATH)/configs/audio/mixer_paths_qrdsku1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrdsku1.xml \
    $(COMMON_PATH)/configs/audio/mixer_paths_usbc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_usbc.xml \
    $(COMMON_PATH)/configs/audio/mixer_usb_default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_usb_default.xml \
    $(COMMON_PATH)/configs/audio/mixer_usb_gray.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_usb_gray.xml \
    $(COMMON_PATH)/configs/audio/sec_audio_volume_curve.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sec_audio_volume_curve.xml \
    $(COMMON_PATH)/configs/audio/situation_audio_policy_volumes_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/situation_audio_policy_volumes_sec.xml \
    $(COMMON_PATH)/configs/audio/SoundBoosterParam.txt:$(TARGET_COPY_OUT_VENDOR)/etc/SoundBoosterParam.txt \
    $(COMMON_PATH)/configs/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml \
    $(COMMON_PATH)/configs/audio/sound_trigger_mixer_paths_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_qrd.xml \
    $(COMMON_PATH)/configs/audio/sound_trigger_mixer_paths_qrdsku1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_qrdsku1.xml \
    $(COMMON_PATH)/configs/audio/sound_trigger_mixer_paths_usbc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_usbc.xml \
    $(COMMON_PATH)/configs/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml \

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/hearing_aid_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/hearing_aid_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.audio.pro.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.pro.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml \

# Automotive/Gearhead
PRODUCT_PACKAGES += \
    android.hardware.automotive.vehicle@2.0 \
    android.hardware.automotive.vehicle@2.0.vendor \
    android.hardware.automotive.vehicle@2.0-manager-lib \

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0 \
    android.hardware.bluetooth@1.0.vendor \
    aptxalsOverlay \
    audio.bluetooth.default \
    libbluetooth_audio_session \
    vendor.qti.hardware.bluetooth_audio@2.0.vendor \
    vendor.qti.hardware.btconfigstore@1.0.vendor \
    vendor.qti.hardware.btconfigstore@2.0.vendor \

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \

# Camera
PRODUCT_PACKAGES += \
    android.frameworks.cameraservice.common@2.0.vendor \
    android.frameworks.cameraservice.common-V1-ndk.vendor \
    android.frameworks.cameraservice.device@2.1.vendor \
    android.frameworks.cameraservice.device-V1-ndk.vendor \
    android.frameworks.cameraservice.service@2.2.vendor \
    android.hardware.camera.device@3.7.vendor \
    android.hardware.camera.device-V2-ndk.vendor \
    android.hardware.camera.provider@2.4-impl \
    android.hardware.camera.provider@2.4-service_64 \
    android.hardware.camera.provider@2.7.vendor \
    libcamera2ndk_vendor \
    libdng_sdk \
    libdng_sdk.vendor \
    libgui_vendor:32 \
    libgrallocusage.vendor \
    libstdc++ \
    libstdc++_vendor \
    vendor.qti.hardware.camera.device@1.0.vendor \
    vendor.qti.hardware.camera.postproc@1.0.vendor \

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml \

# CAS
PRODUCT_PACKAGES += \
    android.hardware.cas@1.2-service-lazy \

# Charger
PRODUCT_PACKAGES += \
    libsuspend \

# CNE
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/cne/mwqem.conf:$(TARGET_COPY_OUT_VENDOR)/etc/cne/mwqem.conf \
    $(COMMON_PATH)/configs/cne/profileMwqem.xml:$(TARGET_COPY_OUT_VENDOR)/etc/cne/profileMwqem.xml \

# Data
$(call inherit-product, vendor/qcom/opensource/dataservices/dataservices_vendor_product.mk)

# Display
PRODUCT_PACKAGES += \
    libdisplayconfig.qti \
    libdisplayconfig.system.qti \
    libmemutils \
    libqdMetaData \
    libqdMetaData.system \
    libsdmcore \
    libsdmutils \
    libtinyxml \
    memtrack.default \

PRODUCT_PACKAGES += \
    android.hardware.graphics.common-V1-ndk_platform.vendor \
    android.hardware.graphics.mapper@3.0-impl-qti-display \
    android.hardware.graphics.mapper@4.0-impl-qti-display \
    vendor.display.config@1.0 \
    vendor.display.config@1.15.vendor \
    vendor.display.config@2.0 \
    vendor.display.config@2.0.vendor \
    vendor.qti.hardware.capabilityconfigstore@1.0.vendor \
    vendor.qti.hardware.display.allocator-service \
    vendor.qti.hardware.display.composer-service \
    vendor.qti.hardware.display.mapper@1.1.vendor \
    vendor.qti.hardware.display.mapper@2.0.vendor \
    vendor.qti.hardware.display.mapper@3.0.vendor \
    vendor.qti.hardware.display.mapper@4.0.vendor \

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
    hardware/qcom-caf/sm8350/display/config/snapdragon_color_libs_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/snapdragon_color_libs_config.xml \

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm-service.clearkey \
    android.hardware.drm@1.3.vendor \

# Fasatboot
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd \

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.face@1.0 \
    android.hardware.biometrics.face@1.0.vendor \
    android.hardware.biometrics.fingerprint@2.1 \
    android.hardware.biometrics.fingerprint@2.1.vendor \

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml \

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.gatekeeper@1.0-service \

# GNSS/GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0 \
    android.hardware.gnss@1.1 \
    android.hardware.gnss@2.0 \
    android.hardware.gnss@2.1 \
    android.hardware.gnss@2.1.vendor \

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/gps/flp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/flp.conf \
    $(COMMON_PATH)/configs/gps/gnss_antenna_info.conf:$(TARGET_COPY_OUT_VENDOR)/etc/gnss_antenna_info.conf \
    $(COMMON_PATH)/configs/gps/gps.conf:$(TARGET_COPY_OUT_VENDOR)/etc/gps.conf \
    $(COMMON_PATH)/configs/gps/izat.conf:$(TARGET_COPY_OUT_VENDOR)/etc/izat.conf \
    $(COMMON_PATH)/configs/gps/lowi.conf:$(TARGET_COPY_OUT_VENDOR)/etc/lowi.conf \
    $(COMMON_PATH)/configs/gps/sap.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sap.conf \

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \

# Graphics
PRODUCT_PACKAGES += \
    libion \
    libvulkan \

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service \

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.base@1.0.vendor \
    libhidltransport \
    libhidltransport.vendor \
    libhwbinder \
    libhwbinder.vendor \

# IPACM
PRODUCT_PACKAGES += \
    ipacm \
    IPACM_cfg.xml \
    libipanat \
    liboffloadhal \

# Kernel
PRODUCT_ENABLE_UFFD_GC := false

# Keylayouts
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl \

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.0-service.samsung \
    libkeymaster4_1support.vendor \

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl \
    android.hardware.light@2.0-service \
    lights.qcom \

# Media
PRODUCT_PACKAGES += \
    libavservices_minijail \
    libavservices_minijail.vendor \
    libavservices_minijail_vendor \
    libcodec2_hidl@1.0 \
    libcodec2_hidl@1.0.vendor \
    libcodec2_hidl@1.1 \
    libcodec2_hidl@1.1.vendor \
    libcodec2_vndk \
    libcodec2_vndk.vendor \
    libsfplugin_ccodec \

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(COMMON_PATH)/configs/media/media_codecs_c2_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2_sec.xml \
    $(COMMON_PATH)/configs/media/media_codecs_c2_sec_ape.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2_sec_ape.xml \
    $(COMMON_PATH)/configs/media/media_codecs_c2_sec_qcp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2_sec_qcp.xml \
    $(COMMON_PATH)/configs/media/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml \
    $(COMMON_PATH)/configs/media/media_codecs_lahaina.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_lahaina.xml \
    $(COMMON_PATH)/configs/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(COMMON_PATH)/configs/media/media_codecs_performance_lahaina.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance_lahaina.xml \
    $(COMMON_PATH)/configs/media/media_codecs_vendor_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor_audio.xml \
    $(COMMON_PATH)/configs/media/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles.xml \
    $(COMMON_PATH)/configs/media/media_profiles_lahaina.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_lahaina.xml \
    $(COMMON_PATH)/configs/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml \
    $(COMMON_PATH)/configs/media/media_profiles_vendor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_vendor.xml \

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml \

# Memtrack
PRODUCT_PACKAGES += \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \

# Net
PRODUCT_PACKAGES += \
    android.system.net.netd@1.0 \
    android.system.net.netd@1.1 \
    netutils-wrapper-1.0 \

# OMX
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxG711Enc \
    libOmxQcelp13Enc \
    libstagefright_softomx_plugin.vendor \
    libstagefright_softomx.vendor \
    libstagefrighthw \

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    device/samsung/qcom-common/overlay \
    $(COMMON_PATH)/overlay \
    $(COMMON_PATH)/overlay-lineage \

PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Perf
PRODUCT_PACKAGES += \
    vendor.qti.hardware.perf@2.2 \
    vendor.qti.hardware.perf@2.2.vendor \

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/perf/commonresourceconfigs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/perf/commonresourceconfigs.xml \
    $(COMMON_PATH)/configs/perf/commonsysnodesconfigs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/perf/commonsysnodesconfigs.xml \
    $(COMMON_PATH)/configs/perf/perfboostsconfig.xml:$(TARGET_COPY_OUT_VENDOR)/etc/perf/perfboostsconfig.xml \
    $(COMMON_PATH)/configs/perf/perfconfigstore.xml:$(TARGET_COPY_OUT_VENDOR)/etc/perf/perfconfigstore.xml \
    $(COMMON_PATH)/configs/perf/targetconfig.xml:$(TARGET_COPY_OUT_VENDOR)/etc/perf/targetconfig.xml \
    $(COMMON_PATH)/configs/perf/targetresourceconfigs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/perf/targetresourceconfigs.xml \

# Power
PRODUCT_PACKAGES += \
    android.hardware.power-service-qti.sm8350 \
    android.hardware.power.stats@1.0-service.mock \
    android.hardware.power@1.3.vendor \

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/power/powerhint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/powerhint.xml \

# Protobuf
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full-3.9.1-vendorcompat \
    libprotobuf-cpp-lite-3.9.1-vendorcompat \

# Public Libraries
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt \

# QMI
TARGET_FWK_SUPPORTS_FULL_VALUEADDS := true

PRODUCT_PACKAGES += \
    libjson \
    libqti_vndfwk_detect \
    libqti_vndfwk_detect.vendor \
    libvndfwk_detect_jni.qti \
    libvndfwk_detect_jni.qti.vendor \

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(COMMON_PATH)/configs/qmi,$(TARGET_COPY_OUT_VENDOR)/etc/) \
    system/core/libprocessgroup/profiles/cgroups_30.json:$(TARGET_COPY_OUT_VENDOR)/etc/cgroups.json \
    system/core/libprocessgroup/profiles/task_profiles_30.json:$(TARGET_COPY_OUT_VENDOR)/etc/task_profiles.json \

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    fstab.qcom_ramdisk \
    fstab.ramplus \
    fingerprint_common.rc \
    init.fingerprint.rc \
    init.qcom.factory.rc \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.qti.display_boot.rc \
    init.qti.kernel.rc \
    init.qti.media.rc \
    init.ramplus.rc \
    init.samsung.bsp.rc \
    init.samsung.display.rc \
    init.samsung.connector.rc \
    init.samsung.rc \
    init.target.rc \
    init.vendor.rilcommon.rc \
    init.vendor.sensors.rc \
    init.vendor.sysfw.rc \
    ueventd.qcom.rc \
    vendor.qti.diag.rc \
    vendor.samsung.rilchip.qcom.rc \
    vendor.sensors.qti.rc \
    vendor.sensors.sscrpcd.rc \
    wifi_brcm.rc \
    wifi_sm8350.rc \

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/rootdir/vendor/etc/fstab.qcom:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.qcom \

# Ramdisk Scripts
PRODUCT_PACKAGES += \
    init.class_main.sh \
    init.crda.sh \
    init.kernel.post_boot.sh \
    init.kernel.post_boot-lahaina.sh \
    init.mdm.sh \
    init.qcom.class_core.sh \
    init.qcom.coex.sh \
    init.qcom.early_boot.sh \
    init.qcom.efs.sync.sh \
    init.qcom.post_boot.sh \
    init.qcom.sdio.sh \
    init.qcom.sensors.sh \
    init.qcom.sh \
    init.qcom.usb.sh \
    init.qti.chg_policy.sh \
    init.qti.display_boot.sh \
    init.qti.kernel.sh \
    init.qti.media.sh \
    init.qti.qcv.sh \
    qca6234-service.sh \
    vendor_modprobe.sh \

# Recovery
PRODUCT_PACKAGES += \
    init.recovery.qcom.rc \

# RIL
PRODUCT_PACKAGES += \
    android.hardware.radio@1.5.vendor \
    android.hardware.radio.config@1.2.vendor \
    android.hardware.radio.config-V1-ndk.vendor:64 \
    android.hardware.radio.data-V1-ndk.vendor:64 \
    android.hardware.radio.deprecated@1.0.vendor \
    android.hardware.radio.messaging-V1-ndk.vendor:64 \
    android.hardware.radio.modem-V1-ndk.vendor:64 \
    android.hardware.radio.network-V1-ndk.vendor:64 \
    android.hardware.radio.sim-V1-ndk.vendor:64 \
    android.hardware.radio.voice-V1-ndk.vendor:64 \
    android.hardware.secure_element@1.0.vendor \
    librilutils \
    libxml2 \

# SamsungAdvancedDisplay
PRODUCT_PACKAGES += \
    AdvancedDisplay \

# SamsungDAP
PRODUCT_PACKAGES += \
    SamsungDAP \

# SamsungDoze
PRODUCT_PACKAGES += \
    SamsungDoze \

# Seccomp Policy
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(COMMON_PATH)/configs/seccomp_policy,$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy) \

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors-service.samsung-multihal \
    libsensorndkbridge \
    sensors.samsung \

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf \
    $(COMMON_PATH)/configs/sensors/sns_reg_config:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sns_reg_config \

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepdetector.xml \

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(COMMON_PATH) \

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext \

PRODUCT_BOOT_JARS += \
    telephony-ext \

# WiFi
PRODUCT_PACKAGES += \
    TetheringConfigOverlay \
    WifiOverlay \

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/wifi/aoa_cldb_falcon.bin:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/aoa_cldb_falcon.bin \
    $(COMMON_PATH)/configs/wifi/aoa_cldb_swl14.bin:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/aoa_cldb_swl14.bin \
    $(COMMON_PATH)/configs/wifi/indoorchannel.info:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/indoorchannel.info \
    $(COMMON_PATH)/configs/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(COMMON_PATH)/configs/wifi/wpa_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant.conf \
    $(COMMON_PATH)/configs/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \

# Get non-open-source specific aspects
$(call inherit-product, vendor/samsung/sm8350-common/sm8350-common-vendor.mk)
