#!/bin/bash

BIN_DIR="/usr/bin/"
LIB_DIR="/usr/include/myc"

cp ./myc $BIN_DIR

if [ ! -d "$LIB_DIR" ]; then
  mkdir $LIB_DIR
fi
cp -r ./lib/* $LIB_DIR
