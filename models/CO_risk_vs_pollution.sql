-- WITH temptable as (
-- UPDATE {{  ref('tgt_pollutant_mo_yr')}}
-- SET country_name = 'United States of America'
-- WHERE country_name = 'United States of America (the)';
-- ),
-- final_temp as (
-- UPDATE temptable
-- SET country_name = 'United Kingdom'
-- WHERE country_name = 'United Kingdom of Great Britain and Northern Ireland (the)';
-- )

SELECT DISTINCT vulnerable_pop.country_name, vulnerable_pop.perc_vulner_pop, tgt_pollutant_mo_yr.AMT_PARTICULATE
FROM {{ ref('vulnerable_pop') }}
LEFT JOIN {{ ref('tgt_pollutant_mo_yr')}}
ON tgt_pollutant_mo_yr.country_name = vulnerable_pop.country_name
WHERE tgt_pollutant_mo_yr.pollutant = 'co'