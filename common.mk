#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

COMMON_PATH := device/samsung/sm6375-common

# Get non-open-source specific aspects
$(call inherit-product, vendor/samsung/sm6375-common/sm6375-common-vendor.mk)
