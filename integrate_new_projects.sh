#!/bin/bash

# environment
. setuptokens.sh
. ~/work/asic-workshop/shuttle7/setup.sh

# unzip gds files
make uncompress

# fetch designs
./configure.py --update-designs
# update caravel config
./configure.py --update-caravel

echo 'now run: make user_project_wrapper'

