## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := trlte

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/trlte/device_trlte.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := trlte
PRODUCT_NAME := cm_trlte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-N910F
PRODUCT_MANUFACTURER := samsung
