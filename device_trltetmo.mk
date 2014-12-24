$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/trltetmo/trltetmo-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/trltetmo/overlay

LOCAL_PATH := device/samsung/trltetmo

# Prebuilt Kernel
#ifneq ($(OUT),)
#ifeq ($(MK_KERNEL_OBJ),)
#$(shell rm -rf $(OUT)/obj/KERNEL_OBJ;\
#    mkdir -p $(OUT)/obj;\
#    ln -s $(ANDROID_BUILD_TOP)/$(LOCAL_PATH)/include/KERNEL_OBJ $(OUT)/obj/KERNEL_OBJ)
#MK_KERNEL_OBJ := true
#endif
#endif

#ifeq ($(TARGET_PREBUILT_KERNEL),)
#	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
#else
#	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#endif

PRODUCT_COPY_FILES += \
#    $(LOCAL_KERNEL):kernel \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

$(call inherit-product, build/target/product/full.mk)

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.bootloader.mode=download \
    persist.sys.usb.config=mtp,adb \
    ro.adb.secure=0 \
    ro.securestorage.support=false \
    ro.config.knox=0 \
    ro.config.tima=0

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=640 \
    persist.timed.enable=true \
    ro.build.selinux=0

PRODUCT_PROPERTY_OVERRIDES += \
    ro.cwm.forbid_format="/firmware,/firmware-modem" \
    ro.cwm.forbid_mount="/firmware,/firmware-modem"

PRODUCT_PACKAGES += \
    extra.fstab

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_COPY_FILES_OVERRIDES += \
    root/fstab.goldfish \
    root/ueventd.goldfish.rc

PRODUCT_NAME := full_trltetmo
PRODUCT_DEVICE := trltetmo
