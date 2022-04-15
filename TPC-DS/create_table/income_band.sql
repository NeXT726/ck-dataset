create table income_band
(
    ib_income_band_sk         Int8,
    ib_lower_bound            Int8,
    ib_upper_bound            Int8,
    primary key (ib_income_band_sk)
)
ENGINE = MergeTree 
PARTITION BY toYYYYMM(cc_rec_start_date) 
ORDER BY cc_call_center_sk 
SETTINGS storage_policy = 'only_local'