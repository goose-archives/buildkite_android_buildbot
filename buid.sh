#!/bin/bash

LUNCH_TARGET=lineage_chime-eng
BUILDING_OPTIONS=-j$(nproc --all)

echo Building
. build/envsetup.sh
bash config.sh
breakfast "$LUNCH_TARGET"
mka mkbootimg
mka "$BUILDING_OPTIONS"
