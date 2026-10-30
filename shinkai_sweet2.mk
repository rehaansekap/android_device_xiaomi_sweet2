# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Disable EPPE check
TARGET_DISABLE_EPPE := true

# Inherit Shinkai / PixelOS stuff.
$(call inherit-product, vendor/custom/config/common_full_phone.mk)

# Identitas Perangkat: Google Pixel 11 Pro XL (kodiak)
PRODUCT_BRAND := google
PRODUCT_DEVICE := sweet2
PRODUCT_MANUFACTURER := Google
PRODUCT_MODEL := Pixel 11 Pro XL
PRODUCT_NAME := shinkai_sweet2

PRODUCT_GMS_CLIENTID_BASE := android-google

# Fingerprint & Build Properties Spoofing (kodiak CANARY 16484274)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="generic_system_google-user CANARY ZP11.260918.007 16484274 release-keys" \
    BuildFingerprint=google/kodiak_beta/kodiak:CANARY/ZP11.260918.007/16484274:user/release-keys \
    DeviceName=kodiak \
    DeviceProduct=kodiak_beta

# Shinkai Specific Settings
TARGET_SCREEN_WIDTH := 1080
SHINKAI_MAINTAINER := "rehanseekap"
TARGET_SUPPORTS_QUICK_TAP := true
