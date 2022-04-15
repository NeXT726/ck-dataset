CREATE TABLE time_dim
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
    t_meal_time               String
)
ENGINE = MergeTree 
PARTITION BY t_time_sk
ORDER BY t_time_id
SETTINGS storage_policy = 'only_local'