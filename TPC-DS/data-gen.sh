#! /bin/bash

mkdir /mnt/disk1/data/tpc-ds/data-$1
/mnt/disk1/data/tpc-ds/dsdgen -scale $1 -dir /mnt/disk1/data/tpc-ds/data-$1 -parallel 8 -child 1 &
/mnt/disk1/data/tpc-ds/dsdgen -scale $1 -dir /mnt/disk1/data/tpc-ds/data-$1 -parallel 8 -child 2 &
/mnt/disk1/data/tpc-ds/dsdgen -scale $1 -dir /mnt/disk1/data/tpc-ds/data-$1 -parallel 8 -child 3 &
/mnt/disk1/data/tpc-ds/dsdgen -scale $1 -dir /mnt/disk1/data/tpc-ds/data-$1 -parallel 8 -child 4 &
/mnt/disk1/data/tpc-ds/dsdgen -scale $1 -dir /mnt/disk1/data/tpc-ds/data-$1 -parallel 8 -child 5 &
/mnt/disk1/data/tpc-ds/dsdgen -scale $1 -dir /mnt/disk1/data/tpc-ds/data-$1 -parallel 8 -child 6 &
/mnt/disk1/data/tpc-ds/dsdgen -scale $1 -dir /mnt/disk1/data/tpc-ds/data-$1 -parallel 8 -child 7 &
/mnt/disk1/data/tpc-ds/dsdgen -scale $1 -dir /mnt/disk1/data/tpc-ds/data-$1 -parallel 8 -child 8 &
