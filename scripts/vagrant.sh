#!/bin/bash

/sbin/groupadd vagrant
/sbin/useradd vagrant -g vagrant -G wheel
/bin/echo "vagrant" | /bin/passwd --stdin vagrant

/bin/echo "%vagrant ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/vagrant
/bin/chmod 0440 /etc/sudoers.d/vagrant
/bin/cp /etc/sudoers /etc/sudoers.orig
/bin/sed -i "s/^\(.*requiretty\)$/#\1/" /etc/sudoers
/bin/echo 'Defaults env_keep += "HTTP_PROXY HTTPS_PROXY FTP_PROXY RSYNC_PROXY NO_PROXY"' >> /etc/sudoers

/bin/mkdir -pm 700 /home/vagrant/.ssh
/bin/curl -L https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub -o /home/vagrant/.ssh/authorized_keys
/bin/chmod 0600 /home/vagrant/.ssh/authorized_keys
/bin/chown -R vagrant:vagrant /home/vagrant/.ssh

/bin/date > /etc/vagrant_box_build_time
