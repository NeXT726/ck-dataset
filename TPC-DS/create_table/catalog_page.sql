CREATE TABLE catalog_page
(
    cp_catalog_page_sk        Int8,
    cp_catalog_page_id        String,
    cp_start_date_sk          Int8,
    cp_end_date_sk            Int8,
    cp_department             String,
    cp_catalog_number         Int8,
    cp_catalog_page_number    Int8,
    cp_description            String,
    cp_type                   String
)
ENGINE = MergeTree 
PARTITION BY cp_catalog_page_sk
ORDER BY cp_catalog_page_id 
SETTINGS storage_policy = 'only_local'