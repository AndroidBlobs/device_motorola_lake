# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from lake device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := lake
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := lineage_lake
PRODUCT_MODEL := moto g(7) plus

PRODUCT_GMS_CLIENTID_BASE := android-motorola
TARGET_VENDOR := motorola
TARGET_VENDOR_PRODUCT_NAME := lake
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC=" 9 PPWS29.98-111-9 d601 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := 9/PPWS29.98-111-9/d601:user/release-keys
