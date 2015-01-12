## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := oscar

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/pantech/oscar/full_oscar.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH  := 540

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_oscar
PRODUCT_DEVICE := oscar
PRODUCT_BRAND := ATT
PRODUCT_MANUFACTURER := Pantech
PRODUCT_MODEL := PantechP8010

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=PantechP8010 TARGET_DEVICE=PantechP8010 BUILD_FINGERPRINT="ATT/PantechP8010/oscar:4.1.2/JZO54K/oscar_0603:user/release-keys" PRIVATE_BUILD_DESC="Pantech Oscar P8010 release-keys"
