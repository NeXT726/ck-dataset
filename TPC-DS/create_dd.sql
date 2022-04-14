CREATE TABLE date_dim
(
    d_date_sk Int8, 
    d_date_id String, 
    d_date Int8, 
    d_month_seq Int8, 
    d_week_seq Int8, 
    d_quarter_seg Int8, 
    d_year Int8, 
    d_dow Int8, 
    d_moy Int8, 
    d_dom Int8, 
    d_qoy Int8, 
    d_fy_year Int8, 
    d_fy_quarter_seq Int8, 
    d_fy_week_seq Int8, 
    d_day_name String, 
    d_quarter_name String, 
    d_holiday String, 
    d_weekend String, 
    d_following_holiday String, 
    d_first_dom Int8, 
    d_last_dom Int8, 
    d_same_day_1y Int8, 
    d_same_day_1q Int8, 
    d_current_day String, 
    d_current_week String, 
    d_current_month String, 
    d_current_quarter String, 
    d_current_year String
)
ENGINE = MergeTree
PARTITION BY (d_date_sk)
ORDER BY (d_date_id)
SETTINGS index_granularity = 8192
SETTINGS storage_policy = 'only_local'