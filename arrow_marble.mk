#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Arrow stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

## Device identifier
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F5
PRODUCT_DEVICE := marble
PRODUCT_NAME := arrow_marble
PRODUCT_MANUFACTURER := Xiaomi

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Arrow stuff
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_NGA := true
TARGET_ENABLE_BLUR := true
ARROW_GAPPS := true
