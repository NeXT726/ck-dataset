#!/bin/bash

while read line
do
    echo "DROP & CREATE $line" &&
    clickhouse-client --query="DROP TABLE IF EXISTS $line" &&
    cat ../create_table/$line.sql | clickhouse-client
done < ../create_table/table.lst

echo "CK tables:"
clickhouse-client --query="show tables"