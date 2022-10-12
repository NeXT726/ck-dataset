#!/bin/bash

sf=100
LOAD_DIR=/mnt/gp3-800/ssb-data
#$1为第一个传参，从local、s3、seaweed、seaweed_s3中选
CREATE_DIR=../load/single/single_in_$1
ip=127.0.0.1
port=9000

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

echo 'load customer'
date 1>&2 && time clickhouse-client -h $ip --port $port --query "INSERT INTO customer FORMAT CSV" < $LOAD_DIR/customer.tbl
clickhouse-client -h $ip --port $port --query "SELECT COUNT(*) FROM customer"

echo 'load part'
date 1>&2 && time clickhouse-client -h $ip --port $port --query "INSERT INTO part FORMAT CSV" < $LOAD_DIR/part.tbl
clickhouse-client -h $ip --port $port --query "SELECT COUNT(*) FROM part"

echo 'load supplier'
date 1>&2 && time clickhouse-client -h $ip --port $port --query "INSERT INTO supplier FORMAT CSV" < $LOAD_DIR/supplier.tbl
clickhouse-client -h $ip --port $port --query "SELECT COUNT(*) FROM supplier"

echo 'load lineorder'
date 1>&2 && time clickhouse-client -h $ip --port $port --query "INSERT INTO lineorder FORMAT CSV" < $LOAD_DIR/lineorder.tbl
clickhouse-client -h $ip --port $port --query "SELECT COUNT(*) FROM lineorder"

# echo 'load date'
# date 1>&2 && time clickhouse-client -h $ip --port $port --query "INSERT INTO date FORMAT CSV" < $LOAD_DIR/date.tbl
# clickhouse-client -h $ip --port $port --query "SELECT COUNT(*) FROM date"

cp /var/log/clickhouse-server/clickhouse-server.log ./write-s3-lz4.log
