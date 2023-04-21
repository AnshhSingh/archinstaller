#!/bin/bash
# Main script to launch child scripts for other tasks
chmod +x scripts/startup.sh
chmod +x scripts/archinstall.sh
./scripts/startup.sh |& tee startup.log
./scripts/archinstall.sh |& tee archinstall.log
echo "done!!"
