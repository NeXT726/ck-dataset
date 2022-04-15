SELECT
    ss_sold_date_sk,
    count(*) AS cnt
FROM store_sales
GROUP BY ss_sold_date_sk
ORDER BY
    cnt DESC,
    ss_sold_date_sk ASC
LIMIT 10
