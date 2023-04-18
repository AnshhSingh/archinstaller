#!/bin/bash
# Main script to launch child scripts for other tasks
./scripts/startup.sh|&tee startup.log
./scripts/archinstall.sh|&tee archinstall.log
echo "done!!"