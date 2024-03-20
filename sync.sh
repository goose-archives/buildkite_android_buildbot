#!/bin/bash

export KERNEL_REPO_URL=https://github.com/crdroidandroid/android_kernel_xiaomi_chime.git
export KERNEL_REPO_BRANCH=pyro
export VENDOR_REPO_URL=https://github.com/KiranPranay/vendor_xiaomi_juice.git
export VENDOR_REPO_BRANCH=11
export DEVICE_TREE_REPO_URL=https://github.com/crdroidandroid/android_device_xiaomi_chime.git
export DEVICE_TREE_REPO_BRANCH=11.0
export DEVICE_CODENAME=chime
export DEVICE_VENDOR=xiaomi
export MANIFEST_URL=https://github.com/Halium/android.git
export MANIFEST_BRANCH=halium-11.0
export MANIFEST_INIT_OPTIONS=
export SYNC_OPTIONS=-j$(nproc --all)

echo Downloading sources
mkdir making-zone && cd making-zone

repo init -u "$MANIFEST_URL" -b "$MANIFEST_BRANCH"
repo sync "$SYNC_OPTIONS"

echo Downloading proprietary repositories
mkdir device/"$DEVICE_VENDOR"
mkdir vendor/"$DEVICE_VENDOR"
mkdir kernel/"$DEVICE_VENDOR"
git clone "$KERNEL_REPO_URL" -b "$KERNEL_REPO_BRANCH" kernel/"$DEVICE_VENDOR"/"$DEVICE_CODENAME"
git clone "$VENDOR_REPO_URL" -b "$VENDOR_REPO_BRANCH" vendor/"$DEVICE_VENDOR"/"$DEVICE_CODENAME"
git clone "$DEVICE_TREE_REPO_URL" -b "$DEVICE_TREE_REPO_BRANCH" device/"$DEVICE_VENDOR"/"$DEVICE_CODENAME"

echo Sync successful
