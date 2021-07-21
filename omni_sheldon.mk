# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from our TWRP configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Product
PRODUCT_NAME := omni_sheldon
PRODUCT_DEVICE := sheldon
PRODUCT_BRAND := Android
PRODUCT_MANUFACTURER := Amazon

# Property overrides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.treble.enabled=true
