for sql in ../query/$1/*.sql; 
    do echo -e "query $sql:result" && echo -n "$sql:time">&2 &&
        time(cat $sql | clickhouse-client) &&
        echo "" && echo "">&2; 
done 1>../log/$1-query.log 2>../log/$1-time.log