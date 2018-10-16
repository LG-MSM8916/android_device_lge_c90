#
# Copyright (C) 2017 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from c90 device
$(call inherit-product, device/lge/c90/device.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/lge/c90/c90-vendor.mk)

# common msm8916
$(call inherit-product, device/lge/msm8916-common/msm8916.mk)

# Time Zone data for recovery
#PRODUCT_COPY_FILES += \
#    bionic/libc/zoneinfo/tzdata:root/system/usr/share/zoneinfo/tzdata

# Overlay
DEVICE_PACKAGE_OVERLAYS += device/lge/c90/overlay

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_PROPERTY_OVERRIDES += ro.sf.lcd_density=320

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := c90
PRODUCT_NAME := full_c90
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-H525
PRODUCT_MANUFACTURER := LGE
PRODUCT_GMS_CLIENTID_BASE := android-lge

TARGET_VENDOR_PRODUCT_NAME := c90
TARGET_VENDOR_DEVICE_NAME := c90

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=c90 PRODUCT_NAME=c90

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
PRIVATE_BUILD_DESC="c90_global_com-user 6.0 MRA58K 1620222209bf1 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "lge/c90_global_com/c90:6.0/MRA58K/1620222209bf1:user/release-keys"


TARGET_VENDOR := lge
