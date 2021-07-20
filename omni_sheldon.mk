# Inherits
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, device/amazon/sheldon/device.mk)

# Product
PRODUCT_NAME := omni_sheldon
PRODUCT_DEVICE := sheldon
PRODUCT_BRAND := Android
PRODUCT_MANUFACTURER := Amazon
