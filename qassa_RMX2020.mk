#
# Copyright (C) 2020 Android Open Source Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/realme/RMX2020/device.mk)

# Inherit some common QASSA stuff.
$(call inherit-product, vendor/qassa/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 720
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := qassa_RMX2020
PRODUCT_DEVICE := RMX2020
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme G70 Series
PRODUCT_MANUFACTURER := realme

# Build info
BUILD_FINGERPRINT := "google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=RMX2020 \
    PRODUCT_NAME=RMX2020 \
    PRIVATE_BUILD_DESC="walleye-user 8.1.0 OPM1.171019.011 4448085 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
