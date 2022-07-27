#!/bin/bash

#运行sh run_query.sh 2>result.txt
QUERY_DIR=query/$1
RESULT_DIR=result
ip=127.0.0.1
port=9000

date 1>&2 && time cat $QUERY_DIR/Q1_1.sql | clickhouse-client -h $ip --port $port
date 1>&2 && time cat $QUERY_DIR/Q1_2.sql | clickhouse-client -h $ip --port $port
date 1>&2 && time cat $QUERY_DIR/Q1_3.sql | clickhouse-client -h $ip --port $port
date 1>&2 && time cat $QUERY_DIR/Q2_1.sql | clickhouse-client -h $ip --port $port
date 1>&2 && time cat $QUERY_DIR/Q2_2.sql | clickhouse-client -h $ip --port $port
date 1>&2 && time cat $QUERY_DIR/Q2_3.sql | clickhouse-client -h $ip --port $port
date 1>&2 && time cat $QUERY_DIR/Q3_1.sql | clickhouse-client -h $ip --port $port
date 1>&2 && time cat $QUERY_DIR/Q3_2.sql | clickhouse-client -h $ip --port $port
date 1>&2 && time cat $QUERY_DIR/Q3_3.sql | clickhouse-client -h $ip --port $port
date 1>&2 && time cat $QUERY_DIR/Q3_4.sql | clickhouse-client -h $ip --port $port
date 1>&2 && time cat $QUERY_DIR/Q4_1.sql | clickhouse-client -h $ip --port $port
date 1>&2 && time cat $QUERY_DIR/Q4_2.sql | clickhouse-client -h $ip --port $port
date 1>&2 && time cat $QUERY_DIR/Q4_3.sql | clickhouse-client -h $ip --port $port
