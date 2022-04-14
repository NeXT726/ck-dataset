echo "---------------ck du----------------" >> result.log
du -sh /mnt/disk1/ck1/ >> result.log
echo "--------------filer du--------------" >> result.log
du -sh /mnt/disk1/seaweed/data/buckets/tencentBucket/djl/ >> result.log
echo "---------------s3 du----------------" >> result.log
du -sh /mnt/s3/djl-data/ >> result.log
echo "------------query result------------" >> result.log
sh ./sh/run_query.sh single >> result.log 2>query-single-1.log
sh ./sh/run_query.sh single >> result.log 2>query-single-2.log
sh ./sh/run_query.sh single >> result.log 2>query-single-3.log