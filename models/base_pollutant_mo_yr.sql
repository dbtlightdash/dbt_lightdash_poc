SELECT 
country
, pollutant
, AVG(value) as average_val
,EXTRACT(MONTH FROM timestamp) AS MONTH
, EXTRACT(YEAR FROM timestamp) AS YEAR
FROM `dulcet-answer-373817.dbt_ld.global_air_quality` 
GROUP BY country, MONTH, YEAR, pollutant
HAVING YEAR > 2019


