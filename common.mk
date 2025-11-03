#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

COMMON_PATH := device/samsung/sm8350-common

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@6.0-impl.samsung-sm8350 \
    android.hardware.audio.common-util.vendor \
    android.hardware.audio.effect@6.0-impl \
    android.hardware.audio.service \
    android.hardware.bluetooth.audio-impl \
    android.hardware.soundtrigger@2.3-impl \
    audio.primary.lahaina:32 \
    audio.r_submix.default \
    audio.usb.default \
    liba2dpoffload \
    libaudiofoundation \
    libaudiopreprocessing \
    libaudioroute \
    libaudioutils \
    libbatterylistener \
    libbundlewrapper \
    libcirrusspkrprot \
    libcomprcapture \
    libdownmix \
    libdynproc \
    libeffectproxy \
    libexthwplugin \
    libhdmiedid \
    libhfp \
    libldnhncr \
    libreverbwrapper \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libsndmonitor \
    libspkrprot \
    libtinyalsa \
    libtinycompress \
    libvisualizer \
    libvolumelistener \
    sound_trigger.primary.lahaina:32 \
    tinycap \
    tinymix \
    tinypcminfo \
    tinyplay

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/audio/configs/dolby/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml \
    $(COMMON_PATH)/audio/configs/a2dpsink_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dpsink_audio_policy_configuration.xml \
    $(COMMON_PATH)/audio/configs/audio_effects.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.conf \
    $(COMMON_PATH)/audio/configs/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(COMMON_PATH)/audio/configs/audio_effects_common.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects_common.conf \
    $(COMMON_PATH)/audio/configs/audio_effects_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects_sec.xml \
    $(COMMON_PATH)/audio/configs/audio_effects_spatializer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects_spatializer.xml \
    $(COMMON_PATH)/audio/configs/audio_io_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_io_policy.conf \
    $(COMMON_PATH)/audio/configs/audio_platform_info_hdk.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_hdk.xml \
    $(COMMON_PATH)/audio/configs/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(COMMON_PATH)/audio/configs/audio_platform_info_diff.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_diff.xml \
    $(COMMON_PATH)/audio/configs/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_intcodec.xml \
    $(COMMON_PATH)/audio/configs/audio_platform_info_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_qrd.xml \
    $(COMMON_PATH)/audio/configs/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(COMMON_PATH)/audio/configs/audio_policy_configuration_base.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration_base.xml \
    $(COMMON_PATH)/audio/configs/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(COMMON_PATH)/audio/configs/audio_tuning_mixer.txt:$(TARGET_COPY_OUT_VENDOR)/etc/audio_tuning_mixer.txt \
    $(COMMON_PATH)/audio/configs/dax3_media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dax3_media_codecs_dolby_audio.xml \
    $(COMMON_PATH)/audio/configs/mixer_paths_cdp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_cdp.xml \
    $(COMMON_PATH)/audio/configs/mixer_paths_hdk.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_hdk.xml \
    $(COMMON_PATH)/audio/configs/mixer_paths_hhg.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_hhg.xml \
    $(COMMON_PATH)/audio/configs/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(COMMON_PATH)/audio/configs/mixer_paths_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd.xml \
    $(COMMON_PATH)/audio/configs/mixer_paths_qrdsku1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrdsku1.xml \
    $(COMMON_PATH)/audio/configs/mixer_paths_usbc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_usbc.xml \
    $(COMMON_PATH)/audio/configs/mixer_usb_default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_usb_default.xml \
    $(COMMON_PATH)/audio/configs/mixer_usb_gray.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_usb_gray.xml \
    $(COMMON_PATH)/audio/configs/sec_audio_volume_curve.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sec_audio_volume_curve.xml \
    $(COMMON_PATH)/audio/configs/situation_audio_policy_volumes_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/situation_audio_policy_volumes_sec.xml \
    $(COMMON_PATH)/audio/configs/SoundBoosterParam.txt:$(TARGET_COPY_OUT_VENDOR)/etc/SoundBoosterParam.txt \
    $(COMMON_PATH)/audio/configs/sound_trigger_mixer_paths_cdp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_cdp.xml \
    $(COMMON_PATH)/audio/configs/sound_trigger_mixer_paths_hdk.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_hdk.xml \
    $(COMMON_PATH)/audio/configs/sound_trigger_mixer_paths_hhg.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_hhg.xml \
    $(COMMON_PATH)/audio/configs/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml \
    $(COMMON_PATH)/audio/configs/sound_trigger_mixer_paths_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_qrd.xml \
    $(COMMON_PATH)/audio/configs/sound_trigger_mixer_paths_qrdsku1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_qrdsku1.xml \
    $(COMMON_PATH)/audio/configs/sound_trigger_mixer_paths_usbc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_usbc.xml \
    $(COMMON_PATH)/audio/configs/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/hearing_aid_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/hearing_aid_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.audio.pro.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.pro.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml

