clickhouse-client --query="DROP TABLE IF EXISTS customer"
cat ../ssb/load/single/single_in_$1/create_customer_into_single.sql | clickhouse-client 
for file in data/*
do
    echo "insert customer:$file:" && clickhouse-client -t --query "INSERT INTO customer FORMAT CSV" < $file
    sleep 0.2
done