#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)



# Device config
TARGET_HAS_UDFPS := true
TARGET_ENABLE_BLUR := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# TARGET_BUILD_PACKAGE options:
# 1 - vanilla (default)
# 2 - microg
# 3 - gapps
TARGET_BUILD_PACKAGE := 1

# TARGET_LAUNCHER options:
# 1 - stock (default)
# 2 - lawnchair
# 3 - pixel (valid only on gapps builds)
TARGET_LAUNCHER := 2

# GAPPS (valid only for GAPPS builds)
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
# TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Debugging
TARGET_INCLUDE_MATLOG := false

# Maintainer
ALPHA_BUILD_TYPE := Official
ALPHA_MAINTAINER := IczYn


TARGET_HAS_UDFPS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_PIXEL_FRAMEWORK := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_PIXEL_BOOT_ANIMATION_RES := 1080
TARGET_IS_PIXEL := true
TARGET_IS_PIXEL_6 := true
TARGET_EXCLUDES_AUXIO := true
TARGET_EXCLUDES_VIA := true
BUILD_GOOGLE_CONTACTS := true
BUILD_GOOGLE_DIALER := true
BUILD_GOOGLE_MESSAGE := true

# Inherit device configuration
$(call inherit-product, device/google/bluejay/aosp_bluejay.mk)
$(call inherit-product, device/google/gs101/lineage_common.mk)
$(call inherit-product, device/google/bluejay/device-lineage.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6a
PRODUCT_NAME := lineage_bluejay

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=bluejay \
    PRIVATE_BUILD_DESC="bluejay-user 14 AP2A.240705.004 11875680 release-keys"

BUILD_FINGERPRINT := google/bluejay/bluejay:14/AP2A.240705.004/11875680:user/release-keys

$(call inherit-product, vendor/google/bluejay/bluejay-vendor.mk)
