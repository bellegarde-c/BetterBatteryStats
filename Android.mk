LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := privapp-permissions-com.asksven.betterbatterystats_xdaedition.privileged.xml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/permissions
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := BetterBatteryStats
LOCAL_SRC_FILES := com.asksven.betterbatterystats.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_REQUIRED_MODULES := privapp-permissions-com.asksven.betterbatterystats_xdaedition.privileged.xml
include $(BUILD_PREBUILT)

