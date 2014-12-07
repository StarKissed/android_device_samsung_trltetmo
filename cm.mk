## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := trltetmo

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/trltetmo/device_trltetmo.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := trltetmo
PRODUCT_NAME := cm_trltetmo
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-N910X
PRODUCT_MANUFACTURER := samsung
