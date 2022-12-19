SELECT country_code, country_name, new_confirmed, new_deceased, cumulative_confirmed
		, cumulative_deceased
        , cumulative_tested
        , COALESCE (new_persons_vaccinated, 0) as new_persons_vaccinated
        , COALESCE (cumulative_persons_vaccinated,0) as cumulative_persons_vaccinated
		, COALESCE (new_persons_fully_vaccinated,0) as new_persons_fully_vaccinated
        , COALESCE (cumulative_persons_fully_vaccinated,0) as cumulative_persons_fully_vaccinated
        , COALESCE (new_vaccine_doses_administered,0) as new_vaccine_doses_administered
        , COALESCE (cumulative_vaccine_doses_administered,0) as cumulative_vaccine_doses_administered
        , population
FROM {{ ref('stg_covid') }}