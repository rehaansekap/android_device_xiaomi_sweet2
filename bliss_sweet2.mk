#
# Copyright (C) 2026 The BlissRoms Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit Bliss common config
$(call inherit-product, vendor/bliss/config/common.mk)

# Device Identity: Google Pixel 6a (bluejay)
PRODUCT_BRAND := google
PRODUCT_DEVICE := sweet2
PRODUCT_MANUFACTURER := Google
PRODUCT_MODEL := Pixel 6a
PRODUCT_NAME := bliss_sweet2

PRODUCT_GMS_CLIENTID_BASE := android-google

# Fingerprint & Build Properties Spoofing (Pixel 6a Canary 260918)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="bluejay_beta-user CANARY ZP11.260918.007 16484274 release-keys" \
    BuildFingerprint=google/bluejay_beta/bluejay:CANARY/ZP11.260918.007/16484274:user/release-keys \
    DeviceName=bluejay \
    DeviceProduct=bluejay_beta

# Bliss Specific Settings
BLISS_BUILD_TYPE := COMMUNITY
BLISS_MAINTAINER := rehanseekap
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true

# Inherit FOSS apps if available
$(call inherit-product-if-exists, vendor/foss/foss.mk)
