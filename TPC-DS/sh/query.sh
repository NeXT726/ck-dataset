for sql in ../query/$1/*.sql; 
    do echo "query $sql" && time(cat $sql | clickhouse-client); 
done