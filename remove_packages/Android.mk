LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := \
    Aperture \
    ConnMO \
    CalendarGooglePrebuilt \
    Drive \
    DCMO \
    DevicePolicyPrebuilt \
    DMService \
    Flash \
    GCS \
    GoogleCamera \
    MyVerizonServices \
    HbmSVManager \
    LegacyCamera \
    Maps \
    RecorderPrebuilt \
    SafetyHubPrebuilt \
	SoundAmplifierPrebuilt \
	ScribePrebuilt \
    TurboPrebuilt \
    VZWAPNLib \
    YouTube \
	YouTubeMusicPrebuilt

LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
