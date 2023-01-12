WITH temptable as (
SELECT 
  country
  , pollutant
  , value
  ,EXTRACT(YEAR FROM timestamp) AS YEAR
FROM `dulcet-answer-373817.dbt_ld.global_air_quality` 
WHERE EXTRACT(YEAR FROM timestamp) > 2019
)
SELECT 
  country
  , pollutant
  , AVG(value) AS AMT_PARTICULATE
FROM temptable 
GROUP BY country, pollutant

