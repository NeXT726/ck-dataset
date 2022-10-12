#!/bin/bash

clickhouse-client --query="SYSTEM DROP FILESYSTEM CACHE"

echo 3 > /proc/sys/vm/drop_caches

for file in sql/*
do 
    RES=$(clickhouse-client --time --format=Null --queries-file=$file 2>&1)
    echo "$file:$RES"
done
