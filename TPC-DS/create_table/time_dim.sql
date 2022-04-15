create table time_dim
(
    t_time_sk                 Int8,
    t_time_id                 String,
    t_time                    Int8,
    t_hour                    Int8,
    t_minute                  Int8,
    t_second                  Int8,
    t_am_pm                   String,
    t_shift                   String,
    t_sub_shift               String,
    t_meal_time               String,
    primary key (t_time_sk)
)
ENGINE = MergeTree 
PARTITION BY toYYYYMM(cc_rec_start_date) 
ORDER BY cc_call_center_sk 
SETTINGS storage_policy = 'only_local'