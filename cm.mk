## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := oscar

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/pantech/oscar/full_oscar.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_oscar
PRODUCT_DEVICE := oscar
PRODUCT_BRAND := ATT
PRODUCT_MANUFACTURER := Pantech
PRODUCT_MODEL := PantechP8010
