#!/bin/bash
# Android Buildbot by gooseprjkt
# This is configuration file, specify here any needed variables
# e.g. specify DEVICE_VENDOR=xiaomi, or other
# Read README for configuration docs
# DO NOT EDIT if you don't know what are you doing!
# It is containing all needed info,
# you will get a failed build if you don't read the docs!
# Adding anything there will not give any effect.

export DEVICE_CODENAME=chime
export DEVICE_VENDOR=xiaomi
export MANIFEST_URL=https://github.com/Halium/android.git
export MANIFEST_BRANCH=halium-11.0
export MANIFEST_INIT_OPTIONS=
export SYNC_OPTIONS=-j$(nproc --all)
export LUNCH_TARGET=lineage_chime-eng
export BUILDING_OPTIONS=-j$(nproc --all)
export KERNEL_REPO_URL=https://github.com/crdroidandroid/android_kernel_xiaomi_chime.git
export KERNEL_REPO_BRANCH=pyro
export VENDOR_REPO_URL=https://github.com/KiranPranay/vendor_xiaomi_juice.git
export VENDOR_REPO_BRANCH=11
export DEVICE_TREE_REPO_URL=https://github.com/crdroidandroid/android_device_xiaomi_chime.git
export DEVICE_TREE_REPO_BRANCH=11.0

# Now specify here any enviroment options,
# like ALLOW_MISSING_DEPENDENCIES=true
export ALLOW_MISSING_DEPENDENCIES=true



