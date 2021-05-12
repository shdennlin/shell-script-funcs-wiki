#!/bin/sh

# Ref: https://stackoverflow.com/a/28938235

NC='\033[0m' # No Color
GREEN='\033[0;32m'
YELLO='\033[0;33m'
RED='\033[0;31m'

INFO="${GREEN}INFO: ${NC}"
WARNING="${YELLO}WARNING: ${NC}"
ERROR="${RED}ERROR: ${NC}"

echo "$INFO"
echo "$WARNING"
echo "$ERROR"



