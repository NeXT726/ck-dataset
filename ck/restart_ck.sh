#!/bin/bash

sh /home/hsk/ck_stop.sh
sh /home/hsk/ck_clean.sh
sh /home/hsk/ck_start.sh
echo 3 > /proc/sys/vm/drop_caches