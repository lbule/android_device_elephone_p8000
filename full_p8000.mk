# Inherit from those products. Most specific first.
$(call inherit-product, device/elephone/p6000/device_p6000.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

PRODUCT_NAME := full_p8000
PRODUCT_DEVICE := p8000
PRODUCT_BRAND := Elephone
PRODUCT_MODEL := p8000
