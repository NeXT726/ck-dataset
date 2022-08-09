for sql in ../sql/query/*.sql; 
    do 
	    echo $sql
	    clickhouse-client --time --format=Null --queries-file=$sql 2>&1
done
# done 1>../log/result.log
