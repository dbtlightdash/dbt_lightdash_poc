SELECT DISTINCT country_name, MAX(population) as max_pop
FROM {{ ref('stg_covid') }}
GROUP BY country_name
ORDER BY country_name