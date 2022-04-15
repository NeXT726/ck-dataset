#!/bin/bash

while read line
do
    echo "insert $line"
    cat /mnt/disk1/data/tpc-ds/data-10/$line.csv | clickhouse-client --format_csv_delimiter="|" --query="INSERT INTO $line FORMAT CSV" --max_partitions_per_insert_block=0
done < ../create_table/table.lst