#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from marble device.
$(call inherit-product, device/xiaomi/marble/device.mk)

## Device identifier
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F5
PRODUCT_DEVICE := marble
PRODUCT_NAME := lineage_marble
PRODUCT_MANUFACTURER := Xiaomi

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# RisingOS Stuff
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_USE_PIXEL_FINGERPRINT := true
TARGET_DISABLE_EPPE := true
TARGET_ENABLE_BLUR := true
WITH_GMS := true

# Maintainer Stuff
RISING_MAINTAINER := SharmagRit
RISING_BUILDTYPE := UNOFFICIAL
