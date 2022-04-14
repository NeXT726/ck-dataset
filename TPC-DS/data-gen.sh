#! /bin/bash

mkdir /mnt/disk1/data/tpc-ds/data-$1
./dsdgen -scale $1 -dir /mnt/disk1/data/tpc-ds/data-$1 -parallel 8 -child 1 &
./dsdgen -scale $1 -dir /mnt/disk1/data/tpc-ds/data-$1 -parallel 8 -child 2 &
./dsdgen -scale $1 -dir /mnt/disk1/data/tpc-ds/data-$1 -parallel 8 -child 3 &
./dsdgen -scale $1 -dir /mnt/disk1/data/tpc-ds/data-$1 -parallel 8 -child 4 &
./dsdgen -scale $1 -dir /mnt/disk1/data/tpc-ds/data-$1 -parallel 8 -child 5 &
./dsdgen -scale $1 -dir /mnt/disk1/data/tpc-ds/data-$1 -parallel 8 -child 6 &
./dsdgen -scale $1 -dir /mnt/disk1/data/tpc-ds/data-$1 -parallel 8 -child 7 &
./dsdgen -scale $1 -dir /mnt/disk1/data/tpc-ds/data-$1 -parallel 8 -child 8 &
