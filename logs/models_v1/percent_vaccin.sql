SELECT 
t1.country_name
,MAX(t1.health_expenditure_usd) as health_expenditure_usd
,AVG(COALESCE(t1.OOP_health_spend_usd,1)) as OOP_health_spend_usd
,CEILING(MAX(t2.cumulative_vaccine_doses_administered)/MAX(t2.population)) as perc_vaccin
FROM {{ ref('country_pop_info') }} as t1
LEFT JOIN {{ ref('covid_pop') }} as t2
ON t1.country_name = t2.country_name
WHERE t2.population != 0
GROUP BY country_name
