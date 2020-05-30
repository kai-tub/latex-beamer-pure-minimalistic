#!/bin/bash
# Download and run the `auto` tool -> With the provided .autorc file,
# it will trigger a call to update_package_versioning.sh
curl -kL -o - https://github.com/intuit/auto/releases/latest/download/auto-linux.gz | gunzip > ~/auto 
chmod a+x ~/auto
~/auto shipit
