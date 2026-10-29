# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Disable EPPE check
TARGET_DISABLE_EPPE := true

# Inherit Shinkai / PixelOS stuff.
$(call inherit-product, vendor/custom/config/common_full_phone.mk)

# Identitas Perangkat: Google Pixel 6a (bluejay)
PRODUCT_BRAND := google
PRODUCT_DEVICE := sweet2
PRODUCT_MANUFACTURER := Google
PRODUCT_MODEL := Pixel 6a
PRODUCT_NAME := shinkai_sweet2

PRODUCT_GMS_CLIENTID_BASE := android-google

# Fingerprint & Build Properties Spoofing (Pixel 6a Canary 260918)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="bluejay_beta-user CANARY ZP11.260918.007 16484274 release-keys" \
    BuildFingerprint=google/bluejay_beta/bluejay:CANARY/ZP11.260918.007/16484274:user/release-keys \
    DeviceName=bluejay \
    DeviceProduct=bluejay_beta

# Shinkai Specific Settings
TARGET_SCREEN_WIDTH := 1080
SHINKAI_MAINTAINER := "rehanseekap"
TARGET_SUPPORTS_QUICK_TAP := true

