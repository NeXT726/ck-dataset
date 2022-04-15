CREATE TABLE reason
(
    r_reason_sk               Int8,
    r_reason_id               String,
    r_reason_desc             String
)
ENGINE = MergeTree 
PARTITION BY r_reason_sk
ORDER BY r_reason_id 
SETTINGS storage_policy = 'only_local'