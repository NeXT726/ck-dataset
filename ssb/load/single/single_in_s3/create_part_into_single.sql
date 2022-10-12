CREATE TABLE part 
(
 p_partkey       UInt32,
 p_name          String,
 p_mfgr          String,
 p_category      String,
 p_brand         String,
 p_color         String,
 p_type          String,
 p_size          UInt8,
 p_container     String
)
ENGINE = MergeTree ORDER BY p_partkey
SETTINGS storage_policy = 'only_s3'