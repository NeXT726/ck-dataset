clickhouse-client --query="DROP TABLE IF EXISTS call_center"
clickhouse-client --query="DROP TABLE IF EXISTS catalog_sales"
clickhouse-client --query="DROP TABLE IF EXISTS customer"
clickhouse-client --query="DROP TABLE IF EXISTS date_dim"
clickhouse-client --query="DROP TABLE IF EXISTS household_demographics"
clickhouse-client --query="DROP TABLE IF EXISTS item"
clickhouse-client --query="DROP TABLE IF EXISTS store_sales"
clickhouse-client --query="DROP TABLE IF EXISTS store"
clickhouse-client --query="DROP TABLE IF EXISTS web_sales"
clickhouse-client --query="DROP TABLE IF EXISTS customer_demographics"

for sql in ../create_table/*.sql; do cat $sql | clickhouse-client; done