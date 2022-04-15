CREATE TABLE web_page
(
    wp_web_page_sk            Int8,
    wp_web_page_id            String,
    wp_rec_start_date         date,
    wp_rec_end_date           date,
    wp_creation_date_sk       Int8,
    wp_access_date_sk         Int8,
    wp_autogen_flag           String,
    wp_customer_sk            Int8,
    wp_url                    String,
    wp_type                   String,
    wp_char_count             Int8,
    wp_link_count             Int8,
    wp_image_count            Int8,
    wp_max_ad_count           Int8
)
ENGINE = MergeTree 
PARTITION BY wp_web_page_sk
ORDER BY wp_web_page_id 
SETTINGS storage_policy = 'only_local'