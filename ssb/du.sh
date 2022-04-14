echo "---------------ck du----------------" >> log/result.log
du -sh /mnt/disk1/ck1/ >> log/result.log
echo "--------------filer du--------------" >> log/result.log
du -sh /mnt/seaweed/data/buckets/tencentBucket/djl/ >> log/result.log
echo "---------------s3 du----------------" >> log/result.log
du -sh /mnt/s3/djl-data/ >> log/result.log
echo "------------query result------------" >> log/result.log
sh ./sh/run_query.sh single >> log/result.log 2>log/query-single-1.log
sh ./sh/run_query.sh single >> log/result.log 2>log/query-single-2.log
sh ./sh/run_query.sh single >> log/result.log 2>log/query-single-3.log