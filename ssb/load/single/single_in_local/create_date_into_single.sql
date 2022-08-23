CREATE TABLE date                                                                                                       
(                                                                                                                                         
    D_DATEKEY           Date,
    D_DATE              String,
    D_DAYOFWEEK         String,
    D_MONTH             String,
    D_YEAR              UInt32,
    D_YEARMONTHNUM      UInt32,
    D_YEARMONTH         String,
    D_DAYNUMINWEEK      UInt8,
    D_DAYNUMINMONTH     UInt8,
    D_DAYNUMINYEAR      UInt8,
    D_MONTHNUMINYEAR    UInt8,
    D_WEEKNUMINYEAR     UInt8,
    D_SELLINGSEASON     String,
    D_LASTDAYINWEEKFL   UInt8,
    D_LASTDAYINMONTHFL  UInt8,
    D_HOLIDAYFL         UInt8,
    D_WEEKDAYFL         UInt8                                                                                           
)                                                                                                                                  
ENGINE = MergeTree ORDER BY (D_DATEKEY)
SETTINGS storage_policy = 'only_local'