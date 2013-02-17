# Copyright (C) 2012 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

USE_CAMERA_STUB := true

#----------------------------------------------------------------------

# inherit from the proprietary version
-include vendor/pantech/oscar/BoardConfigVendor.mk

# inherit from pantech qcom-common
-include device/pantech/qcom-common/BoardConfigCommon.mk

# Headers path
TARGET_SPECIFIC_HEADER_PATH := device/pantech/oscar/include

# Assert
TARGET_OTA_ASSERT_DEVICE := PantechP8010,oscar

#----------------------------------------------------------------------

# Audio Alsa
BOARD_USES_ALSA_AUDIO := true
#BOARD_USES_FLUENCE_INCALL := true
#BOARD_USES_SEPERATED_AUDIO_INPUT := true
#BOARD_HAVE_LOW_LATENCY_AUDIO := true

# Bluetooth
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/pantech/oscar/bluetooth

# Board info
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := oscar

# Camera
BOARD_PANTECH_CAMERA := true
BOARD_CAMERA_USE_MM_HEAP := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB
TARGET_DISABLE_ARM_PIE := true

# Charging mode
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging

# File system
BOARD_BOOTIMAGE_PARTITION_SIZE          := 0x77a000
BOARD_RECOVERYIMAGE_PARTITION_SIZE      := 0x77a000
BOARD_SYSTEMIMAGE_PARTITION_SIZE        := 1048576000   # 1024000×1024  (mmcblk0p13)
BOARD_USERDATAIMAGE_PARTITION_SIZE      := 5954863104   # 5815296×1024  (mmcblk0p24)
BOARD_CACHEIMAGE_PARTITION_SIZE         := 340787200    # 332800×1024   (mmcblk0p16)
BOARD_PERSISTIMAGE_PARTITION_SIZE       := 8388608      # 8192×1024     (mmcblk0p15)
BOARD_TOMBSTONESIMAGE_PARTITION_SIZE    := 268435456    # 262144×1024   (mmcblk0p17)
BOARD_FLASH_BLOCK_SIZE                  := 131072       # (BOARD_KERNEL_PAGESIZE * 64)

# Flags
COMMON_GLOBAL_CFLAGS += -D__ARM_USE_PLD -D__ARM_CACHE_LINE_SIZE=64

# FM radio
BOARD_HAVE_FM_RADIO := true
BOARD_HAVE_QCOM_FM := true
COMMON_GLOBAL_CFLAGS += -DQCOM_FM_ENABLED

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := msm8960
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
TARGET_NO_RPC := true

# Graphics
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK
TARGET_NO_HW_VSYNC := true

# HDMI
TARGET_QCOM_HDMI_OUT:= false

# Kernel
BOARD_KERNEL_BASE    := 0x80200000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom androidboot.carrier=ATT user_debug=31 loglevel=0
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x02000000
TARGET_KERNEL_CONFIG := cyanogenmod_oscar_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3
TARGET_KERNEL_SOURCE := kernel/pantech/p8010
TARGET_PREBUILT_KERNEL := device/pantech/oscar/prebuilt/kernel/kernel

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

# NFC
BOARD_HAVE_NFC := true

# Overlay
TARGET_USES_OVERLAY := true

# Platform
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# PowerHAL
#TARGET_PROVIDES_POWERHAL := true

# QCOM display
#TARGET_QCOM_DISPLAY_VARIANT := caf

# QCOM hardware
BOARD_USES_QCOM_LIBS := true

# Radio info
TARGET_NO_RADIOIMAGE := true

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

# SD Card info
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p1

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 28
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Wifi
-include device/pantech/oscar/wifi.mk

# Time - Add support for kernel user helpers and gettimeofday() in bionic
KERNEL_HAS_GETTIMEOFDAY_HELPER := true

