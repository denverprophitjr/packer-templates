#!/bin/bash

if [ $PACKER_BUILDER_TYPE = "vmware-iso" ]; then
  /bin/echo "Installing OpenVM tools."

  /bin/yum install -y open-vm-tools

  if [[ $? -eq 0 ]]; then
    /bin/echo "OpenVM tools successfully installed."
  else
    /bin/echo "Errors were found during OpenVM tools installation."
  fi
else
  /bin/echo "This is not a VMX machine, not installing OpenVM tools."
fi
