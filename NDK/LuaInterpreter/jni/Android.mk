# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := lua
LOCAL_SRC_FILES := lapi.c      ldebug.c  linit.c     loadlib.c \
    lstate.c   ltm.c      lzio.c      print.c \
		lauxlib.c   ldo.c     liolib.c    lobject.c   lstring.c  lua.c \
		lbaselib.c  ldump.c   llex.c      lopcodes.c  lstrlib.c  \
		lcode.c     lfunc.c   lmathlib.c  loslib.c    ltable.c   lundump.c \
		ldblib.c    lgc.c     lmem.c      lparser.c   ltablib.c  lvm.c \
		jni_api.c

include $(BUILD_SHARED_LIBRARY)
