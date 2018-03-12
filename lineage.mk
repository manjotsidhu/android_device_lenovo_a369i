# Full base
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Needed stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Call device specific makefile
$(call inherit-product, device/lenovo/a369i/lineage_a369i.mk)

LOCAL_PATH := device/lenovo/a369i

# Common CM stuff
CM_BUILD := a369i

$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=7.1.2/MRA58M/2280749:user/release-keys PRIVATE_BUILD_DESC="a369i-user 7.1.2 MRA58M 2280749 release-keys"

PRODUCT_NAME := lineage_a369i
PRODUCT_DEVICE := a369i
PRODUCT_BRAND := lenovo
PRODUCT_MANUFACTURER := Mediatek
PRODUCT_MODEL := Lenovo A369i

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="a369i"

# Correct bootanimation size for the screen
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Root options
WITH_SU=true

# 3rd party apps
PRODUCT_PACKAGES += \
    AdAway \
    MiXplorer
    
# Equalizer
WITH_DSPMANAGER=true

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/root/init.mt6572.rc:root/init.mt6572.rc \
    $(LOCAL_PATH)/rootdir/root/fstab.mt6572:root/fstab.mt6572
