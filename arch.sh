#!/bin/bash
# Main script to launch child scripts for other tasks
./scripts/preinstall.sh|&tee preinstall.log
echo "done!!"