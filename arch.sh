#!/bin/bash
# Main script to launch child scripts for other tasks
./scripts/startup.sh|&tee startup.log
./scripts/archnstall.sh|&tee archinstall.log
./scripts/postinstall.sh|&tee postinstall.log
echo "done!!"