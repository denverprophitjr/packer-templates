#!/bin/bash

if [ $PACKER_BUILDER_TYPE = "virtualbox-iso" ]; then
  /bin/echo "Installing VirtualBox Guest Additions."

  /bin/yum install -y bzip2 kernel-devel-$(uname -r) gcc make
  /bin/mount -o loop /root/VBoxGuestAdditions.iso /mnt
  /bin/sh /mnt/VBoxLinuxAdditions.run --nox11

  if [[ $? -eq 0 ]]; then
    /bin/echo "VirtualBox Guest Additions successfully installed."
  else
    /bin/echo "Errors were found during VirtualBox Guest Additions installation."
  fi

  /bin/umount /mnt/
  /bin/rm -f /root/VBoxGuestAdditions.iso
else
  /bin/echo "This is not a VirtualBox machine, not installing Guest Additions."
fi
