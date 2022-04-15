CREATE TABLE catalog_returns
(
    cr_returned_date_sk       Int8,
    cr_returned_time_sk       Int8,
    cr_item_sk                Int8,
    cr_refunded_customer_sk   Int8,
    cr_refunded_cdemo_sk      Int8,
    cr_refunded_hdemo_sk      Int8,
    cr_refunded_addr_sk       Int8,
    cr_returning_customer_sk  Int8,
    cr_returning_cdemo_sk     Int8,
    cr_returning_hdemo_sk     Int8,
    cr_returning_addr_sk      Int8,
    cr_call_center_sk         Int8,
    cr_catalog_page_sk        Int8,
    cr_ship_mode_sk           Int8,
    cr_warehouse_sk           Int8,
    cr_reason_sk              Int8,
    cr_order_number           Int8,
    cr_return_quantity        Int8,
    cr_return_amount          Float,
    cr_return_tax             Float,
    cr_return_amt_inc_tax     Float,
    cr_fee                    Float,
    cr_return_ship_cost       Float,
    cr_refunded_cash          Float,
    cr_reversed_charge        Float,
    cr_store_credit           Float,
    cr_net_loss               Float
)
ENGINE = MergeTree 
PARTITION BY cr_item_sk
ORDER BY cr_order_number 
SETTINGS storage_policy = 'only_local'