CREATE TABLE web_sales (
    ws_sold_date_sk Int8,
    ws_sold_time_sk Int8,
    ws_ship_date_sk Int8,
    ws_item_sk Int8 ,
    ws_bill_customer_sk Int8,
    ws_bill_cdemo_sk Int8,
    ws_bill_hdemo_sk Int8,
    ws_bill_addr_sk Int8,
    ws_ship_customer_sk Int8,
    ws_ship_cdemo_sk Int8,
    ws_ship_hdemo_sk Int8,
    ws_ship_addr_sk Int8,
    ws_web_page_sk Int8,
    ws_web_site_sk Int8,
    ws_ship_mode_sk Int8,
    ws_warehouse_sk Int8,
    ws_promo_sk Int8,
    ws_order_number Int8 ,
    ws_quantity Int8,
    ws_wholesale_cost Float,
    ws_list_price Float,
    ws_sales_price Float,
    ws_ext_discount_amt Float,
    ws_ext_sales_price Float,
    ws_ext_wholesale_cost Float,
    ws_ext_list_price Float,
    ws_ext_tax Float,
    ws_coupon_amt Float,
    ws_ext_ship_cost Float,
    ws_net_paid Float,
    ws_net_paid_inc_tax Float,
    ws_net_paid_inc_ship Float,
    ws_net_paid_inc_ship_tax Float,
    ws_net_profit Float
)
ENGINE = MergeTree
PARTITION BY (ws_warehouse_sk)
ORDER BY (ws_sold_date_sk)
SETTINGS index_granularity = 8192 
SETTINGS storage_policy = 'only_local'