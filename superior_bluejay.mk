# Inherit some common stuff.
$(call inherit-product, vendor/superior/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/gs101/superior_common.mk)
$(call inherit-product, device/google/bluejay/device-superior.mk)
$(call inherit-product, device/google/bluejay/aosp_bluejay.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := superior_bluejay
PRODUCT_MODEL := Pixel 6a
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=bluejay \
    PRIVATE_BUILD_DESC="bluejay-user 13 TQ3A.230805.001 10316531 release-keys"

BUILD_FINGERPRINT := google/bluejay/bluejay:13/TQ3A.230805.001/10316531:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, vendor/google/bluejay/bluejay-vendor.mk)
