
{{ config(materialized='view') }}

WITH temptable as (SELECT EXTRACT(MONTH FROM date) as month,EXTRACT(YEAR FROM date) as year, country_name, new_confirmed 
FROM {{ ref('stg_covid') }}
WHERE new_confirmed IS NOT NULL)
SELECT DISTINCT month, year, country_name,SUM(new_confirmed) 
  OVER (PARTITION BY year ORDER BY month) as total_confirmed 
FROM temptable
ORDER BY month
