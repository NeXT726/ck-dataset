#!/bin/bash

sh ./sh/run_load_flat_single.sh $1 2>load_single.log
sh ./sh/run_query.sh $2 2>query-single-1.log
sh ./sh/run_query.sh $2 2>query-single-2.log
sh ./sh/run_query.sh $2 2>query-single-3.log