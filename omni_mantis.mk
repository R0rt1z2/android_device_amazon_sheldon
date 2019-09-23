$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

$(call inherit-product, device/amazon/mantis/device.mk)


PRODUCT_NAME := omni_mantis
PRODUCT_DEVICE := mantis
PRODUCT_BRAND := Android
PRODUCT_MANUFACTURER := Amazon