TARGET_EXCLUDES_AUDIOFX := true

# Bluetooth
PRODUCT_PACKAGES += \
    audio.bluetooth.default \
    android.hardware.bluetooth.audio-impl \
    android.hardware.bluetooth@1.0.vendor

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml

# Camera
$(call soong_config_set,samsungCameraVars,extra_ids,54)
$(call soong_config_set,samsungCameraVars,needs_sec_reserved_field,true)

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml

# Cgroup and task_profiles
PRODUCT_COPY_FILES += \
    system/core/libprocessgroup/profiles/cgroups_30.json:$(TARGET_COPY_OUT_VENDOR)/etc/cgroups.json \
    system/core/libprocessgroup/profiles/task_profiles_30.json:$(TARGET_COPY_OUT_VENDOR)/etc/task_profiles.json

# Charger
PRODUCT_PACKAGES += \
    charger_res_images_vendor

# Configstore
PRODUCT_PACKAGES += \
    disable_configstore

# CAS
PRODUCT_PACKAGES += \
    android.hardware.cas@1.2-service-lazy

# Dalvik
$(call inherit-product, frameworks/native/build/phone-xhdpi-6144-dalvik-heap.mk)

# DebugFS
PRODUCT_SET_DEBUGFS_RESTRICTIONS := true

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.mapper@3.0-impl-qti-display \
    android.hardware.graphics.mapper@4.0-impl-qti-display \
    gralloc.default \
    init.qti.display_boot.rc \
    init.qti.display_boot.sh \
    libdisplayconfig.qti \
    libqdMetaData \
    libtinyxml \
    libtinyxml2 \
    vendor.display.config@2.0.vendor \
    vendor.qti.hardware.display.allocator-service \
    vendor.qti.hardware.display.composer-service \
    vendor.qti.hardware.display.mapper@1.1.vendor \
    vendor.qti.hardware.display.mapper@2.0.vendor \
    vendor.qti.hardware.display.mapper@3.0.vendor \
    vendor.qti.hardware.display.mapper@4.0.vendor \
    vendor.qti.hardware.memtrack-service

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm-service.clearkey

# Fastboot
PRODUCT_PACKAGES += \
    fastbootd

# Fastcharge
PRODUCT_PACKAGES += \
    vendor.lineage.fastcharge@1.0-service.samsung 

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.gatekeeper@1.0-service

# Graphics
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.vulkan.compute-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.compute-0.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level-1.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version-1_1.xml \
    frameworks/native/data/etc/android.software.opengles.deqp.level-2020-03-01.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.opengles.deqp.level.xml \
    frameworks/native/data/etc/android.software.vulkan.deqp.level-2020-03-01.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.vulkan.deqp.level.xml

# GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@2.1.vendor

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml

# Health
PRODUCT_PACKAGES += \
    android.hardware.health-service.samsung \
    android.hardware.health-service.samsung-recovery \
    android.hardware.health@2.1.vendor

# HotwordEnrollement
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/permissions/privapp-permissions-hotword.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-hotword.xml

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.allocator@1.0.vendor \
    android.hidl.base@1.0 \
    android.hidl.base@1.0.vendor \
    libhidltransport \
    libhidltransport.vendor \
    libhwbinder \
    libhwbinder.vendor

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
    init.vendor.sensors.rc \
    init.vendor.sysfw.rc \
    ueventd.qcom.rc \
    vendor.samsung.rilchip.qcom.rc

PRODUCT_PACKAGES += \
    init.class_main.sh \
    init.crda.sh \
    init.mdm.sh \
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

# IPACM
PRODUCT_PACKAGES += \
    ipacm \
    IPACM_cfg.xml

# Kernel
PRODUCT_ENABLE_UFFD_GC := false

