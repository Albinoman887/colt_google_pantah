# Boot animation
TARGET_SCREEN_HEIGHT := 2280
TARGET_SCREEN_WIDTH := 1080

TARGET_FLATTEN_APEX := false
TARGET_INCLUDE_CARRIER_SETTINGS := true
TARGET_USE_GOOGLE_TELEPHONY := true

TARGET_INCLUDE_CAMERA_GO := true
TARGET_SUPPORTS_LILY_EXPERIENCE := true
TARGET_INCLUDE_ADDITIONAL_GAPPS := true

# Inherit from telephony config
$(call inherit-product, vendor/pixel-additional/configs/telephony.mk)

# Inherit from apex config
$(call inherit-product, vendor/pixel-additional/configs/apex.mk)

# Inherit from gapps config
$(call inherit-product, vendor/pixel-additional/gapps/config.mk)

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp_panther.mk)
include device/google/pantah/device-aosp.mk

# Parts
$(call inherit-product-if-exists, vendor/google/pixelparts/pixelparts.mk)
$(call inherit-product-if-exists, vendor/google/pixelparts/powershare/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := custom_panther
PRODUCT_MODEL := Pixel 7
PRODUCT_BRAND := google
PRODUCT_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=panther \
    PRIVATE_BUILD_DESC="panther-user 13 TQ2A.230305.008 9595452 release-keys"

BUILD_FINGERPRINT := $(PRODUCT_OVERRIDE_FINGEPRINT)
