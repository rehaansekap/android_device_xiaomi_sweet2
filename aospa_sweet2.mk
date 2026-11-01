# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

TARGET_BOARD_PLATFORM := sm6150

# Inherit from device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit from AOSPA / PenguinOS target
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

# Identitas Perangkat: Google Pixel 6a (bluejay)
PRODUCT_BRAND := google
PRODUCT_DEVICE := sweet2
PRODUCT_MANUFACTURER := Google
PRODUCT_MODEL := Pixel 6a
PRODUCT_NAME := aospa_sweet2

PRODUCT_GMS_CLIENTID_BASE := android-google

# Fingerprint & Build Properties Spoofing (Pixel 6a bluejay CANARY 16484274)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="bluejay_beta-user CANARY ZP11.260918.007 16484274 release-keys" \
    BuildFingerprint=google/bluejay_beta/bluejay:CANARY/ZP11.260918.007/16484274:user/release-keys \
    DeviceName=bluejay \
    DeviceProduct=bluejay_beta

# AOSPA / PenguinOS Maintainer
AOSPA_MAINTAINER := rehanseekap
PENGUIN_MAINTAINER := rehanseekap
PRODUCT_PROPERTY_OVERRIDES += \
    ro.aospa.maintainer=rehanseekap \
    ro.penguin.maintainer=rehanseekap \
    ro.product.model_for_attestation=Pixel 6a \
    ro.product.brand_for_attestation=google \
    ro.product.name_for_attestation=bluejay_beta \
    ro.product.device_for_attestation=bluejay \
    ro.product.manufacturer_for_attestation=Google \
    ro.apex.updatable=false

TARGET_SCREEN_WIDTH := 1080
