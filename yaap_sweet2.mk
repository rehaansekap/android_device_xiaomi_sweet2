#
# Copyright (C) 2026 The Yet Another AOSP Project
#
# SPDX-License-Identifier: Apache-2.0
#

# 1. Base AOSP product definitions (64-bit + telephony)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# 2. Device-specific config for sweet2
$(call inherit-product, device/xiaomi/sweet2/device.mk)

# 3. Feature flags — MUST be set BEFORE inheriting common_full_phone.mk
# Build with GMS full variant (Play Store, Maps, YouTube, Gmail, Drive, Photos, etc.)
TARGET_BUILD_GAPPS := true
TARGET_GAPPS_VARIANT := full

# Enable Face Unlock (16 MP front camera)
TARGET_FACE_UNLOCK_SUPPORTED := true

# Enable Quick Tap gesture (accelerometer)
TARGET_SUPPORTS_QUICK_TAP := true

# Disable Lindroid (LXC containers) to save RAM and build size
TARGET_INCLUDE_LINDROID := false

# 4. YAAP common configuration
$(call inherit-product, vendor/yaap/config/common_full_phone.mk)

# 5. Build Identity (Google Pixel 6a / bluejay for Play Integrity & GMS)
PRODUCT_NAME := yaap_sweet2
PRODUCT_DEVICE := sweet2
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6a
PRODUCT_MANUFACTURER := Google

PRODUCT_GMS_CLIENTID_BASE := android-google

# Pixel 6a (bluejay) fingerprint & build properties
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="bluejay-user 17 CP3A.261005.002.A1 16269273 release-keys" \
    BuildFingerprint=google/bluejay/bluejay:17/CP3A.261005.002.A1/16269273:user/release-keys \
    DeviceName=bluejay \
    DeviceProduct=bluejay

# 6. Boot animation resolution (1080x2400 panel)
TARGET_BOOT_ANIMATION_RES := 1080
YAAP_BUILDTYPE := HOMEMADE

# 7. Additional packages
# MarkupGoogle: Google's screenshot markup editor
# prebuiltGmsCore: Play Services core for GMS apps
PRODUCT_PACKAGES += \
    MarkupGoogle \
    prebuiltGmsCore

# 8. Remove duplicate/unneeded YAAP packages
# Eleven/MusicFX — replaced by YouTube Music (GMS full)
# Recorder — Google Recorder in GMS full
# WallpaperPicker2 — legacy AOSP picker, replaced by Google Wallpapers
PRODUCT_PACKAGES -= \
    Eleven \
    Calculator \
    WallpaperPicker2 \
    MusicFX \
    Recorder

# 9. Optional device overlay (uncomment when ready)
# DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-yaap