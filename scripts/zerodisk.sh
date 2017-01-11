#!/bin/bash

/bin/dd if=/dev/zero of=/EMPTY bs=1M
/bin/rm -f /EMPTY

/usr/bin/sync
