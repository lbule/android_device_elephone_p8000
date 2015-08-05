LOCAL_PATH := device/elephone/p8000

USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/alps/k05ts_a/BoardConfigVendor.mk



# Platform
TARGET_BOARD_PLATFORM := mt6753
#TARGET_BOARD_PLATFORM_GPU := Mali-T720

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a53

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI_LIST := armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_32_BIT := armeabi-v7a,armeabi
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true

ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

BOARD_HAS_NO_SELECT_BUTTON := true

# bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := p8000
TARGET_OTA_ASSERT_DEVICE := k05ts_a
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048

# partition info
# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00380000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00480000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08c60000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
RECOVERY_VARIANT := cwm
#RECOVERY_VARIANT := carliv
#RECOVERY_VARIANT := philz
#RECOVERY_VARIANT := swipe
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
#TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/tkernel
TARGET_RECOVERY_INITRC := $(LOCAL_PATH)/recovery/init.mt6753.rc
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/recovery.fstab

BOARD_USE_CUSTOM_RECOVERY_FONT := \"font28_17x33.h\"
DEVICE_RESOLUTION :=1080x1920
DEVICE_SCREEN_WIDTH := 1080
DEVICE_SCREEN_HEIGHT := 1920
#TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file
#TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"
#BRIGHTNESS_SYS_FILE := "/sys/class/leds/lcd-backlight/brightness"
