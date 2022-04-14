CREATE TABLE store_sales (
    ss_sold_date_sk Int8,
    ss_sold_time_sk Int8,
    ss_item_sk Int8 ,
    ss_customer_sk Int8,
    ss_cdemo_sk Int8,
    ss_hdemo_sk Int8,
    ss_addr_sk Int8,
    ss_store_sk Int8,
    ss_promo_sk Int8,
    ss_ticket_number Int8 ,
    ss_quantity Int8,
    ss_wholesale_cost Float,
    ss_list_price Float,
    ss_sales_price Float,
    ss_ext_discount_amt Float,
    ss_ext_sales_price Float,
    ss_ext_wholesale_cost Float,
    ss_ext_list_price Float,
    ss_ext_tax Float,
    ss_coupon_amt Float,
    ss_net_paid Float,
    ss_net_paid_inc_tax Float,
    ss_net_profit Float
)
ENGINE = MergeTree()
PARTITION BY (ss_store_sk)
ORDER BY (ss_sold_date_sk)
SETTINGS index_granularity = 8192
