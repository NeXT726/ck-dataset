SELECT
    ss_item_sk,
    count(*)
FROM store_sales
GROUP BY ss_item_sk
HAVING count(*) > 1
LIMIT 10