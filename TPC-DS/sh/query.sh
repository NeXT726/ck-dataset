for sql in ../query/$1/*.sql; 
    do echo -e "\nquery $sql" && echo -n "$sql">&2 && time(cat $sql | clickhouse-client) && echo ""; 
done 1>../log/$1-query.log 2>../log/$1-time.log