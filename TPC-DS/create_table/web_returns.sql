CREATE TABLE web_returns
(
    wr_returned_date_sk       Int8,
    wr_returned_time_sk       Int8,
    wr_item_sk                Int8,
    wr_refunded_customer_sk   Int8,
    wr_refunded_cdemo_sk      Int8,
    wr_refunded_hdemo_sk      Int8,
    wr_refunded_addr_sk       Int8,
    wr_returning_customer_sk  Int8,
    wr_returning_cdemo_sk     Int8,
    wr_returning_hdemo_sk     Int8,
    wr_returning_addr_sk      Int8,
    wr_web_page_sk            Int8,
    wr_reason_sk              Int8,
    wr_order_number           Int8,
    wr_return_quantity        Int8,
    wr_return_amt             Float,
    wr_return_tax             Float,
    wr_return_amt_inc_tax     Float,
    wr_fee                    Float,
    wr_return_ship_cost       Float,
    wr_refunded_cash          Float,
    wr_reversed_charge        Float,
    wr_account_credit         Float,
    wr_net_loss               Float
)
ENGINE = MergeTree 
PARTITION BY wr_item_sk
ORDER BY wr_order_number 
SETTINGS storage_policy = 'only_local'