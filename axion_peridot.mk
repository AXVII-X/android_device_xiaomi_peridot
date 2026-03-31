#
# Copyright (C) 2024 The axionOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common axion stuff.
$(call inherit-product, vendor/axion/config/common_full_phone.mk)

# Inherit from peridot device
$(call inherit-product, device/xiaomi/peridot/device.mk)

PRODUCT_NAME := axion_peridot
PRODUCT_DEVICE := peridot
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 24069PC21G

PRODUCT_SYSTEM_NAME := peridot_global
PRODUCT_SYSTEM_DEVICE := peridot

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="peridot_global-user 16 BP2A.250605.031.A3 OS3.0.4.0.WNPMIXM release-keys" \
    BuildFingerprint=POCO/peridot_global/peridot:16/BP2A.250605.031.A3/OS3.0.4.0.WNPMIXM:user/release-keys \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Flags
TARGET_ENABLE_BLUR := true

# Axion Device Configuration
AXION_MAINTAINER := AXVII_X
AXION_PROCESSOR := Snapdragon_8s_Gen3

# Camera Info
AXION_CAMERA_REAR_INFO := 50,8
AXION_CAMERA_FRONT_INFO := 20

# Graphics & Display
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTED_REFRESH_RATES := 60,90,120

# Features & Performance
TARGET_INCLUDE_AXFX := false
PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := walt


