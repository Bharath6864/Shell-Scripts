#!/bin/bash

# clone the repository
git clone https://github.com/Bharath6864/Shell-Scripts.git

cd Shell-Scripts/hostname

#convert text to ini (inventory file)
echo "[VMS]" > hostname.ini
cat hostname.txt >> hostname.ini

# running the ansible adhoc command to reboot the servers

#VMS is not but name of list [VMS] in ini file

ansible -i hostname.ini VMS -u ubuntu reboot -m reboot --become

