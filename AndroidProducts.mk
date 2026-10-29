#
# Copyright (C) 2021, 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/lineage_sweet2.mk \
    $(LOCAL_DIR)/shinkai_sweet2.mk \
    $(LOCAL_DIR)/halcyon_sweet2.mk \
    $(LOCAL_DIR)/bliss_sweet2.mk \
    $(LOCAL_DIR)/yaap_sweet2.mk \
    $(LOCAL_DIR)/yaap_sweet2_vanilla.mk

COMMON_LUNCH_CHOICES := \
    bliss_sweet2-cp2a-user \
    bliss_sweet2-cp2a-userdebug \
    halcyon_sweet2-cp2a-user \
    halcyon_sweet2-cp2a-userdebug \
    shinkai_sweet2-cp2a-user \
    shinkai_sweet2-cp2a-userdebug \
    yaap_sweet2-cp2a-userdebug \
    yaap_sweet2_vanilla-cp2a-userdebug
