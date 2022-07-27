ip=10.10.1.32
port=9000
BD_Dir=/mnt/cfs/big-data

for i in $BD_Dir/$1/rankings/*.deflate; do echo $i; zlib-flate -uncompress < $i | clickhouse-client -h $ip --port $port --query="INSERT INTO rankings_$1 FORMAT CSV" --max_partitions_per_insert_block=0; done
for i in $BD_Dir/$1/uservisits/*.deflate; do echo $i; zlib-flate -uncompress < $i | clickhouse-client -h $ip --port $port --query="INSERT INTO uservisits_$1 FORMAT CSV" --max_partitions_per_insert_block=0; done
# for i in $BD_Dir/1node/rankings/*.deflate; do echo $i; zlib-flate -uncompress < $i | clickhouse-client -h $ip --port $port --query="INSERT INTO rankings_1node FORMAT CSV" --max_partitions_per_insert_block=0; done
# for i in $BD_Dir/1node/uservisits/*.deflate; do echo $i; zlib-flate -uncompress < $i | clickhouse-client -h $ip --port $port --query="INSERT INTO uservisits_1node FORMAT CSV" --max_partitions_per_insert_block=0; done
# for i in $BD_Dir/5nodes/rankings/*.deflate; do echo $i; zlib-flate -uncompress < $i | clickhouse-client -h $ip --port $port --query="INSERT INTO rankings_5nodes_on_single FORMAT CSV" --max_partitions_per_insert_block=0; done
# for i in $BD_Dir/5nodes/uservisits/*.deflate; do echo $i; zlib-flate -uncompress < $i | clickhouse-client -h $ip --port $port --query="INSERT INTO uservisits_5nodes_on_single FORMAT CSV" --max_partitions_per_insert_block=0; done