clickhouse-client --query="SYSTEM DROP FILESYSTEM CACHE"
rm -rf /mnt/gp3-800/ck-cache/*
rm -rf /mnt/nvme/ck-cache/*
rm -rf /mnt/ck-cache/*

clickhouse-client --query="DROP TABLE IF EXISTS customer"
cat ../ssb/load/single/single_in_$1/create_customer_into_single.sql | clickhouse-client 
for file in data/*
do
    echo "insert customer:$file:" && clickhouse-client -t --queries-file=insert.sql < $file
    sleep 0.5
done