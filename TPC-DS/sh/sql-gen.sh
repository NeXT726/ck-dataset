
for i in {1..99}
do /home/jianglind/tpcds-kit/tools/dsqgen \
    -input /home/jianglind/tpcds-kit/query_templates/templates.lst \
    -directory /home/jianglind/tpcds-kit/query_templates \
    -dialect sqlserver \
    -output_dir /mnt/disk1/data/tpc-ds/sql \
    -TEMPLATE "query${i}.tpl"
done