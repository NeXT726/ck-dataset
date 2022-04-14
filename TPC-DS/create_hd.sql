CREATE TABLE household_demographics
(
    `hd_demo_sk` Int8, 
    `hd_income_band_sk` Int8, 
    `hd_buy_potential` String, 
    `hd_dep_count` Int8, 
    `hd_vehicle_count` Int8
)
ENGINE = MergeTree()
PARTITION BY tuple()
ORDER BY tuple()
SETTINGS index_granularity = 8192
