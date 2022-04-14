CREATE TABLE catalog_sales (
`cs_sold_date_sk` Int8, 
`cs_sold_time_sk` Int8,
`cs_ship_date_sk` Int8, 
`cs_bill_customer_sk` Int8, 
`cs_bill_cdemo_sk` Int8, 
`cs_bill_hdemo_sk` Int8, 
`cs_bill_addr_sk` Int8,    
`cs_ship_customer_sk` Int8, 
`cs_ship_cdemo_sk` Int8,     
`cs_ship_hdemo_sk` Int8,   
`cs_ship_addr_sk` Int8, 
`cs_call_center_sk` Int8,
`cs_catalog_page_sk` Int8, 
`cs_ship_mode_sk` Int8,
`cs_warehouse_sk` Int8, 
`cs_item_sk` Int8,
`cs_promo_sk` Int8, 
`cs_order_number` Int8, 
`cs_quantity` Int8, 
`cs_wholesale_cost` Float,
`cs_list_price` Float, 
`cs_sales_price` Float, 
`cs_ext_discount_amt` Float,
`cs_ext_sales_price` Float,
`cs_ext_wholesale_cost` Float, 
`cs_ext_list_price` Float, 
`cs_ext_tax` Float,
`cs_coupon_amt` Float, 
`cs_ext_ship_cost` Float, 
`cs_net_paid` Float,
`cs_net_paid_inc_tax` Float, 
`cs_net_paid_inc_ship` Float,
`cs_net_paid_inc_ship_tax` Float, 
`cs_net_profit` Float) 
ENGINE = MergeTree PARTITION BY (cs_sold_date_sk) ORDER BY (cs_sold_time_sk) SETTINGS index_granularity = 8192
SETTINGS storage_policy = 'only_local'
