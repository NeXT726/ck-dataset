SELECT
    avg(ss_item_sk) AS cnt,
    avg(ss_sales_price),
    countDistinct(ss_sales_price),
    count(ss_item_sk)
FROM store_sales
GROUP BY
    ss_sold_date_sk,
    ss_wholesale_cost
ORDER BY
    cnt DESC,
    ss_sold_date_sk ASC
LIMIT 10