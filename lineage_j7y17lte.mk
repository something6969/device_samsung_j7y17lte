# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from j7y17lte device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := j7y17lte
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_j7y17lte
PRODUCT_MODEL := Galaxy J7 2017

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := j7y17lte
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="lineage_j7y17lte-userdebug 10 QQ3A.200805.001 eng.root.20220830.162147 test-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/raven/raven:12/SQ1D.220205.003/8069835:user/release-keys
