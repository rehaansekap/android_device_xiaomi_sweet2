# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit Evolution-X configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Evolution-X Flags
WITH_GMS := true
EVO_BUILD_TYPE := Unofficial
TARGET_SUPPORTS_QUICK_TAP := false
TARGET_INCLUDE_VIPERFX := false

# Identitas Asli: Xiaomi Redmi Note 12 Pro 4G (sweet2)
PRODUCT_NAME := evolution_sweet2
PRODUCT_DEVICE := sweet2
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 12 Pro
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Fingerprint Asli MIUI 13
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sweet_global2-user 13 TKQ1.221114.001 V816.0.13.0.THGMIXM release-keys" \
    BuildFingerprint=Redmi/sweet_global2/sweet:13/TKQ1.221114.001/V816.0.13.0.THGMIXM:user/release-keys \
    DeviceName=sweet \
    DeviceProduct=sweet_global2

# Maintainer Tag
EVOLUTION_MAINTAINER := rehanseekap
