#!/bin/bash
if [[ -z "${OPENMSX_PATH}" ]]; then
  OPENMSX_PATH=/Applications/openMSX.app/Contents/MacOS
fi
PROGRAM_NAME=$1
killall openmsx
rm -Rf /tmp/tmpdsk 2>/dev/null
mkdir /tmp/tmpdsk
cp $PROGRAM_NAME /tmp/tmpdsk/autoexec.bas
$OPENMSX_PATH/openmsx -diska /tmp/tmpdsk -cart MSX-BASIC-KUN.MX1
