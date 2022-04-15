
for i in {1..99}
do /home/jianglind/tpcds-kit/tools/dsqgen \
    -INPUT /home/jianglind/tpcds-kit/query_templates/templates.lst \
    -DIRECTORY /home/jianglind/tpcds-kit/query_templates \
    -DIALECT sqlserver \
    -OUTPUT_DIR /mnt/disk1/data/tpc-ds/sql \
    -TEMPLATE "query${i}.tpl" \
    -SCALE 10 \
    -DISTRIBUTIONS /home/jianglind/tpcds-kit/tools/tpcds.idx
done