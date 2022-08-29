#!/bin/bash
set -e
make compress
git add -u .
git add gds/ lef/ verilog/gl/ verilog/rtl/
