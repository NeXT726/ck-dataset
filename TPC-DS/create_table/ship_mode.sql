CREATE TABLE ship_mode
(
    sm_ship_mode_sk           Int8,
    sm_ship_mode_id           String,
    sm_type                   String,
    sm_code                   String,
    sm_carrier                String,
    sm_contract               String
)
ENGINE = MergeTree 
PARTITION BY sm_ship_mode_sk
ORDER BY sm_ship_mode_id 
SETTINGS storage_policy = 'only_local'
