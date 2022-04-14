time (for filename in /mnt/disk1/data/tpc-ds/data-10/catalog_sales_*.csv; do clickhouse-client --format_csv_delimiter="|" --query="INSERT INTO catalog_sales FORMAT CSV" < $filename; done)
time (for filename in /mnt/disk1/data/tpc-ds/data-10/call_center_1_*.csv; do clickhouse-client --format_csv_delimiter="|" --query="INSERT INTO call_center FORMAT CSV" < $filename; done)
time (for filename in /mnt/disk1/data/tpc-ds/data-10/date_dim_1*.csv; do clickhouse-client --format_csv_delimiter="|" --query="INSERT INTO date_dim FORMAT CSV" --max_partitions_per_insert_block=0 < $filename; done)
time (for filename in /mnt/disk1/data/tpc-ds/data-10/household_demographics_*.csv; do clickhouse-client --format_csv_delimiter="|" --query="INSERT INTO household_demographics FORMAT CSV" < $filename; done)
time (for filename in /mnt/disk1/data/tpc-ds/data-10/item_1*.csv; do clickhouse-client --format_csv_delimiter="|" --query="INSERT INTO item FORMAT CSV"  --max_partitions_per_insert_block=0 < $filename; done)
time (for filename in /mnt/disk1/data/tpc-ds/data-10/store_1*.csv; do clickhouse-client --format_csv_delimiter="|" --query="INSERT INTO store FORMAT CSV"  --max_partitions_per_insert_block=50< $filename; done)
time (for filename in /mnt/disk1/data/tpc-ds/data-10/store_sales_*.csv; do clickhouse-client --format_csv_delimiter="|" --query="INSERT INTO store_sales FORMAT CSV" < $filename; done)
time (for filename in /mnt/disk1/data/tpc-ds/data-10/web_sales_*.csv; do clickhouse-client --format_csv_delimiter="|" --query="INSERT INTO web_sales FORMAT CSV" < $filename; done)
time (for filename in /mnt/disk1/data/tpc-ds/data-10/customer_*.csv; do clickhouse-client --format_csv_delimiter="|" --query="INSERT INTO customer FORMAT CSV"  --max_partitions_per_insert_block=0   --input_format_allow_errors_num=10000000 < $filename; done)
