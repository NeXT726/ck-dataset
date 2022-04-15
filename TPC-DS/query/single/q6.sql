SELECT
    ss_sold_date_sk,
    ss_wholesale_cost,
    avg(ss_item_sk) AS cnt
FROM store_sales
GROUP BY
    ss_sold_date_sk,
    ss_wholesale_cost
ORDER BY
    cnt DESC,
    ss_sold_date_sk ASC
LIMIT 10