# Keymaster
$(call soong_config_set,samsungVars,target_keymaster4_library,//vendor/samsung/sm8350-common:libskeymaster4device)

PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.0-service.samsung

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light-service.samsung

# Media
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/media/dolby/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml \
    $(COMMON_PATH)/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(COMMON_PATH)/media/media_codecs_c2_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2_sec.xml \
    $(COMMON_PATH)/media/media_codecs_c2_sec_ape.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2_sec_ape.xml \
    $(COMMON_PATH)/media/media_codecs_c2_sec_qcp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2_sec_qcp.xml \
    $(COMMON_PATH)/media/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml \
    $(COMMON_PATH)/media/media_codecs_lahaina.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_lahaina.xml \
    $(COMMON_PATH)/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(COMMON_PATH)/media/media_codecs_performance_lahaina.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance_lahaina.xml \
    $(COMMON_PATH)/media/media_codecs_performance_yupik_iot.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance_yupik_iot.xml \
    $(COMMON_PATH)/media/media_codecs_performance_yupik_v0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance_yupik_v0.xml \
    $(COMMON_PATH)/media/media_codecs_performance_yupik_v1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance_yupik_v1.xml \
    $(COMMON_PATH)/media/media_codecs_vendor_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor_audio.xml \
    $(COMMON_PATH)/media/media_codecs_yupik_iot.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_yupik_iot.xml \
    $(COMMON_PATH)/media/media_codecs_yupik_iot.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_yupik_iot.xml \
    $(COMMON_PATH)/media/media_codecs_yupik_v0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_yupik_v0.xml \
    $(COMMON_PATH)/media/media_codecs_yupik_v0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_yupik_v0.xml \
    $(COMMON_PATH)/media/media_codecs_yupik_v1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_yupik_v1.xml \
    $(COMMON_PATH)/media/media_codecs_yupik_v1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_yupik_v1.xml \
    $(COMMON_PATH)/media/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles.xml \
    $(COMMON_PATH)/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml \
    $(COMMON_PATH)/media/media_profiles_lahaina.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_lahaina.xml \
    $(COMMON_PATH)/media/media_profiles_vendor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_vendor.xml \
    $(COMMON_PATH)/media/media_profiles_yupik_iot.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_yupik_iot.xml \
    $(COMMON_PATH)/media/media_profiles_yupik_v0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_yupik_v0.xml \
    $(COMMON_PATH)/media/media_profiles_yupik_v1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_yupik_v1.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml

# Neural Networks
PRODUCT_PACKAGES += \
    android.hardware.neuralnetworks@1.3.vendor

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(COMMON_PATH)/overlay
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
$(call inherit-product, hardware/qcom-caf/common/common.mk)
$(call soong_config_set,rfs,mpss_firmware_symlink_target,firmware_modem)

PRODUCT_USE_DYNAMIC_PARTITIONS := true

PRODUCT_PACKAGES += \
    vendor_dsp_mountpoint \
    vendor_firmware_mnt_mountpoint \
    vendor_firmware-modem_mountpoint

# Public Libraries
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt

# Ramdisk
$(call inherit-product, $(SRC_TARGET_DIR)/product/developer_gsi_keys.mk)

# Recovery
PRODUCT_PACKAGES += \
    init.recovery.qcom.rc

# RIL
PRODUCT_PACKAGES += \
    android.hardware.radio@1.5.vendor \
    android.hardware.radio.config@1.2.vendor \
    android.hardware.radio.deprecated@1.0.vendor \
    librilutils \
    secril_config_svc \
    sehradiomanager \
    vendor.samsung.hardware.radio@2.1.vendor

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/ril/sehradiomanager.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sehradiomanager.conf

# Samsung DAP
PRODUCT_PACKAGES += \
    SamsungDAP

# Sensor
PRODUCT_PACKAGES += \
    android.hardware.sensors-service.samsung-multihal \
    libsensorndkbridge \
    libshim_sensorndkbridge

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.ambient_temperature.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.ambient_temperature.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepdetector.xml

# Shipping API
BOARD_SHIPPING_API_LEVEL := 30
PRODUCT_CHARACTERISTICS := nosdcard
PRODUCT_SHIPPING_API_LEVEL := $(BOARD_SHIPPING_API_LEVEL)

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(COMMON_PATH) \
    bootable/deprecated-ota \
    hardware/samsung

# Storages
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Telephony
PRODUCT_PACKAGES += \
    ims-ext-common \
    ims_ext_common.xml \
    qti-telephony-hidl-wrapper \
    qti_telephony_hidl_wrapper.xml \
    qti-telephony-utils \
    qti_telephony_utils.xml \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.xml \
    frameworks/native/data/etc/android.hardware.telephony.mbms.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.mbms.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml

# Updater
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

AB_OTA_UPDATER := false

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.3-service.dual_role_usb \
    android.hardware.usb-service.samsung

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml

# Verified Boot
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.device_id_attestation.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.device_id_attestation.xml \
    frameworks/native/data/etc/android.software.verified_boot.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.verified_boot.xml

# Vendor Service Manager
PRODUCT_PACKAGES += \
    vndservicemanager

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator-service.samsung

# WiFi
PRODUCT_PACKAGES += \
    android.hardware.wifi-service \
    hostapd \
    WifiOverlay \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(COMMON_PATH)/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.passpoint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.passpoint.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.ipsec_tunnel_migration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.ipsec_tunnel_migration.xml \
    frameworks/native/data/etc/android.software.ipsec_tunnels.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.ipsec_tunnels.xml

# Get non-open-source specific aspects
$(call inherit-product, vendor/samsung/sm8350-common/sm8350-common-vendor.mk)
