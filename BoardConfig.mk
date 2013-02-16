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

# Platform
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Board info
BOARD_HAS_LARGE_FILESYSTEM  := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON  := true
BOARD_USES_MMCUTILS         := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := oscar

# File system
BOARD_BOOTIMAGE_PARTITION_SIZE          := 0x77a000
BOARD_RECOVERYIMAGE_PARTITION_SIZE      := 0x77a000
BOARD_SYSTEMIMAGE_PARTITION_SIZE        := 1048576000   # 1024000×1024  (mmcblk0p13)
BOARD_USERDATAIMAGE_PARTITION_SIZE      := 5954863104   # 5815296×1024  (mmcblk0p24)
BOARD_CACHEIMAGE_PARTITION_SIZE         := 340787200    # 332800×1024   (mmcblk0p16)
BOARD_PERSISTIMAGE_PARTITION_SIZE       := 8388608      # 8192×1024     (mmcblk0p15)
BOARD_TOMBSTONESIMAGE_PARTITION_SIZE    := 268435456    # 262144×1024   (mmcblk0p17)
BOARD_FLASH_BLOCK_SIZE                  := 131072       # (BOARD_KERNEL_PAGESIZE * 64)

# Kernel
BOARD_KERNEL_BASE       := 0x80200000
BOARD_KERNEL_CMDLINE    := console=ttyHSL0,115200,n8 androidboot.hardware=qcom androidboot.carrier=ATT user_debug=31 loglevel=0
BOARD_KERNEL_PAGESIZE   := 2048
BOARD_RAMDISK_OFFSET    := 0x02000000
TARGET_NO_KERNEL        := false
TARGET_PREBUILT_KERNEL  := device/pantech/oscar/kernel

# Recovery
BOARD_CUSTOM_GRAPHICS := ../../../device/pantech/oscar/graphics.c
BOARD_USES_RECOVERY_CHARGEMODE := false

# Target info
TARGET_NO_BOOTLOADER := true
TARGET_USERIMAGES_USE_EXT4 := true

