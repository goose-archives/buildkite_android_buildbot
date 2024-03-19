#!/bin/bash

echo Chmod-ding all scripts
chmod +x config.sh
chmod +x enviroment.sh
chmod +x sync.sh
chmod +x buid.sh

echo Running config script
bash config.sh

echo Running enviroment setup script
bash enviroment.sh

echo Running sync script
bash sync.sh

echo Running build script
bash buid.sh
