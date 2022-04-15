create table store_returns
(
    sr_returned_date_sk       Int8,
    sr_return_time_sk         Int8,
    sr_item_sk                Int8,
    sr_customer_sk            Int8,
    sr_cdemo_sk               Int8,
    sr_hdemo_sk               Int8,
    sr_addr_sk                Int8,
    sr_store_sk               Int8,
    sr_reason_sk              Int8,
    sr_ticket_number          Int8,
    sr_return_quantity        Int8,
    sr_return_amt             Float,
    sr_return_tax             Float,
    sr_return_amt_inc_tax     Float,
    sr_fee                    Float,
    sr_return_ship_cost       Float,
    sr_refunded_cash          Float,
    sr_reversed_charge        Float,
    sr_store_credit           Float,
    sr_net_loss               Float,
    primary key (sr_item_sk, sr_ticket_number)
)
ENGINE = MergeTree 
PARTITION BY toYYYYMM(cc_rec_start_date) 
ORDER BY cc_call_center_sk 
SETTINGS storage_policy = 'only_local'