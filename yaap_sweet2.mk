#
# Copyright (C) 2026 The Yet Another AOSP Project
#
# SPDX-License-Identifier: Apache-2.0
#

# 1. Warisi arsitektur 64-bit dan telefoni dasar
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# 2. Warisi konfigurasi perangkat sweet2 kita
$(call inherit-product, device/xiaomi/sweet2/device.mk)

# 3. Warisi konfigurasi sistem bawaan YAAP
$(call inherit-product, vendor/yaap/config/common_full_phone.mk)

# Atribut Animasi & Tipe Build
TARGET_BOOT_ANIMATION_RES := 1080
YAAP_BUILDTYPE := HOMEMADE

# Identitas Produk
PRODUCT_NAME := yaap_sweet2
PRODUCT_DEVICE := sweet2
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 2209116AG
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_SYSTEM_NAME := sweet_global2

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Fingerprint & Build Properties
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sweet_global2-user 13 TKQ1.221114.001 V816.0.13.0.THGMIXM release-keys" \
    BuildFingerprint=Redmi/sweet_global2/sweet:13/TKQ1.221114.001/V816.0.13.0.THGMIXM:user/release-keys \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)