#
# Copyright (C) 2026 The Yet Another AOSP Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from GApps variant and disable GApps
$(call inherit-product, device/xiaomi/sweet2/yaap_sweet2.mk)

# Disable GApps for Vanilla build
TARGET_BUILD_GAPPS := false

# Vanilla build identity
YAAP_BUILDTYPE := HOMEMADE-VANILLA
PRODUCT_NAME := yaap_sweet2_vanilla

# Dexopt & watchdog tuning (first boot lebih toleran)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    dalvik.vm.dex2oat-threads=4 \
    dalvik.vm.boot-dex2oat-threads=4 \
    ro.hw_timeout_multiplier=2
