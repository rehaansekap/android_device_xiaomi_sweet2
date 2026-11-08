#
# Copyright (C) 2026 The RisingOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common RisingOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device Identity: Xiaomi Redmi Note 12 Pro 4G (sweet2)
PRODUCT_BRAND := Redmi
PRODUCT_DEVICE := sweet2
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi Note 12 Pro 4G
PRODUCT_NAME := rising_sweet2
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
RISING_MAINTAINER := rehanseekap
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.rising.maintainer=rehanseekap \
    ro.build.maintainer=rehanseekap

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
