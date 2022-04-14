#!/bin/bash

sf=10
LOAD_DIR=/mnt/disk1/data/ssb/ssb-$sf
CREATE_DIR=load/single/single_in_$1
ip=10.10.1.32
port=9000

echo 'drop table lineorder_t/customer/part/supplier/lineorder'
clickhouse-client -h $ip --port $port --query="DROP TABLE IF EXISTS lineorder_flat"

clickhouse-client -h $ip --port $port --query="DROP TABLE IF EXISTS customer"
clickhouse-client -h $ip --port $port --query="DROP TABLE IF EXISTS lineorder"
clickhouse-client -h $ip --port $port --query="DROP TABLE IF EXISTS part"
clickhouse-client -h $ip --port $port --query="DROP TABLE IF EXISTS supplier"

echo 'create table customer/part/supplier/lineorder'
cat $CREATE_DIR/create_customer_into_single.sql | clickhouse-client -h $ip --port $port
cat $CREATE_DIR/create_lineorder_into_single.sql| clickhouse-client -h $ip --port $port
cat $CREATE_DIR/create_part_into_single.sql     | clickhouse-client -h $ip --port $port
cat $CREATE_DIR/create_supplier_into_single.sql | clickhouse-client -h $ip --port $port

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

echo 'create falt table'
date 1>&2 && time cat $CREATE_DIR/create_flat_table.sql | clickhouse-client -h $ip --port $port
clickhouse-client -h $ip --port $port --query "SELECT COUNT(*) FROM lineorder_flat"