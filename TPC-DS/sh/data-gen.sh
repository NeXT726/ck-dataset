#! /bin/bash

rm -rf /mnt/disk1/data/tpc-ds/data-$1/
mkdir /mnt/disk1/data/tpc-ds/data-$1
/mnt/disk1/data/tpc-ds/dsdgen -scale $1 -dir /mnt/disk1/data/tpc-ds/data-$1 /home/jianglind/tpcds-kit/tools/tpcds.idx &
