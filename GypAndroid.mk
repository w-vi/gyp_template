# This file is generated by gyp; do not edit.


LOCAL_PATH := $(call my-dir)
GYP_CONFIGURATION ?= Default
GYP_VAR_PREFIX ?=

include $(LOCAL_PATH)/gyptest.target.mk
include $(LOCAL_PATH)/module1.target.mk
include $(LOCAL_PATH)/module2.target.mk

# "gyp_all_modules" is a concatenation of the "gyp_all_modules" targets from
# all the included sub-makefiles. This is just here to clarify.
gyp_all_modules:
