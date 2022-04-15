create table inventory
(
    inv_date_sk               Int8,
    inv_item_sk               Int8,
    inv_warehouse_sk          Int8,
    inv_quantity_on_hand      Int8,
    primary key (inv_date_sk, inv_item_sk, inv_warehouse_sk)
)
ENGINE = MergeTree 
PARTITION BY toYYYYMM(cc_rec_start_date) 
ORDER BY cc_call_center_sk 
SETTINGS storage_policy = 'only_local'