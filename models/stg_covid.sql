WITH temp_table as (
  SELECT country_name, COUNT(country_name) as data_points
FROM `dulcet-answer-373817.dbt_ld.covid19_open_data`
GROUP BY country_name
HAVING data_points > 100000
)
SELECT
perm_table.date
,EXTRACT(MONTH FROM perm_table.date) AS MONTH
, EXTRACT(YEAR FROM perm_table.date) AS YEAR
,perm_table.country_code
,perm_table.country_name
,perm_table.aggregation_level
,perm_table.new_confirmed
,perm_table.new_deceased
,perm_table.cumulative_confirmed
,perm_table.cumulative_deceased
,perm_table.cumulative_tested
,perm_table.new_persons_vaccinated
,perm_table.cumulative_persons_vaccinated
,perm_table.new_persons_fully_vaccinated
,perm_table.cumulative_persons_fully_vaccinated
,perm_table.new_vaccine_doses_administered
,perm_table.cumulative_vaccine_doses_administered
,perm_table.population
,perm_table.population_male
,perm_table.population_female
,perm_table.population_rural
,perm_table.population_urban
,perm_table.population_density
,perm_table.human_development_index
,perm_table.population_age_00_09
,perm_table.population_age_10_19
,perm_table.population_age_20_29
,perm_table.population_age_30_39
,perm_table.population_age_40_49
,perm_table.population_age_50_59
,perm_table.population_age_60_69
,perm_table.population_age_70_79
,perm_table.population_age_80_and_older
,perm_table.gdp_usd
,perm_table.gdp_per_capita_usd
-- ,perm_table.openstreetmap_id
-- ,perm_table.latitude
-- ,perm_table.longitude
,perm_table.area_sq_km
,perm_table.smoking_prevalence
,perm_table.diabetes_prevalence
,perm_table.infant_mortality_rate
,perm_table.nurses_per_1000
,perm_table.physicians_per_1000
,perm_table.health_expenditure_usd
,perm_table.out_of_pocket_health_expenditure_usd
-- ,perm_table.school_closing
-- ,perm_table.workplace_closing
-- ,perm_table.cancel_public_events
-- ,perm_table.restrictions_on_gatherings
-- ,perm_table.public_transport_closing
-- ,perm_table.stay_at_home_requirements
-- ,perm_table.restrictions_on_internal_movement
-- ,perm_table.international_travel_controls
-- ,perm_table.income_support
-- ,perm_table.debt_relief
-- ,perm_table.fiscal_measures
-- ,perm_table.international_support
-- ,perm_table.public_information_campaigns
-- ,perm_table.testing_policy
-- ,perm_table.contact_tracing
-- ,perm_table.emergency_investment_in_healthcare
-- ,perm_table.investment_in_vaccines
-- ,perm_table.facial_coverings
-- ,perm_table.vaccination_policy
-- ,perm_table.stringency_index
-- ,perm_table.average_temperature_celsius
-- ,perm_table.minimum_temperature_celsius
-- ,perm_table.maximum_temperature_celsius
-- ,perm_table.rainfall_mm
-- ,perm_table.snowfall_mm
-- ,perm_table.dew_point
-- ,perm_table.relative_humidity
,perm_table.new_tested
,perm_table.population_largest_city
-- ,perm_table.population_clustered
-- ,perm_table.human_capital_index
,perm_table.area_rural_sq_km
,perm_table.area_urban_sq_km
,perm_table.life_expectancy
,perm_table.adult_male_mortality_rate
,perm_table.adult_female_mortality_rate
-- ,perm_table.pollution_mortality_rate
-- ,perm_table.comorbidity_mortality_rate
-- ,perm_table.mobility_retail_and_recreation
-- ,perm_table.mobility_grocery_and_pharmacy
-- ,perm_table.mobility_parks
-- ,perm_table.mobility_transit_stations
-- ,perm_table.mobility_workplaces
-- ,perm_table.mobility_residential
,perm_table.hospital_beds_per_1000
,perm_table.new_hospitalized_patients
,perm_table.cumulative_hospitalized_patients
,perm_table.new_intensive_care_patients
,perm_table.cumulative_intensive_care_patients
FROM `dulcet-answer-373817.dbt_ld.covid19_open_data` as perm_table, temp_table
WHERE perm_table.country_name = temp_table.country_name

