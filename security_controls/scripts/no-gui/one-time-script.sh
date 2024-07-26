#!/bin/bash

if [ -e /tmp/first_boot ]
then
   rm /tmp/first_boot
   exec > /root/security_controls/elcn_first_boot.log 2>&1
   /root/security_controls/scripts/no-gui/security-commands.sh
fi
