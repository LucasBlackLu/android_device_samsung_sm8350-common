#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

COMMON_PATH := device/samsung/sm8350-common

# Bootloader
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RPC := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# Get non-open-source specific aspects
include vendor/samsung/sm8350-common/BoardConfigVendor.mk
