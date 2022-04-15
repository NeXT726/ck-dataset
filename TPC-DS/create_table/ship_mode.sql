create table ship_mode
(
    sm_ship_mode_sk           Int8,
    sm_ship_mode_id           String,
    sm_type                   String,
    sm_code                   String,
    sm_carrier                String,
    sm_contract               String,
    primary key (sm_ship_mode_sk)
)
ENGINE = MergeTree 
PARTITION BY toYYYYMM(cc_rec_start_date) 
ORDER BY cc_call_center_sk 
SETTINGS storage_policy = 'only_local'
