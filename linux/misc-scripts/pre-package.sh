#! /bin/bash
# Run this script prior to running vagrant package
# It deletes files containing network credentials 
#    and zeros out empty space, making the box file smaller.
sudo rm /etc/apt/apt.conf/80proxy
rm ~/.bash_aliases

sudo apt-get clean

sudo dd if=/dev/zero of=/EMPTY bs=1M
sudo rm -f /EMPTY

cat /dev/null > ~/.bash_history && history -c && exit
