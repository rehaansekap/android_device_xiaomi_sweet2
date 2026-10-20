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