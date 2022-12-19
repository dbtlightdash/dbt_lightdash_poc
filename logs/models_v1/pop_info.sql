SELECT DISTINCT country_name
        , MAX(population) as population
        , MAX(population_male) as male_pop
        , MAX(population_female) as female_pop
		, MAX(population_rural) as rural_pop
        , MAX(population_urban) as urban_pop
        , MAX(population_density) as pop_density
        , MAX(population_age_00_09) as child_pop
        , MAX(population_age_10_19) as teen_pop
        , MAX(population_age_20_29) as twenties_pop
		, MAX(population_age_30_39) as thirties_pop
        , MAX(population_age_40_49) as forties_pop
        , MAX(population_age_50_59) as fifties_pop
        , MAX(population_age_60_69) as sixties_pop
        , MAX(population_age_70_79) as seventies_pop
        , MAX(population_age_80_and_older) as eighties_pop
FROM {{ ref('stg_covid') }}
GROUP BY country_name