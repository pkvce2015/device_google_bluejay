# Inherit some common stuff.
$(call inherit-product, vendor/calyx/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/gs101/calyx_common.mk)
$(call inherit-product, device/google/bluejay/device-calyx.mk)
$(call inherit-product, device/google/bluejay/aosp_bluejay.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := calyx_bluejay
PRODUCT_MODEL := Pixel 6a
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=bluejay \
    PRIVATE_BUILD_DESC="bluejay-user 13 TQ1A.221205.011 9244662 release-keys"

BUILD_FINGERPRINT := google/bluejay/bluejay:13/TQ1A.221205.011/9244662:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, vendor/google/bluejay/bluejay-vendor.mk)
