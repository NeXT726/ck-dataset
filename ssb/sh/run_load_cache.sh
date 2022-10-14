#!/bin/bash

sf=100
LOAD_DIR=/mnt/gp3-800/ssb-data
#$1为第一个传参，从local、s3、seaweed、seaweed_s3中选
CREATE_DIR=../load/single/single_in_s3
INSERT_DIR=../load/insert-cache
ip=127.0.0.1
port=9000

clickhouse-client --query="SYSTEM DROP FILESYSTEM CACHE"

rm -rf /mnt/gp3-800/ck-cache/*
rm -rf /mnt/nvme/ck-cache/*
rm -rf /mnt/ck-cache/*

echo 'drop table customer/part/supplier/lineorder/date'
clickhouse-client -h $ip --port $port --query="DROP TABLE IF EXISTS customer"
clickhouse-client -h $ip --port $port --query="DROP TABLE IF EXISTS lineorder"
clickhouse-client -h $ip --port $port --query="DROP TABLE IF EXISTS part"
clickhouse-client -h $ip --port $port --query="DROP TABLE IF EXISTS supplier"
# clickhouse-client -h $ip --port $port --query="DROP TABLE IF EXISTS date"

echo 'create table customer/part/supplier/lineorder/date'
cat $CREATE_DIR/create_customer_into_single.sql | clickhouse-client -h $ip --port $port
cat $CREATE_DIR/create_lineorder_into_single.sql | clickhouse-client -h $ip --port $port
cat $CREATE_DIR/create_part_into_single.sql | clickhouse-client -h $ip --port $port
cat $CREATE_DIR/create_supplier_into_single.sql | clickhouse-client -h $ip --port $port
# cat $CREATE_DIR/create_date_into_single.sql | clickhouse-client -h $ip --port $port

echo 'load customer' 1>&2
date 1>&2 && time clickhouse-client -h $ip --port $port --queries-file=$INSERT_DIR/customer.sql < $LOAD_DIR/customer.tbl
clickhouse-client -h $ip --port $port --query "SELECT COUNT(*) FROM customer"

echo 'load part' 1>&2
date 1>&2 && time clickhouse-client -h $ip --port $port --queries-file=$INSERT_DIR/part.sql < $LOAD_DIR/part.tbl
clickhouse-client -h $ip --port $port --query "SELECT COUNT(*) FROM part"

echo 'load supplier' 1>&2
date 1>&2 && time clickhouse-client -h $ip --port $port --queries-file=$INSERT_DIR/supplier.sql < $LOAD_DIR/supplier.tbl
clickhouse-client -h $ip --port $port --query "SELECT COUNT(*) FROM supplier"

# echo 'load date'
# date 1>&2 && time clickhouse-client -h $ip --port $port --queries-file=$INSERT_DIR/date.sql < $LOAD_DIR/date.tbl
# clickhouse-client -h $ip --port $port --query "SELECT COUNT(*) FROM date"

echo 'load lineorder' 1>&2
date 1>&2 && time clickhouse-client -h $ip --port $port --queries-file=$INSERT_DIR/lineorder.sql < $LOAD_DIR/lineorder.tbl
clickhouse-client -h $ip --port $port --query "SELECT COUNT(*) FROM lineorder"


# cp /var/log/clickhouse-server/clickhouse-server.log ./write-s3-lz4.log
