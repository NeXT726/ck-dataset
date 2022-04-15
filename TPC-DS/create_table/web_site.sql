CREATE TABLE web_site
(
    web_site_sk               Int8,
    web_site_id               String,
    web_rec_start_date        date,
    web_rec_end_date          date,
    web_name                  String,
    web_open_date_sk          Int8,
    web_close_date_sk         Int8,
    web_class                 String,
    web_manager               String,
    web_mkt_id                Int8,
    web_mkt_class             String,
    web_mkt_desc              String,
    web_market_manager        String,
    web_company_id            Int8,
    web_company_name          String,
    web_street_number         String,
    web_street_name           String,
    web_street_type           String,
    web_suite_number          String,
    web_city                  String,
    web_county                String,
    web_state                 String,
    web_zip                   String,
    web_country               String,
    web_gmt_offset            Float,
    web_tax_percentage        Float
)
ENGINE = MergeTree 
PARTITION BY web_site_sk
ORDER BY web_site_id 
SETTINGS storage_policy = 'only_local'