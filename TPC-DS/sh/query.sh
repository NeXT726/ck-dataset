for sql in ../query/$1/*.sql; 
    do echo "query $sql" && echo "sql">&2 && time(cat $sql | clickhouse-client); 
done
1 > ../log/$1-query.log
2 > ../log/$1-time.log