CREATE TABLE customer_address
(
    ca_address_sk   Int8,
    ca_address_id   String,
    ca_street_number    String,
    ca_street_name  String,
    ca_street_type  String,
    ca_suite_number String,
    ca_city String,
    ca_county   String,
    ca_state    String,
    ca_zip  String,
    ca_country  String,
    ca_gmt_offset   Float,
    ca_location_type    String
)
ENGINE = MergeTree
PARTITION BY ca_address_sk
ORDER BY ca_address_id
SETTINGS storage_policy = 'only_local'
