USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lenovo/A6020/BoardConfigVendor.mk

LOCAL_PATH := device/lenovo/A6020

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Asserts
TARGET_OTA_ASSERT_DEVICE := A6020,A6020a40,A6020a46,A6020l36,K32c36,k5,k5_plus,vibe_k5

# Architecture

TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

ARCH_ARM_HAVE_TLS_REGISTER := true

# Bootloader

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := A6020

# Kernel
TARGET_KERNEL_SOURCE := kernel/lenovo/msm8929
TARGET_KERNEL_CONFIG := wt82918-perf_defconfig
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android- 

BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100

# Platform
TARGET_BOARD_PLATFORM := msm8916

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216 # 32768 * 512 # mmcblk0p22
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216 # 32768 * 512 # mmcblk0p26
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1342177280 # 2621440 * 512 # mmcblk0p23
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6105849344 # 11925487 * 512 # mmcblk0p30
BOARD_PERSISTIMAGE_PARTITION_SIZE := 16777216 # 32768 * 512 # mmcblk0p24
BOARD_HAS_NO_SELECT_BUTTON := true

# TARGET_PREBUILT_KERNEL := device/lenovo/A6020/kernel
# BOARD_KERNEL_PREBUILT_DT := true

# Audio
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_NEW_SAMPLE_RATE := true
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
QCOM_BT_USE_BTNV := true


# Camera
USE_DEVICE_SPECIFIC_CAMERA := true

# CMHW
BOARD_USES_CYANOGEN_HARDWARE := true
BOARD_HARDWARE_CLASS += \
    $(LOCAL_PATH)/cmhw \
    hardware/cyanogen/cmhw

# Crypto
TARGET_HW_DISK_ENCRYPTION := true

# Display
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true

# FM

# Init
TARGET_INIT_VENDOR_LIB := libinit_A6020
TARGET_RECOVERY_DEVICE_MODULES := libinit_A6020

# Lights

# Offline charger

BOARD_HEALTHD_CUSTOM_CHARGER_RES := $(LOCAL_PATH)/charger/images

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072  # Just default value. Not sure

# Power
TARGET_POWERHAL_VARIANT := qcom

# Properties

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.qcom
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# RIL
TARGET_RIL_VARIANT := caf
BOARD_PROVIDES_LIBRIL := false

# SELinux
include device/qcom/sepolicy/sepolicy.mk
BOARD_SEPOLICY_DIRS += $(LOCAL_PATH)/sepolicy

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME := "wlan"
WPA_SUPPLICANT_VERSION := VER_0_8_X

# TWRP
TW_THEME := portrait_hdpi
TARGET_RECOVERY_PIXEL_FORMAT := RGB_565
TW_NEW_ION_HEAP := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_SCREEN_BLANK_ON_BOOT := true


