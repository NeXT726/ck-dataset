CREATE TABLE inventory
(
    inv_date_sk               Int8,
    inv_item_sk               Int8,
    inv_warehouse_sk          Int8,
    inv_quantity_on_hand      Int8
)
ENGINE = MergeTree 
PARTITION BY inv_date_sk
ORDER BY inv_date_sk 
SETTINGS storage_policy = 'only_local'