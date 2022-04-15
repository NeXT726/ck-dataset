-- query41
-- 需要将 item i1放在where子句中
-- 在ck中定义的别名对子句以及子句之间是不可见的，因此我们想定义别名时需要在子句内部定义别名

SELECT DISTINCT i_product_name
FROM item
WHERE ((i_manufact_id >= 761) AND (i_manufact_id <= (761 + 40))) AND ((
    SELECT count(*) AS item_cnt
    FROM item AS i1
    WHERE ((i_manufact = i1.i_manufact) AND (((i_category = 'Women') AND ((i_color = 'midnight') OR (i_color = 'gainsboro')) AND ((i_units = 'Box') OR (i_units = 'Carton')) AND ((i_size = 'small') OR (i_size = 'large'))) OR ((i_category = 'Women') AND ((i_color = 'magenta') OR (i_color = 'chocolate')) AND ((i_units = 'Lb') OR (i_units = 'Bunch')) AND ((i_size = 'petite') OR (i_size = 'medium'))) OR ((i_category = 'Men') AND ((i_color = 'chartreuse') OR (i_color = 'chiffon')) AND ((i_units = 'Tbl') OR (i_units = 'Dozen')) AND ((i_size = 'economy') OR (i_size = 'extra large'))) OR ((i_category = 'Men') AND ((i_color = 'coral') OR (i_color = 'pale')) AND ((i_units = 'Ton') OR (i_units = 'Bundle')) AND ((i_size = 'small') OR (i_size = 'large'))))) OR ((i_manufact = i1.i_manufact) AND (((i_category = 'Women') AND ((i_color = 'burnished') OR (i_color = 'plum')) AND ((i_units = 'Oz') OR (i_units = 'Each')) AND ((i_size = 'small') OR (i_size = 'large'))) OR ((i_category = 'Women') AND ((i_color = 'misty') OR (i_color = 'mint')) AND ((i_units = 'Ounce') OR (i_units = 'Tsp')) AND ((i_size = 'petite') OR (i_size = 'medium'))) OR ((i_category = 'Men') AND ((i_color = 'dark') OR (i_color = 'olive')) AND ((i_units = 'Dram') OR (i_units = 'Gross')) AND ((i_size = 'economy') OR (i_size = 'extra large'))) OR ((i_category = 'Men') AND ((i_color = 'cornflower') OR (i_color = 'hot')) AND ((i_units = 'Gram') OR (i_units = 'N/A')) AND ((i_size = 'small') OR (i_size = 'large')))))
) > 0)
ORDER BY i_product_name ASC
LIMIT 10