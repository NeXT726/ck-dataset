SELECT 
    SUM(LO_REVENUE), 
    toYear(LO_ORDERDATE) AS year, 
    P_BRAND
FROM lineorder
INNER JOIN part ON P_PARTKEY = LO_PARTKEY
INNER JOIN supplier ON LO_SUPPKEY = S_SUPPKEY
WHERE (P_BRAND = 'MFGR#2221') AND (S_REGION = 'EUROPE')
GROUP BY 
    year, 
    P_BRAND
ORDER BY 
    year ASC, 
    P_BRAND ASC