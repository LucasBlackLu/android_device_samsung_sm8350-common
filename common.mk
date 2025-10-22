#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

COMMON_PATH := device/samsung/sm8350-common

# Kernel
PRODUCT_ENABLE_UFFD_GC := false

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Shipping API
BOARD_SHIPPING_API_LEVEL := 30
PRODUCT_SHIPPING_API_LEVEL := $(BOARD_SHIPPING_API_LEVEL)

# Get non-open-source specific aspects
$(call inherit-product, vendor/samsung/sm8350-common/sm8350-common-vendor.mk)
