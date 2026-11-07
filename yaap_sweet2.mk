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

# 5. Build Identity: Xiaomi Redmi Note 12 Pro 4G (sweet2)
PRODUCT_NAME := yaap_sweet2
PRODUCT_DEVICE := sweet2
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 12 Pro
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_SYSTEM_DEVICE := sweet
PRODUCT_SYSTEM_NAME := sweet_global2

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Original Redmi Note 12 Pro 4G fingerprint & build properties
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sweet_global2-user 13 TKQ1.221114.001 V816.0.13.0.THGMIXM release-keys" \
    BuildFingerprint=Redmi/sweet_global2/sweet:13/TKQ1.221114.001/V816.0.13.0.THGMIXM:user/release-keys \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

# 6. Boot animation resolution (1080x2400 panel)
TARGET_BOOT_ANIMATION_RES := 1080
YAAP_BUILDTYPE := HOMEMADE

# 7. Additional packages
# MarkupGoogle: Google's screenshot markup editor
# prebuiltGmsCore: Play Services core for GMS apps
PRODUCT_PACKAGES += \
    WebViewGoogle \
    TrichromeLibrary64 \
    Chrome \
    NexusLauncherRelease \
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
    Recorder \
    Launcher3QuickStep

# 9. Optional device overlay (uncomment when ready)
# DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-yaap
