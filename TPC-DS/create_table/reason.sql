create table reason
(
    r_reason_sk               Int8,
    r_reason_id               String,
    r_reason_desc             String,
    primary key (r_reason_sk)
)
ENGINE = MergeTree 
PARTITION BY toYYYYMM(cc_rec_start_date) 
ORDER BY cc_call_center_sk 
SETTINGS storage_policy = 'only_local'