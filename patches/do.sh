#!/bin/bash
cd ../../../..
cd system/core
patch -p1 < ../../device/doogee/x5/patches/system_core/system_core.patch
patch -p1 < ../../device/doogee/x5/patches/system_core/system_core-4.patch
patch -p1 < ../../device/doogee/x5/patches/system_core/system_core-3.patch
patch -p1 < ../../device/doogee/x5/patches/system_core/system_core-2.patch
patch -p1 < ../../device/doogee/x5/patches/system_core/system_core-5.patch
cd ../..
cd bionic
patch -p1 < ../device/doogee/x5/patches/bionic/bionic.patch
cd ..
cd system/sepolicy
patch -p1 < ../../device/doogee/x5/patches/system_sepolicy/system_sepolicy.patch
cd ../..
cd frameworks/av
patch -p1 < ../../device/doogee/x5/patches/frameworks_av/frameworks_av.patch
cd ../..
cd frameworks/native
patch -p1 < ../../device/doogee/x5/patches/frameworks_native/frameworks_native.patch
cd ../..
cd frameworks/base
patch -p1 < ../../device/doogee/x5/patches/frameworks_base/frameworks_base.patch
patch -p1 < ../../device/doogee/x5/patches/frameworks_base/frameworks_base-2.patch
patch -p1 < ../../device/doogee/x5/patches/frameworks_base/frameworks_base-3.patch
cd ../..
cd system/netd
patch -p1 < ../../device/doogee/x5/patches/system_netd/system_netd.patch
cd ../..
cd external/wpa_supplicant_8
patch -p1 < ../../device/doogee/x5/patches/external_wpa_supplicant_8/external_wpa_supplicant_8.patch
patch -p1 < ../../device/doogee/x5/patches/external_wpa_supplicant_8/external_wpa_supplicant_8-2.patch
cd ../..
cd packages/apps/Settings
patch -p1 < ../../../device/doogee/x5/patches/package_apps_settings/package_apps_settings.patch
patch -p1 -b < ../../../device/doogee/x5/patches/package_apps_settings/package_apps_settings-2.patch
git clean -f -d
cd ../../..
