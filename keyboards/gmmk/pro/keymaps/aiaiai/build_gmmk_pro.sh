#!/bin/bash

###############################################################################
#																																							#
# Make example for this keyboard (after setting up your build environment):		#
#    make gmmk/pro:default																										#
#																																							#
# Flashing example for this keyboard:																					#
#																																							#
#     make gmmk/pro:default:flash																							#
#																																							#
# To reset the board into bootloader mode, do one of the following:						#
#																																							#
# * Hold the Reset switch mounted on the bottom side of the PCB while					#
#   connecting the USB cable																									#
# * Hold the Escape key while connecting the USB cable (also erases						#
#		persistent settings)																											#
# * Fn+Backslash will reset the board to bootloader mode if you have flashed 	#
#		the default QMK keymap																										#
#																																							#
###############################################################################

qmk_dir="./qmk_firmware"
keyboard="gmmk"
model="pro"
keymap="aiaiai_gmmk_pro"
bootloader="flash"

# rm -rfv ./qmk_firmware/.build/*

cd ${qmk_dir} && (
	echo "\n!!!! FLASHING: %s/%s:%s !!!!\n" ${keyboard} ${model} ${keymap}
	rm -rfv .build/*
  make ${keyboard}/${model}:${keymap}:${bootloader}
)
