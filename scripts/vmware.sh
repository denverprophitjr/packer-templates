#!/bin/bash

if [ $PACKER_BUILDER_TYPE = "vmware-iso" ]; then
  /bin/echo "Installing VMware tools."

  /bin/yum install -y open-vm-tools

  if [[ $? -eq 0 ]]; then
    /bin/echo "VMware tools successfully installed."
  else
    /bin/echo "Errors were found during VMware tools installation."
  fi
else
  /bin/echo "This is not a VMware machine, not installing VMware Tools."
fi
