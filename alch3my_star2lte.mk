# SPDX-License-Identifier: Apache-2.0
# Copyright (C) 2022 The LineageOS Project

# Inherit from generic products, most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Inherit from star2lte device.mk
$(call inherit-product, device/samsung/star2lte/device.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/alch3my/config/common_full_phone.mk)

# Device identifier, this must come after all inclusions
PRODUCT_NAME := alch3my_star2lte
PRODUCT_DEVICE := star2lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G965F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Alch3myOS flags
WITH_GMS := false
ALCH3MY_BUILD_TYPE := Unofficial
IS_PIXEL := false
TARGET_HAS_UDFPS := false
TARGET_SUPPORTS_QUICK_TAP := false
TARGET_FACE_UNLOCK_SUPPORTED := false
TARGET_SUPPORTS_GFU := false
TARGET_DOES_NOT_SUPPORT_GOOGLE_BATTERY := true

