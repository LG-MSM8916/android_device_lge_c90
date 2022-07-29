# Copyright (C) 2015-2016 The CyanogenMod Project
#               2017-2018 The LineageOS Project
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

$(call inherit-product, device/lge/c90/full_c90.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := c90
PRODUCT_NAME := lineage_c90
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-H525n
PRODUCT_MANUFACTURER := LGE
PRODUCT_RELEASE_NAME := c90
PRODUCT_GMS_CLIENTID_BASE := android-lge

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
	"PRIVATE_BUILD_DESC="c90_global_com-user 6.0 MRA58K 1620222209bf1 release-keys"
