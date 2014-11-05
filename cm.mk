## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := trltephil

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/trltephil/device_trltephil.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := trltephil
PRODUCT_NAME := cm_trltephil
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-N910X
PRODUCT_MANUFACTURER := samsung
