#!/bin/bash
# output_dir居然只能用steam流的方式输出到一个文件中
# 也就是说我用output_dir指定的话只会保存最后一个sql
# 所以需要用stdout输出然后重定向到一个文件

for i in {1..99}
do /home/jianglind/tpcds-kit/tools/dsqgen \
    -INPUT /home/jianglind/tpcds-kit/query_templates/templates.lst \
    -DIRECTORY /home/jianglind/tpcds-kit/query_templates \
    -DIALECT sqlserver \
    -TEMPLATE "query${i}.tpl" \
    -SCALE 10 \
    -DISTRIBUTIONS /home/jianglind/tpcds-kit/tools/tpcds.idx \
    -FILTER Y > /mnt/disk1/data/tpc-ds/sql/query${i}.sql
done