CREATE TABLE supplier
(
 s_suppkey       UInt32,
 s_name          String,
 s_address       String,
 s_city          String,
 s_nation        String,
 s_region        String,
 s_phone         String
 )
ENGINE = MergeTree ORDER BY s_suppkey
SETTINGS storage_policy = 'only_s3'