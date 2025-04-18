#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifneq ($(filter o1q t2q p3q ,$(TARGET_DEVICE)),)

# A/B builds require us to create the mount points at compile time.
# Just creating it for all cases since it does not hurt.
FIRMWARE_MODEM_MOUNT_POINT := $(TARGET_OUT_VENDOR)/firmware-modem
$(FIRMWARE_MODEM_MOUNT_POINT): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating $(FIRMWARE_MODEM_MOUNT_POINT)"
	@mkdir -p $(TARGET_OUT_VENDOR)/firmware-modem

FIRMWARE_MOUNT_POINT := $(TARGET_OUT_VENDOR)/firmware_mnt
$(FIRMWARE_MOUNT_POINT): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating $(FIRMWARE_MOUNT_POINT)"
	@mkdir -p $(TARGET_OUT_VENDOR)/firmware_mnt

BT_FIRMWARE_MOUNT_POINT := $(TARGET_OUT_VENDOR)/bt_firmware
$(BT_FIRMWARE_MOUNT_POINT): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating $(BT_FIRMWARE_MOUNT_POINT)"
	@mkdir -p $(TARGET_OUT_VENDOR)/bt_firmware

DSP_MOUNT_POINT := $(TARGET_OUT_VENDOR)/dsp
$(DSP_MOUNT_POINT): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating $(DSP_MOUNT_POINT)"
	@mkdir -p $(TARGET_OUT_VENDOR)/dsp

ALL_DEFAULT_INSTALLED_MODULES += \
    $(FIRMWARE_MODEM_MOUNT_POINT) \
    $(FIRMWARE_MOUNT_POINT) \
    $(BT_FIRMWARE_MOUNT_POINT) \
    $(DSP_MOUNT_POINT)

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_MOUNT_POINT) $(BT_FIRMWARE_MOUNT_POINT) $(DSP_MOUNT_POINT) $(FIRMWARE_MODEM_MOUNT_POINT)

ACDBDATA_SYMLINKS := $(TARGET_OUT_ODM)/etc/acdbdata
$(ACDBDATA_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating acdbdata symlinks: $@"
	@mkdir -p $@
	$(hide) ln -sf /vendor/etc/acdbdata/adsp_avs_config.acdb $@/adsp_avs_config.acdb

CNE_LIBS := libvndfwk_detect_jni.qti.so
CNE_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR_APPS)/CneApp/lib/arm64/,$(notdir $(CNE_LIBS)))
$(CNE_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "CNE lib link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /vendor/lib64/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(ACDBDATA_SYMLINKS) $(CNE_SYMLINKS)

endif
