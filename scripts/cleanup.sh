#!/bin/bash

/bin/rm -f /etc/ssh/ssh_host_*
/bin/rm -f /etc/udev/rules.d/70-persistent-net.rules
/bin/rm -f /var/lib/dhclient/dhclient-eth0.leases
/bin/rm -rf /tmp/*
/bin/yum -y clean all
