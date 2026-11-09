#
# Copyright (C) 2026 The Halcyon Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Disable EPPE check
TARGET_DISABLE_EPPE := true

# Inherit Halcyon common configuration
$(call inherit-product, vendor/halcyon/config/common.mk)

# Device Identity: Xiaomi Redmi Note 12 Pro 4G (sweet2)
PRODUCT_BRAND := Redmi
PRODUCT_DEVICE := sweet2
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi Note 12 Pro 4G
PRODUCT_NAME := halcyon_sweet2
PRODUCT_SYSTEM_DEVICE := sweet2
PRODUCT_SYSTEM_NAME := sweet_global2

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Fingerprint & Build Properties: Original Redmi Note 12 Pro 4G
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sweet_global2-user 13 TKQ1.221114.001 V816.0.13.0.THGMIXM release-keys" \
    BuildFingerprint=Redmi/sweet_global2/sweet:13/TKQ1.221114.001/V816.0.13.0.THGMIXM:user/release-keys \
    DeviceName=$(PRODUCT_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

# Maintainer
HALCYON_MAINTAINER := rehanseekap
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.halcyon.maintainer=rehanseekap \
    ro.build.maintainer=rehanseekap

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true

# Dexopt & watchdog tuning (first boot lebih toleran)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    dalvik.vm.dex2oat-threads=4 \
    dalvik.vm.boot-dex2oat-threads=4 \
    ro.hw_timeout_multiplier=2
