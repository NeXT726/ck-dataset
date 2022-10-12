#!/bin/bash

clickhouse-client --query="SYSTEM DROP FILESYSTEM CACHE"

for file in sql/*
do 
    echo "$file:" && clickhouse-client --time --queries-file=$file
done
