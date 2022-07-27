for sql in ../sql/query/*.sql; 
    do clickhouse-client --queries-file=$sql; 
done
# done 1>../log/result.log
