#
# Copyright (C) 2024 The LineageOS Project
# copyright (c) 2024 Nahagliiv
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from x689f device
$(call inherit-product, device/infinix/x689f/device.mk)

PRODUCT_DEVICE := x689f
PRODUCT_NAME := lineage_x689f
PRODUCT_BRAND := Infinix
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_tssi_64_infinix-user 11 RP1A.200720.011 89157 release-keys"

BUILD_FINGERPRINT := Infinix/TSSI/FULL-64:11/RP1A.200720.011/220913V508:user/release-keys
