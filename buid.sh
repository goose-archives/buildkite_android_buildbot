#!/bin/bash

echo Building
. build/envsetup.sh
bash config.sh
breakfast "$LUNCH_TARGET"
mka mkbootimg
mka "$BUILDING_OPTIONS"
