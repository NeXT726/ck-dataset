CREATE TABLE promotion
(
    p_promo_sk                Int8,
    p_promo_id                String,
    p_start_date_sk           Int8,
    p_end_date_sk             Int8,
    p_item_sk                 Int8,
    p_cost                    decimal(15,2),
    p_response_target         Int8,
    p_promo_name              String,
    p_channel_dmail           String,
    p_channel_email           String,
    p_channel_catalog         String,
    p_channel_tv              String,
    p_channel_radio           String,
    p_channel_press           String,
    p_channel_event           String,
    p_channel_demo            String,
    p_channel_details         String,
    p_purpose                 String,
    p_discount_active         String
)
ENGINE = MergeTree 
PARTITION BY p_promo_sk
ORDER BY p_promo_id
SETTINGS storage_policy = 'only_local'