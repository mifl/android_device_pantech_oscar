#
# Copyright (C) 2012 The Android Open-Source Project
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

#----------------------------------------------------------------------

# Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/pantech/oscar/oscar-vendor.mk)

# The gps config appropriate for this device
PRODUCT_COPY_FILES += device/common/gps/gps.conf_US_SUPL:system/etc/gps.conf

#----------------------------------------------------------------------

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Radio fixes
FRAMEWORKS_BASE_SUBDIRS += ../../$(LOCAL_PATH)/ril/

#----------------------------------------------------------------------

LOCAL_KERNEL := $(LOCAL_PATH)/prebuilt/kernel/kernel

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

#----------------------------------------------------------------------

# Bluetooth firmware

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Recovery
#PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery.fstab:root/recovery.fstab

# Wlan prima module
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/modules/prima/prima_wlan.ko:/system/lib/modules/prima/prima_wlan.ko

#----------------------------------------------------------------------

# FM Radio
PRODUCT_PACKAGES += FmRadioReceiver

# Keylayouts and Keychars
PRODUCT_PACKAGES += \
    qt602240_ts_input.kl

# Ramdisk
PRODUCT_PACKAGES += \
    init.pantech.usb.rc \
    init.pantech.usb.sh

# Recovery
#PRODUCT_PACKAGES += init.recovery.qcom.rc

# Torch
PRODUCT_PACKAGES += \
    Apollo \
    Torch

# USB
PRODUCT_PACKAGES += com.android.future.usb.accessory

# Wallpapers
PRODUCT_PACKAGES += \
    Galaxy4 \
    HoloSpiralWallpaper \
    MagicSmokeWallpapers \
    NoiseField \
    PhaseBeam

#----------------------------------------------------------------------

# inherit pantech/msm8960-common
$(call inherit-product-if-exists, device/pantech/msm8960-common/msm8960.mk)

#  Also get non-open-source vendor/pantech/msm8x60-common
$(call inherit-product-if-exists, vendor/pantech/msm8x60-common/msm8x60-common-vendor.mk)
