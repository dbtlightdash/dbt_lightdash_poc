
SELECT DISTINCT 
        t1.country_name
		,(t1.urban_pop/ t1.rural_pop) as accel_multip
        ,ROUND((t2.max_pop/t1.pop_density)/100) as accel_factor_pop_den
        ,ROUND(((t1.sixties_pop + t1.seventies_pop + t1.eighties_pop)/ t2.max_pop) *100) as perc_vulner_pop
FROM {{ ref('pop_info') }} t1
LEFT JOIN {{ ref('stg_covid_nation_list') }} t2 
ON t1.country_name = t2.country_name
WHERE t1.rural_pop != 0 AND t1.pop_density != 0
GROUP BY country_name, max_pop, urban_pop, rural_pop, population, pop_density, sixties_pop, seventies_pop, eighties_pop
