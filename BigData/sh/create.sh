ip=10.10.1.32
port=9000

clickhouse-client -h $ip --port $port --query="DROP TABLE IF EXISTS rankings_$1"
clickhouse-client -h $ip --port $port --query="DROP TABLE IF EXISTS uservisits_$1"

clickhouse-client -h $ip --port $port --queries-file=../sql/create/$1.sql