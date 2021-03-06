# Copyright 2017 IBM Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Set default variables when host=ppc64, targeting ppc64.

# Generate 64-bit binaries by default.
COMPILER := 64
BUILD_TARGET_ARCH32 := powerpc
BUILD_TARGET_ARCH64 ?= powerpc64

include $(CONFIG)/arch/default.mk

TARGET := $(CTARGET_64)
ALTERNATE_TARGET := $(CTARGET_32)
DEFAULT_CPU := default64
HOST := $(CTARGET_64)
CROSS_BUILD := no
ENV_BUILD_ARCH := 32
