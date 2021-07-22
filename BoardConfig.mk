DEVICE_PATH := device/amazon/sheldon

# Board
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := mt8695
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_NO_REAL_SDCARD := true

# Arch
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7

# Kernel
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-linux-androideabi-
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,32N2 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40008000
BOARD_KERNEL_OFFSET := 0
BOARD_KERNEL_PAGESIZE := 2048
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_KERNEL_IMAGE_NAME := zImage-dtb
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/zImage
LZMA_RAMDISK_TARGETS := recovery
#TARGET_KERNEL_SOURCE := kernel/amazon/sheldon
#TARGET_KERNEL_CONFIG := sheldon_defconfig
#TARGET_KERNEL_VARIANT_CONFIG := sheldon_defconfig

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE := 536870912
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1153433600
BOARD_VENDORIMAGE_PARTITION_SIZE := 157286400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5920046592
TARGET_USERIMAGES_USE_EXT4 := true

# Theme
TW_THEME := landscape_hdpi

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab

# Recovery Image
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00000000 --ramdisk_offset 0x03400000 --second_offset 0x00ef8000 --tags_offset 0x0dff8000 --header_version 1
# Original - not enough space for us!
# BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00000000 --ramdisk_offset 0x03ff8000 --second_offset 0x00ef8000 --tags_offset 0x0dff8000

# Thermal
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp

# System-as-root
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

# TWRP Flags
TW_DEFAULT_EXTERNAL_STORAGE := true
RECOVERY_SDCARD_ON_DATA := true
TW_NO_BATT_PERCENT := true
TW_NO_SCREEN_TIMEOUT := true
TW_AMONET := true
TW_HACKED_BL_BUTTON := true
TW_BOOT_MENU := true
TW_DEFAULT_BACKUP_LIST := "/system_image;/vendor_image;/data;/boot;"
TW_OVERRIDE_SYSTEM_PROPS := "ro.build.product;ro.product.device;ro.product.model;ro.product.name"
TW_INCLUDE_RESETPROP := true
