#! /bin/bash

./dsdgen -scale 10 -dir /home/benchmark/tpc-ds/data/data-10 -parallel 8 -child 1 &
./dsdgen -scale 10 -dir /home/benchmark/tpc-ds/data/data-10 -parallel 8 -child 2 &
./dsdgen -scale 10 -dir /home/benchmark/tpc-ds/data/data-10 -parallel 8 -child 3 &
./dsdgen -scale 10 -dir /home/benchmark/tpc-ds/data/data-10 -parallel 8 -child 4 &
./dsdgen -scale 10 -dir /home/benchmark/tpc-ds/data/data-10 -parallel 8 -child 5 &
./dsdgen -scale 10 -dir /home/benchmark/tpc-ds/data/data-10 -parallel 8 -child 6 &
./dsdgen -scale 10 -dir /home/benchmark/tpc-ds/data/data-10 -parallel 8 -child 7 &
./dsdgen -scale 10 -dir /home/benchmark/tpc-ds/data/data-10 -parallel 8 -child 8 &
