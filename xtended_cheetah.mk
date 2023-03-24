# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOT_ANIMATION_RES := 1440

# Inherit some common Project-Xtended stuff.
$(call inherit-product, vendor/xtended/config/common.mk)
$(call inherit-product, vendor/gms/gms_full.mk)

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp_cheetah.mk)
include device/google/pantah/device-aosp.mk

# Project-Xtended Xtras
WITH_GMS := true
TARGET_FACE_UNLOCK_SUPPORTED := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_PIXEL_CHARGER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_INCLUDE_NGA := true
TARGET_USE_GOOGLE_TELEPHONY := true

# Xtended Official Flags
XTENDED_BUILD_TYPE := OFFICIAL
XTENDED_BUILD_MAINTAINER := Pyrtle93

# Parts
$(call inherit-product-if-exists, vendor/google/pixelparts/pixelparts.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := xtended_cheetah
PRODUCT_MODEL := Pixel 7 Pro
PRODUCT_BRAND := google
PRODUCT_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=cheetah \
    PRIVATE_BUILD_DESC="cheetah-user 13 TQ2A.230305.008.C1 9619669 release-keys"

BUILD_FINGERPRINT := $(PRODUCT_OVERRIDE_FINGEPRINT)
