#!/bin/bash

sh ./sh/run_load_single.sh $1 2>log/load_single.log
sh ./sh/run_query.sh $2 2>log/query-single-1.log
sh ./sh/run_query.sh $2 2>log/query-single-2.log
sh ./sh/run_query.sh $2 2>log/query-single-3.log