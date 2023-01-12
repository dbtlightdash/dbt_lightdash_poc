WITH country_key as
(SELECT country_name, alpha_2_code
FROM `dulcet-answer-373817.dbt_ld.country_codes`
)

SELECT *
FROM {{ ref('pollutant_avg_yr') }}
LEFT JOIN 
on country_key.alpha_2_code = pollutant_avg_yr.country

