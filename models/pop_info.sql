SELECT DISTINCT country_name
        , (population) as population
        , (population_male) as male_pop
        , (population_female) as female_pop
		, (population_rural) as rural_pop
        , (population_urban) as urban_pop
        , (population_density) as pop_density
        , (population_age_00_09) as child_pop
        , (population_age_10_19) as teen_pop
        , (population_age_20_29) as twenties_pop
		, (population_age_30_39) as thirties_pop
        , (population_age_40_49) as forties_pop
        , (population_age_50_59) as fifties_pop
        , (population_age_60_69) as sixties_pop
        , (population_age_70_79) as seventies_pop
        , (population_age_80_and_older) as eighties_pop
FROM {{ ref('stg_covid') }}
WHERE 
population is not null
and population_male is not null
and population_female is not null
-- and population_rural is not null
-- and population_urban is not null
-- and population_density is not null
-- and population_age_00_09 is not null
-- and population_age_10_19 is not null
-- and population_age_20_29 is not null
-- and population_age_30_39 is not null
-- and population_age_40_49 is not null
-- and population_age_50_59 is not null
-- and population_age_60_69 is not null
-- and population_age_70_79 is not null
-- and population_age_80_and_older is not null
ORDER BY country_name ASC