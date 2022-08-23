CREATE TABLE date                                                                                                       
(                                                                                                                                         
    d_datekey           Date,
    d_date              String,
    d_dayofweek         String,
    d_month             String,
    d_year              UInt32,
    d_yearmonthnum      UInt32,
    d_yearmonth         String,
    d_daynuminweek      UInt8,
    d_daynuminmonth     UInt8,
    d_daynuminyear      UInt8,
    d_monthnuminyear    UInt8,
    d_weeknuminyear     UInt8,
    d_sellingseason     String,
    d_lastdayinweekfl   UInt8,
    d_lastdayinmonthfl  UInt8,
    d_holidayfl         UInt8,
    d_weekdayfl         UInt8                                                                                           
)                                                                                                                                  
ENGINE = MergeTree ORDER BY (d_datekey)
SETTINGS storage_policy = 'only_local'