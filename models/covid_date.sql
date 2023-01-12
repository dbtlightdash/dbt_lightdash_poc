SELECT
date
,country_code
,country_name
,new_confirmed
,new_deceased
,cumulative_confirmed
,cumulative_deceased
,cumulative_tested
,new_persons_vaccinated
,cumulative_persons_vaccinated
,new_persons_fully_vaccinated
,cumulative_persons_fully_vaccinated
,new_vaccine_doses_administered
,cumulative_vaccine_doses_administered
,population
,population_male
,population_female
,population_rural
,population_urban
,population_density
,gdp_usd
,gdp_per_capita_usd
-- ,openstreetmap_id
-- ,latitude
-- ,longitude
-- ,average_temperature_celsius
-- ,new_hospitalized_patients
-- ,new_intensive_care_patients
FROM {{ ref('stg_covid') }}
WHERE  
cumulative_tested IS NOT NULL 
AND new_persons_vaccinated IS NOT NULL 
AND new_confirmed IS NOT NULL 
AND new_deceased IS NOT NULL