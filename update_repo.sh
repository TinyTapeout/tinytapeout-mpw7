#!/bin/bash
set -e
git remote add upstream https://github.com/mattvenn/wokwi-verilog-gds-test
git remote update
git checkout -b tmp upstream/main
git rebase --onto main 748631d2f63cd4fdb4089b7e2cfaffc3f672f3c4 upstream/main
git branch updated
git branch -D tmp
git checkout updated
