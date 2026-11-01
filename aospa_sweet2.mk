# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

TARGET_BOARD_PLATFORM := sm6150

# Inherit from device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit from AOSPA / PenguinOS target
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

PRODUCT_NAME := aospa_sweet2
PRODUCT_DEVICE := sweet2
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 12 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sweet_global2-user 13 TKQ1.221114.001 V816.0.13.0.THGMIXM release-keys" \
    BuildFingerprint=Redmi/sweet_global2/sweet:13/TKQ1.221114.001/V816.0.13.0.THGMIXM:user/release-keys

# AOSPA / PenguinOS Maintainer
AOSPA_MAINTAINER := rehanseekap
PENGUIN_MAINTAINER := rehanseekap
PRODUCT_PROPERTY_OVERRIDES += \
    ro.aospa.maintainer=rehanseekap \
    ro.penguin.maintainer=rehanseekap \
    ro.apex.updatable=false

PRODUCT_SYSTEM_PROPERTIES += \
    ro.apex.updatable=false

TARGET_SCREEN_WIDTH := 1080
