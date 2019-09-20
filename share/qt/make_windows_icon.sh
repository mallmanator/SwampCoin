#!/bin/bash
# create multiresolution windows icon
#mainnet
ICON_SRC=../../src/qt/res/icons/swamp.png
ICON_DST=../../src/qt/res/icons/swamp.ico
convert ${ICON_SRC} -resize 16x16 swamp-16.png
convert ${ICON_SRC} -resize 32x32 swamp-32.png
convert ${ICON_SRC} -resize 48x48 swamp-48.png
convert swamp-16.png swamp-32.png swamp-48.png ${ICON_DST}
#testnet
ICON_SRC=../../src/qt/res/icons/swamp_testnet.png
ICON_DST=../../src/qt/res/icons/swamp_testnet.ico
convert ${ICON_SRC} -resize 16x16 swamp-16.png
convert ${ICON_SRC} -resize 32x32 swamp-32.png
convert ${ICON_SRC} -resize 48x48 swamp-48.png
convert swamp-16.png swamp-32.png swamp-48.png ${ICON_DST}
rm swamp-16.png swamp-32.png swamp-48.png
