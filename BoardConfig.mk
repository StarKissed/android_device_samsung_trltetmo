#n9100
USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/trlte/BoardConfigVendor.mk
#TARGET_SPECIFIC_HEADER_PATH := device/samsung/trlte/include
#TARGET_PRODUCT_KERNEL_HEADERS := /media/d/kernel/g906s-kk/include
BOARD_VENDOR := samsung
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := apq8084
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOARD_PLATFORM_GPU := qcom-adreno420
TARGET_BOOTLOADER_BOARD_NAME := APQ8084
TARGET_CPU_SMP := true
#TARGET_GCC_VERSION_EXP := 4.9

TARGET_GLOBAL_CFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp

# Kernel
# Kernel Configs
#TARGET_KERNEL_SOURCE := /media/d/kernel/n910t-kk/Kernel
#TARGET_KERNEL_CONFIG := apq8084_sec_defconfig
#TARGET_KERNEL_VARIANT_CONFIG := apq8084_sec_trlte_tmo_defconfig
TARGET_PREBUILT_KERNEL := device/samsung/trlte/kernel
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 dwc3_msm.cpu_to_affin=1
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02600000 --tags_offset 0x02400000 --dt device/samsung/trlte/dt.img

# fix this up by examining /proc/mtd on a running device
# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USES_QCOM_BSP := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/trlte/recovery/recovery_keys.c
BOARD_USE_CUSTOM_RECOVERY_FONT := \"fonten55_33x84.h\"
BOARD_USES_MMCUTILS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := device/samsung/trlte/rootdir/etc/recovery.fstab
#TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"
#BOARD_RECOVERY_SWIPE := true

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

# Assert
TARGET_OTA_ASSERT_DEVICE := trlte,trltechn,N9100,SM-N9100

TARGET_QCOM_DISPLAY_VARIANT := caf-new
