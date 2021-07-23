#!/bin/bash

###############################################################################
# Make example for this keyboard (after setting up your build environment):   #
#     make preonic/rev2:default                                               #
#                                                                             #
# Install examples:                                                           #
#     make preonic/rev2:default:dfu         # For Preonic rev1 or rev2        #
#     make preonic/rev3:default:dfu-util    # For Preonic rev3                #
###############################################################################

qmk_dir="./qmk_firmware"
keyboard="preonic"
rev="rev1"
keymap="aiaiai_R1"
bootloader="dfu"

cd ${qmk_dir} && (
  rm -rfv .build/*
  make ${keyboard}/${rev}:${keymap}:${bootloader}
)
