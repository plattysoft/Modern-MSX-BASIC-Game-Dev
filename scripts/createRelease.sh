#!/bin/bash
if [[ -z "${OPENMSX_PATH}" ]]; then
  OPENMSX_PATH=/Applications/openMSX.app/Contents/MacOS
fi
PROJECT_DIR=$1

cd $PROJECT_DIR
PWD=${PWD}
GAME_NAME=`basename $PWD`

echo "Building release for $GAME_NAME"
(
  echo "<command>set throttle off</command>";
  echo "<command>diskmanipulator create $GAME_NAME.dsk 720</command>";
  echo "<command>virtual_drive $GAME_NAME.dsk</command>";
  echo "<command>diskmanipulator import virtual_drive src/</command>";

  echo "<command>debug set_watchpoint write_mem 0xfffe {[debug read \"memory\" 0xfffe] == 0} {diska insert $GAME_NAME.dsk}</command>";
  
  echo "<command>set power on</command>";
  echo "<command>type_via_keybuf \\r\\r</command>"
  echo "<command>type_via_keybuf poke-2,0\\r</command>";

  echo "<command>debug set_watchpoint write_mem 0xfffe {[debug read \"memory\" 0xfffe] == 1} {quit}</command>";
for filename in src/*.bas
do
  # Remove the path
  PROGRAM_NAME=${filename##*/}
  # Take the extension
  EXTENSION=${PROGRAM_NAME##*\.}
  # Take the first 8 characters
  ACTUAL_NAME=${PROGRAM_NAME%\.*}
  # Put them back together
  FILE="${ACTUAL_NAME::8}.${EXTENSION::3}"
  echo "<command>type_via_keybuf load\"$FILE\r</command>";
  echo "<command>type_via_keybuf save\"$FILE\r</command>";
done

  echo "<command>type_via_keybuf poke-2,1\\r</command>";
) | $OPENMSX_PATH/openmsx -control stdio

mkdir output 2>/dev/null
rm output/* 2>/dev/null

mv $GAME_NAME.dsk output/

dsk2rom -fc 1 output/$GAME_NAME.dsk output/$GAME_NAME.rom 
