#!/bin/bash

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
