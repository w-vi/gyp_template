# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE := lib_android_app_gyp
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_TARGET_ARCH := $(TARGET_$(GYP_VAR_PREFIX)ARCH)
gyp_intermediate_dir := $(call local-intermediates-dir,,$(GYP_VAR_PREFIX))
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared,,,$(GYP_VAR_PREFIX))

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES := \
	$(call intermediates-dir-for,STATIC_LIBRARIES,module1_gyp,,,$(GYP_VAR_PREFIX))/module1_gyp.a \
	$(call intermediates-dir-for,STATIC_LIBRARIES,module2_gyp,,,$(GYP_VAR_PREFIX))/module2_gyp.a

GYP_GENERATED_OUTPUTS :=

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

LOCAL_GENERATED_SOURCES :=

GYP_COPIED_SOURCE_ORIGIN_DIRS :=

LOCAL_SRC_FILES := \
	app/main.c \
	sources/android/native_app_glue/android_native_app_glue.c


# Flags passed to both C and C++ files.
MY_CFLAGS_Default :=

MY_DEFS_Default :=


# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES_Default := \
	$(LOCAL_PATH)/module1 \
	$(LOCAL_PATH)/module2 \
	$(LOCAL_PATH)/sources/android/native_app_glue


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Default :=


LOCAL_CFLAGS := $(MY_CFLAGS_$(GYP_CONFIGURATION)) $(MY_DEFS_$(GYP_CONFIGURATION))
LOCAL_C_INCLUDES := $(GYP_COPIED_SOURCE_ORIGIN_DIRS) $(LOCAL_C_INCLUDES_$(GYP_CONFIGURATION))
LOCAL_CPPFLAGS := $(LOCAL_CPPFLAGS_$(GYP_CONFIGURATION))
LOCAL_ASFLAGS := $(LOCAL_CFLAGS)
### Rules for final target.

LOCAL_LDFLAGS_Default := \
	-landroid \
	-llog


LOCAL_LDFLAGS := $(LOCAL_LDFLAGS_$(GYP_CONFIGURATION))

LOCAL_STATIC_LIBRARIES := \
	module1_gyp \
	module2_gyp

# Enable grouping to fix circular references
LOCAL_GROUP_STATIC_LIBRARIES := true

LOCAL_SHARED_LIBRARIES :=

# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: lib_android_app_gyp

# Alias gyp target name.
.PHONY: android_app
android_app: lib_android_app_gyp

LOCAL_PRELINK_MODULE := false
include $(BUILD_SHARED_LIBRARY)