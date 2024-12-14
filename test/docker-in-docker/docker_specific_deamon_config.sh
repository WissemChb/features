#!/bin/bash

set -e

# Optional: Import test library
source dev-container-features-test-lib
# Definition specific tests
check "deamon config" bash -c "cat ~/.config/docker/deamon.json | grep 'http://x.x.x.x:2000'"
check "deamon config with right user" bash -c "ls -l ~/.config/docker/deamon.json | grep 'root'"

# Report result
reportResults