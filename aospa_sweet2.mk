# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit from AOSPA / PenguinOS target
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

# Identitas Perangkat: Xiaomi Redmi Note 12 Pro 4G (sweet2)
PRODUCT_BRAND := Redmi
PRODUCT_DEVICE := sweet2
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi Note 12 Pro 4G
PRODUCT_NAME := aospa_sweet2
PRODUCT_SYSTEM_DEVICE := sweet2
PRODUCT_SYSTEM_NAME := sweet_global2

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Fingerprint & Build Properties: Original Redmi Note 12 Pro 4G
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sweet_global2-user 13 TKQ1.221114.001 V816.0.13.0.THGMIXM release-keys" \
    BuildFingerprint=Redmi/sweet_global2/sweet:13/TKQ1.221114.001/V816.0.13.0.THGMIXM:user/release-keys \
    DeviceName=$(PRODUCT_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

# AOSPA / PenguinOS Maintainer
AOSPA_MAINTAINER := rehanseekap
PENGUIN_MAINTAINER := rehanseekap
TARGET_SCREEN_WIDTH := 1080
