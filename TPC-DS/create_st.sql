CREATE TABLE store (
        s_store_sk Int8 ,
        s_store_id String,
        s_rec_start_date date,
        s_rec_end_date date,
        s_closed_date_sk Int8,
        s_store_name String,
        s_number_employees Int8,
        s_floor_space Int8,
        s_hours String,
        s_manager String,
        s_market_id Int8,
        s_geography_class String,
        s_market_desc String,
        s_market_manager String,
        s_division_id Int8,
        s_division_name String,
        s_company_id Int8,
        s_company_name String,
        s_street_number String,
        s_street_name String,
        s_street_type String,
        s_suite_number String,
        s_city String,
        s_county String,
        s_state String,
        s_zip String,
        s_country String,
        s_gmt_offset Float,
        s_tax_percentage Float
)
ENGINE = MergeTree
PARTITION BY tuple()
ORDER BY tuple()
SETTINGS index_granularity = 8192
SETTINGS storage_policy = 'only_local'