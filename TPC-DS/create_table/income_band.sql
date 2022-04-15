CREATE TABLE income_band
(
    ib_income_band_sk         Int8,
    ib_lower_bound            Int8,
    ib_upper_bound            Int8
)
ENGINE = MergeTree 
PARTITION BY ib_income_band_sk
ORDER BY ib_income_band_sk 
SETTINGS storage_policy = 'only_local'