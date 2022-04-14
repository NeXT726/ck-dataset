#! /bin/bash

rm -rf /mnt/disk1/data/tpc-ds/data-10/
mkdir /mnt/disk1/data/tpc-ds/data-10
/mnt/disk1/data/tpc-ds/dsdgen -scale $1 -dir /mnt/disk1/data/tpc-ds/data-$1 -parallel 8 -child 1 -DISTRIBUTIONS /home/jianglind/tpcds-kit/tools/tpcds.idx &
/mnt/disk1/data/tpc-ds/dsdgen -scale $1 -dir /mnt/disk1/data/tpc-ds/data-$1 -parallel 8 -child 2 -DISTRIBUTIONS /home/jianglind/tpcds-kit/tools/tpcds.idx &
/mnt/disk1/data/tpc-ds/dsdgen -scale $1 -dir /mnt/disk1/data/tpc-ds/data-$1 -parallel 8 -child 3 -DISTRIBUTIONS /home/jianglind/tpcds-kit/tools/tpcds.idx &
/mnt/disk1/data/tpc-ds/dsdgen -scale $1 -dir /mnt/disk1/data/tpc-ds/data-$1 -parallel 8 -child 4 -DISTRIBUTIONS /home/jianglind/tpcds-kit/tools/tpcds.idx &
/mnt/disk1/data/tpc-ds/dsdgen -scale $1 -dir /mnt/disk1/data/tpc-ds/data-$1 -parallel 8 -child 5 -DISTRIBUTIONS /home/jianglind/tpcds-kit/tools/tpcds.idx &
/mnt/disk1/data/tpc-ds/dsdgen -scale $1 -dir /mnt/disk1/data/tpc-ds/data-$1 -parallel 8 -child 6 -DISTRIBUTIONS /home/jianglind/tpcds-kit/tools/tpcds.idx &
/mnt/disk1/data/tpc-ds/dsdgen -scale $1 -dir /mnt/disk1/data/tpc-ds/data-$1 -parallel 8 -child 7 -DISTRIBUTIONS /home/jianglind/tpcds-kit/tools/tpcds.idx &
/mnt/disk1/data/tpc-ds/dsdgen -scale $1 -dir /mnt/disk1/data/tpc-ds/data-$1 -parallel 8 -child 8 -DISTRIBUTIONS /home/jianglind/tpcds-kit/tools/tpcds.idx &
