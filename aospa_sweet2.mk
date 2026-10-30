# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit from AOSPA / PenguinOS target
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

# Identitas Perangkat: Google Pixel 11 Pro XL (kodiak)
PRODUCT_BRAND := google
PRODUCT_DEVICE := sweet2
PRODUCT_MANUFACTURER := Google
PRODUCT_MODEL := Pixel 11 Pro XL
PRODUCT_NAME := aospa_sweet2

PRODUCT_GMS_CLIENTID_BASE := android-google

# Fingerprint & Build Properties Spoofing (Pixel 11 Pro XL Kodiak Beta DP11.261002.005)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="kodiak_beta-user 17 DP11.261002.005 16594701 release-keys" \
    BuildFingerprint=google/kodiak_beta/kodiak:17/DP11.261002.005/16594701:user/release-keys \
    DeviceName=kodiak \
    DeviceProduct=kodiak_beta

# AOSPA / PenguinOS Maintainer
AOSPA_MAINTAINER := rehanseekap
PENGUIN_MAINTAINER := rehanseekap
TARGET_SCREEN_WIDTH := 1080
