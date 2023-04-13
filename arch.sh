#!/bin/bash
# Main script to launch child scripts for other tasks
./scripts/startup.sh|&tee startup.log
./scripts/preinstall.sh|&tee preinstall.log
echo "done!!"