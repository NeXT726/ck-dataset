CREATE TABLE customer
(
    dv_version  String,
    dv_create_date  Date,
    dv_create_time  String,
    dv_cmdline_args String
)
ENGINE = MergeTree
ORDER BY dv_version
SETTINGS storage_policy = 'only_local'