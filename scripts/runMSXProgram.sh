#!/bin/bash
if [[ -z "${OPENMSX_PATH}" ]]; then
  OPENMSX_PATH=/Applications/openMSX.app/Contents/MacOS
fi
PROGRAM_NAME=$1
EXTENSION=${PROGRAM_NAME##*\.}
ACTUAL_NAME=${PROGRAM_NAME%\.*}
MSX_FILE_NAME="${ACTUAL_NAME::8}.${EXTENSION::3}"

WORKING_DIR=$2
killall openmsx
(
  echo "<command>set renderer SDL</command>";
  echo "<command>set power on</command>";
  echo "<command>debug set_watchpoint write_mem 0xfffe {[debug read \"memory\" 0xfffe] == 0} {diska insert $WORKING_DIR}</command>";
  echo "<command>type_via_keybuf \\r\\r</command>"
  echo "<command>type_via_keybuf poke-2,0\\r</command>";
  echo "<command>type_via_keybuf run\"$MSX_FILE_NAME\r</command>";
) | $OPENMSX_PATH/openmsx -control stdio
