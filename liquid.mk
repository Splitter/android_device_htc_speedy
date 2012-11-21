# Inherit AOSP device configuration for speedy.
$(call inherit-product, device/htc/speedy/full_speedy.mk)

# Telephony
$(call inherit-product, vendor/liquid/config/common_cdma.mk)

# Phone
$(call inherit-product, vendor/liquid/config/common_phone.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := liquid_speedy
PRODUCT_BRAND := sprint
PRODUCT_DEVICE := speedy
PRODUCT_MODEL := PG06100
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=GRI40 PRODUCT_NAME=htc_speedy BUILD_FINGERPRINT=sprint/htc_speedy/speedy:2.3.3/GRI40/74499:user/release-keys PRIVATE_BUILD_DESC="2.76.651.4 CL74499 release-keys"

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := SplitV
PRODUCT_VERSION_DEVICE_SPECIFIC := Alpha1

PRODUCT_MOTD :="\n\n\n------------------------------------------------\nLIQUIDSMOOTH JELLYBEAN(RC8) ALPHA 1\n------------------------------------------------\n\nPlease remember this is an alpha build and may have problems.\nLets keep our speedy alive and kicking!!\n------------------------------------------------\n"


#PRODUCT_PACKAGES += \
#    Camera

# Hot reboot
#PRODUCT_PACKAGE_OVERLAYS += \
#    vendor/ev/overlay/hot_reboot

## Copy compatible prebuilt files
#PRODUCT_COPY_FILES +=  \
#    vendor/ev/prebuilt/wvga/media/bootanimation.zip:system/media/bootanimation.zip

# USB
ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mass_storage
