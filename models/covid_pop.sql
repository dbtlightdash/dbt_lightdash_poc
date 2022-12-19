SELECT country_code
        ,country_name
        ,population
        ,COALESCE(new_confirmed, 0) as new_confirmed
        ,COALESCE(new_deceased, 0) as new_deceased
        ,COALESCE(cumulative_confirmed, 0) as cumulative_confirmed
        ,COALESCE(cumulative_deceased, 0) as cumulative_deceased
        ,COALESCE(cumulative_tested, 0) as cumulative_tested
        ,COALESCE(new_persons_vaccinated, 0) as new_persons_vaccinated
        ,COALESCE(cumulative_persons_vaccinated,0) as cumulative_persons_vaccinated
		,COALESCE(new_persons_fully_vaccinated,0) as new_persons_fully_vaccinated
        ,COALESCE(cumulative_persons_fully_vaccinated,0) as cumulative_persons_fully_vaccinated
        
        ,COALESCE(cumulative_vaccine_doses_administered,0) as cumulative_vaccine_doses_administered
FROM {{ ref('stg_covid') }}
WHERE 
cumulative_vaccine_doses_administered != 0

AND cumulative_persons_fully_vaccinated != 0
AND cumulative_persons_vaccinated != 0
AND new_confirmed!= 0
AND cumulative_confirmed != 0
AND cumulative_tested != 0
