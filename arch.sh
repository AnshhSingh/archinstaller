#!/bin/bash
# Main script to launch child scripts for other tasks
./scripts/install.sh|&tee install.log
echo "done!!"